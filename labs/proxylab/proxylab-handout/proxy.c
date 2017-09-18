/*
 *
 * proxy.c
 *
 * 
 *            Name  : Vincent Lee
 *          userID  : ihalbmond@gmail.com
 *
 *
 *
 *
 *
 * Proxy support and the Host field:
 *
 * HTTP 1.1 has a required Host header by spec.
 *
 * HTTP 1.0 does not officially require a Host header,
 * but it doesn't hurt to add one, and many applications (proxies)
 * expect to see the Host header regardless of the protocol version.
 *
 * Example:
 * 
 * GET / HTTP/1.1
 * Host: www.blahblahblahblah.com
 *
 * This header is useful because it allows you to route a message
 * through proxy servers, and also because your web server can
 * distinguish between different sites on the same server.
 *
 * So this means if you have blahblahlbah.com and helohelohelo.com
 * both pointing to the same IP. Your web server can use the Host field
 * to distinguish which site the client machine wants.
 * 
 * Persistent connections:
 * 
 * HTTP 1.1 also allows you to have persistent connections which means that
 * you can have more than one request/response on the same HTTP connection.
 *
 * In HTTP 1.0 you had to open a new connection
 * for each request/response pair.
 * And after each response the connection would be closed.
 * This lead to some big efficiency problems because of TCP Slow Start.
 * 
 * OPTIONS method:
 * 
 * HTTP/1.1 introduces the OPTIONS method. An HTTP client can use this method
 * to determine the abilities of the HTTP server.
 * It's mostly used for Cross Origin Resource Sharing in web applications.
 * 
 * Caching:
 * 
 * HTTP 1.0 had support for caching via the header: If-Modified-Since.
 *
 * HTTP 1.1 expands on the caching support a lot by using something
 * called 'entity tag'. If 2 resources are the same,
 * then they will have the same entity tags.
 *
 * HTTP 1.1 also adds the If-Unmodified-Since, If-Match,
 * If-None-Match conditional headers.
 *
 * There are also further additions relating to caching
 * like the Cache-Control header.
 *
 * 100 Continue status:
 *
 * There is a new return code in HTTP/1.1 100 Continue.
 * This is to prevent a client from sending a large request
 * when that client is not even sure if the server can process the request,
 * or is authorized to process the request.
 * In this case the client sends only the headers,
 * and the server will tell the client 100 Continue, go ahead with the body. 
 *
 *
 *
 *
 * Summary table
 *
 *
 *
 *Method  RFC  Request Has Body  Response Has body  Safe Idempotent Cacheable
 *GET     RFC 7231    No               Yes          Yes     Yes      Yes
 *HEAD    RFC 7231    No               No           Yes     Yes      Yes
 *POST    RFC 7231    Yes              Yes          No      No       Yes
 *PUT     RFC 7231    Yes              Yes          No      Yes      No
 *DELETE  RFC 7231    No               Yes          No      Yes      No
 *CONNECT RFC 7231    Yes              Yes          No      No       No
 *OPTIONS RFC 7231    Optional         Yes          Yes     Yes      No
 *TRACE   RFC 7231    No               Yes          Yes     Yes      No
 *PATCH   RFC 5789    Yes              Yes          No      No       Yes
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <string.h>
#include "csapp.h"

#include "cache.h"
/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1059000
#define MAX_OBJECT_SIZE 102500

#define METHOD_LEN 25
#define VERSION_LEN 15
#define PORT_LEN 25

/* You won't lose style points for including this long line in your code */
static char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; " \
    "Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";

static char *connection_hdr = "Connection: close\r\n";

static char *proxy_connection_hdr = "Proxy-Connection: close\r\n";

static char *proxy2server_version = "HTTP/1.0";

static char *default_port = "80";

static char *type_fmt = "%[^:]:%[^/]/%*s";

static char *type_header = "Content-type";

static char *type_text = "text";




struct request_line_t
{
    char request_line_raw[MAXLINE];
    char method[METHOD_LEN];
    char host_addr[MAXLINE];
    char port[PORT_LEN];
    char path[MAXLINE];
    char version[VERSION_LEN];
};

void sigpipe_handler(int sig);

int Accept_Robust(int s, struct sockaddr *addr, socklen_t *addrlen);


int read_request_line(rio_t *rio,
    char *request_line_raw, struct request_line_t *requestline);


int proxy_fwd_request_browser2service(rio_t *rio, char *buf,
        struct request_line_t *requestline, int serverfd, int clientfd);


int proxy_fwd_response_service2browser(rio_t *server_rio, int serverfd,
    int clientfd, char *cachebuf);

int doit(int clientfd);

void *proxy_thread(void *vargp);


/*
 * catch the SIGPIPE signal.
 */
void sigpipe_handler(int sig)
{
    Sio_puts("Caught a SIGPIPE signal");
    return;
}


int cache_disable;

int get_response_header_type(char *buf);

/*
 * Warpper of accept. (robust ver.)
 */
int Accept_Robust(int s, struct sockaddr *addr, socklen_t *addrlen)
{
    int rc;

    while ((rc = accept(s, addr, addrlen)) < 0)
        fprintf(stderr, "%s\n", "Accept error");

    return rc;
}


/*
 *
 * Main routine
 */
int main(int argc, char **argv)
{
    Signal(SIGPIPE, sigpipe_handler);

    if (argc < 2 || argc > 3)
    {
        fprintf(stderr, "usage: %s <port> <cache disable>\n", argv[0]);
        fprintf(stderr, "cache disable: 'd' to disable caching\n");
        exit(1);
    }

    /*
     * Cache disable/enable option
     */
    cache_disable = 0;

    if (argc == 3)
    {
        if (!strcmp(argv[2], "d"))
        {
    cache_disable = 1;
        }
        else
            exit(2);
    }


    cache_reset();

    {
        int listenfd = Open_listenfd(argv[1]);

        struct sockaddr_storage clientaddr;

        while (1)
        {
            socklen_t clientlen = sizeof(clientaddr);

            int clientfd =
                Accept_Robust(listenfd, (SA *)&clientaddr, &clientlen);

            pthread_t tid;
            Pthread_create(&tid, NULL,
                proxy_thread, (void *)(long)clientfd);
        }
    }
}




void *proxy_thread(void *vargp)
{
    Pthread_detach(Pthread_self());

    int clientfd = (int) (long) vargp;

    int result_stat = doit(clientfd);

    switch (result_stat)
    {
        case 1:
            fprintf(stderr, "%s\n",
                "success cache hit");
        break;
        case 0:
            fprintf(stderr, "%s\n",
                "success cache miss");
        break;
        case -1:
            fprintf(stderr, "%s\n",
                "unsuccess -1 QAQ");
        break;
        case -2:
            fprintf(stderr, "%s\n",
                "unsuccess -2 read_request_line");
        break;
        case -3:
            fprintf(stderr, "%s\n",
                "unsuccess -3 open_clientfd");
        break;
        case -4:
            fprintf(stderr, "%s\n",
                "unsuccess -4 proxy_fwd_request_browser2service");
        break;
        case -5:
            fprintf(stderr, "%s\n",
                "unsuccess -5 muti");
        break;
        case -6:
            fprintf(stderr, "%s\n",
                "unsuccess -6 proxy_fwd_response_service2browser");
        break;
        default:
            fprintf(stderr, "%s\n",
                "undefined status");
        break;
    }
    close(clientfd);
    
    return NULL;
}



int doit(int clientfd)
{
    int serverfd;

    rio_t rio;
    Rio_readinitb(&rio, clientfd);

    struct request_line_t requestline;
    memset((char *)&requestline, 0,
        sizeof (struct request_line_t));

    char buf[MAXLINE];

    char cached_obj[MAX_OBJECT_SIZE];
    


    if (read_request_line(&rio, buf, &requestline) < 0)
    {
        return
            fprintf(stderr,
                "Bad Request , Request line: \"%s\"\n",
                buf),
                    -2;
    }

    {
        ssize_t n;
        if ((n = reader_check(requestline.request_line_raw, cached_obj)))
        {
            if (n < 0)
                return -1;
            if (rio_writen(clientfd, cached_obj, n) < 0)
            {
                return -10;
            }

            return 1;
        }
    }

    if ((serverfd =
                open_clientfd(requestline.host_addr, requestline.port)) < 0)
    {
        return -3;
    }

    if ((proxy_fwd_request_browser2service(&rio, buf,
                        &requestline, serverfd, clientfd)) < 0)
    {
        return
            close(serverfd),
            -4;
    }
    
    static char cachebuf[MAX_OBJECT_SIZE];
    int sizebuf;
    if ((sizebuf = proxy_fwd_response_service2browser(NULL,
                serverfd, clientfd, cachebuf)) < 0)
    {
        return
            close(serverfd),
            -6;
    }

    if (sizebuf < MAX_OBJECT_SIZE)
        writer_check(requestline.request_line_raw, cachebuf, sizebuf);

    


    close(serverfd);


    return 0;

}



/*
 * read and convert request line to fields in request_line_t
 */
int read_request_line(rio_t *rio,
    char *request_line_raw, struct request_line_t *requestline)
{
    static char uri[MAXLINE];
    static char version[VERSION_LEN];
    static char method[METHOD_LEN];
    //static char buf[MAXLINE];
    char hostname_port[MAXLINE];
    char hostname[MAXLINE];
    char port[PORT_LEN];
    char path[MAXLINE];

    {
        int n;
        if ((n = Rio_readlineb(rio, request_line_raw, MAXLINE)) <= 0)
        {
            assert(n == 0);
            
            return
                fprintf(stderr,
                    "%s\n",
                    "Empty Request (Rio meet a EOF at begin) error"),
                        -1;
        }
    }


    if(sscanf(request_line_raw, "%s %s %s", method, uri, version) !=3)
        return -1;
    

    path[0] = '/';

    char *stat = uri;
    stat = strstr(stat, "://");
    stat = stat?
        stat + strlen("://") : uri; 
    sscanf(stat, "%[^/]%s",
        hostname_port, path);
    sscanf(hostname_port, "%[^:]:%s",
        hostname, port);

    strcpy(requestline->request_line_raw, request_line_raw);
    strcpy(requestline->method, method);
    strcpy(requestline->host_addr, hostname);
    
    if (strlen(port) == 0)
    {
        strcpy(requestline->port, default_port); //default port : 80
    }
    else
    {
        fprintf(stderr, "Unknown port : %s\n", port);
        strcpy(requestline->port, port);
    }
   
    strcpy(requestline->path, path);
    strcpy(requestline->version, version);
 
    /*
     *
    */
    return 0;
}



/*
 *
 * adjust request headers:
 *
 *  0. always send user_agent_hdr as "User-Agent: .." header.
 *      (Maybe "User-Agent" header is always exist)
 *
 *  1. "Connection: ..." -> "Connection: close"
 *  2. "Proxy-Connection: ..." -> "Proxy-Connection: close"
 *  3. if "Connection: ..." and "Proxy-Connection: ..." don't exist,
 *          append a line : "Connection: close"
 *      
 *      (Maybe Condition 3. never happen ?)
 *
 *  4. if "Host: ..." doesn't exist,
 *          append a line : "Host: < URI->host >"
 *     
 *     ensure that: "Host: ..." header is identical to the host in URI.
 *
 *      (if exist, Maybe always identical ?)
 *
 *
 * one possible output:
 * ----
 * Host in URI is not identical to Host in headers
 * header_str: Host: log.orchidscape.net:8080
 *
 * host_hdr: Host: log.orchidscape.net
 * ----
 * So host in header may has port.
 * 
 *
 * other possible output:
 * ----
 * Host in URI is not identical to Host in headers
 * header_str: Host: static.csdn.net
 *
 * host_hdr: Host: static.blog.csdn.net
 * ----
 *
 */
int proxy_fwd_request_browser2service(rio_t *rio, char *buf,
        struct request_line_t *requestline, int serverfd, int clientfd)
{
    static char requestheader_pool[MAXLINE];int m = 0;// range dangerous..
    static char *requestheaders[MAXLINE];

    /*
    if (strcasecmp(requestline->method, "GET") != 0)
    {
        fprintf(stderr, "....%s\n", requestline->method);
        return -1;
    }
    */

    if (!strcasecmp(requestline->method, "GET"))
    {
        /*
         *
        */
        int n;
        char *current_ptr = requestheader_pool;
        
        while (1)
        {
            n = rio_readlineb(rio, current_ptr, MAXLINE);
            
            if (n < 0)
                return -1;

            requestheaders[m++] = current_ptr;
            current_ptr[n] = '\0';

            char *header_str = current_ptr;

            /*
             * <del>adjust request headers.<\del>
             */

            current_ptr[n] = '\0';
            current_ptr += n + 1;

            if (!strcmp(header_str, "\r\n"))
            {
                fprintf(stderr, "%s\n", header_str);
                assert(n == 2);
                break;
            }
        }

        static char requestline_final[MAXLINE];

        n = snprintf(requestline_final, MAXLINE, "%s %s %s\r\n",
                requestline->method,
                *requestline->path ? requestline->path : "/",
                proxy2server_version
                //requestline->version
                );  // changed to proxy2server_version

        if ((n = rio_writen(serverfd, requestline_final, n)) < 0)
            return n;

        int has_agent_hdr = 0;
        int has_conn_hdr = 0;
        int has_host_hdr = 0;
        static char host_hdr[MAXLINE];

        /*
         * snprintf: '\0' would be automatically appended.
         */
        snprintf(host_hdr, MAXLINE,
            "Host: %s\r\n",
            requestline->host_addr);

        fprintf(stderr, "host_hdr %s\n", host_hdr);

        int t;
        for(t = 0; t < m; ++t)
        {
            char *header_str = requestheaders[t];

            /*
             * adjust request headers.
             */
            if (!memcmp(header_str,
                "User-Agent:",
                strlen("User-Agent:")))
            {
                if ((n = rio_writen(serverfd,
                        user_agent_hdr,
                        strlen(user_agent_hdr))) < 0)
                    return -1;

                has_agent_hdr = 1;
            }
            
            else

            if (!memcmp(header_str,
                "Connection:",
                strlen("Connection:")))
            {
                if ((n = rio_writen(serverfd,
                        connection_hdr,
                        strlen(connection_hdr))) < 0)
                    return -1;

                has_conn_hdr = 1;
            }

            else

            if (!memcmp(header_str,
                "Proxy-Connection:",
                strlen("Proxy-Connection:")))
            {
                if ((n = rio_writen(serverfd,
                        proxy_connection_hdr,
                        strlen(proxy_connection_hdr))) < 0)
                    return -1;

                has_conn_hdr = 1;
            }

            else

            if (!memcmp(header_str,
                "Host:",
                strlen("Host:")))
            {

                /*
                 * compare host in header with host in URI.
                 */
                if (strcasecmp(header_str,
                    host_hdr) != 0)
                {
                    fprintf(stderr, "%s\n",
                        "Host in URI is not identical to Host in headers");
                    fprintf(stderr,
                        "header_str: %s\n" \
                        "host_hdr: %s\n",
                        header_str, host_hdr);
                    //exit(3).
                }

                if ((n = rio_writen(serverfd,
                        host_hdr,
                        strlen(host_hdr))) < 0)
                    return -1;

                has_host_hdr = 1;
            }

            else

            {
                if ((n = rio_writen(serverfd,
                        header_str,
                        strlen(header_str))) < 0)
                    return -1;
            }
        }

        if (!has_agent_hdr)
        {
            fprintf(stderr, "%s\n",
                "no agent hdr");

            if ((n = rio_writen(serverfd,
                    user_agent_hdr,
                    strlen(user_agent_hdr))) < 0)
                return -1;
        }

        if (!has_conn_hdr)
        {
            fprintf(stderr, "%s\n",
                "no conn hdr");

            if ((n = rio_writen(serverfd,
                    connection_hdr,
                    strlen(connection_hdr))) < 0)
                return -1;
        }

        if (!has_host_hdr)
        {

            fprintf(stderr, "%s\n",
                "no host hdr");

            if ((n = rio_writen(serverfd,
                    host_hdr,
                    strlen(host_hdr))) < 0)
                return -1;
        }

        return 1;
    }

    else

    {
        fprintf(stderr, "%s\n", "Unknown Method error");
        fprintf(stderr, "Method: %s\n",
            requestline->method);
        return -2;
    }
}



int get_response_header_type(char *buf)
{
    
    static char item[MAXLINE], type[MAXLINE];
    
    sscanf(buf, type_fmt, item, type);
    
    if(!strcasecmp(item, type_header))
    {
        return 1 + (!!strcasecmp(type, type_text));
    }
    return 0;
}


int proxy_fwd_response_service2browser(rio_t *server_rio,
    int serverfd, int clientfd, char *cachebuf)
{
    /*receive message from end server and send to the client*/
    char buf[MAXLINE]={};
    cachebuf[0] = '\0';
    int sizebuf = 0;
    ssize_t n;
    
    int tt = 0;
    while((n=rio_readn(serverfd, buf, MAXLINE)) != 0)
    {
        if (n < 0)
        {
            ++tt;
            fprintf(stderr, "error 1. %s %d\n", strerror(errno), tt);
            return -1;
        }
        buf[n] = '\0';
        if (sizebuf < MAX_OBJECT_SIZE)
            {
                sizebuf += n;
                if (sizebuf < MAX_OBJECT_SIZE)
                    strcat(cachebuf, buf);
                else
                    sizebuf = MAX_OBJECT_SIZE;
            }

        n = rio_writen(clientfd,buf,n);
        if (n < 0)
        {
            fprintf(stderr, "error 2. %s\n", strerror(errno));
            return -2;
        }

    }

    return sizebuf;

    int content_text_type = 0;

    rio_t srio;
    Rio_readinitb(&srio, serverfd);

    while ((n = rio_readlineb(&srio, buf, MAXLINE)) != 0)
    {
        if (n < 0)
            return -1;

        if (sizebuf < MAX_OBJECT_SIZE)
        {
            sizebuf += n;
            if (sizebuf < MAX_OBJECT_SIZE)
                strcat(cachebuf, buf);
            else
                sizebuf = MAX_OBJECT_SIZE;
        }

        n = rio_writen(clientfd, buf, n);
        if (n < 0)
            return -2;

        if(strcmp(buf, "\r\n") == 0)
        {
            printf("termination received\n");
            break;
        }

        content_text_type |= get_response_header_type(buf);
    }

    assert(content_text_type < 3);

    assert(sizebuf >= 0);

    printf("response header received yet\n");

    if(content_text_type == 1)
    {
        while((n = rio_readlineb(&srio, buf, MAXLINE)) != 0)
        {
            if (n < 0)
                return -1;

            if (sizebuf < MAX_OBJECT_SIZE)
            {
                sizebuf += n;
                if (sizebuf < MAX_OBJECT_SIZE)
                    strcat(cachebuf, buf);
                else
                    sizebuf = MAX_OBJECT_SIZE;
            }

            n = rio_writen(clientfd, buf, n);
            if (n < 0)
                return -2;
        }
    }

    else
    {
        while((n = rio_readnb(&srio, buf, MAXLINE)) != 0)
        {
            if (n < 0)
                return -1;

            if (sizebuf < MAX_OBJECT_SIZE)
            {
                sizebuf += n;
                if (sizebuf < MAX_OBJECT_SIZE)
                    strcat(cachebuf, buf);
                else
                    sizebuf = MAX_OBJECT_SIZE;
            }

            n = rio_writen(clientfd, buf, n);
            if (n < 0)
                return -2;
        }
    }
    //assert(sizebuf > 0);
    
    return sizebuf;
}

