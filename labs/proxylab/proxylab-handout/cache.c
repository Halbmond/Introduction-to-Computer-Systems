#include "cache.h"


static int readcnt;
static int total_cache;
static long chuo;
static sem_t all_operation_lock, mutex;
static struct cache_block *linkedlist_start;

void cache_reset()
{
    total_cache = chuo = readcnt = 0;
    linkedlist_start = 0;
    Sem_init(&all_operation_lock, 0, 1);
    Sem_init(&mutex, 0, 1);
}


int remove_block(struct cache_block * blo)
{
    free(blo->block);
    free(blo->request);
    free(blo);
    return 1;
}

struct cache_block * alloc_block(int size)
{
    struct cache_block *blo;
    blo = (struct cache_block *)malloc(sizeof (struct cache_block));
    blo->LRU = ++chuo;

    blo->block = (char *)Malloc(size);
    blo->block_size = size;
    return blo;
}

int reader_check(char *request, char *buf)
{
    int len = 0;
    
    P(&mutex);
    ++readcnt;
    if (readcnt == 1)
    {
        P(&all_operation_lock);
    }
    V(&mutex);

    struct cache_block *ptr = linkedlist_start;
    for (; ptr; ptr = ptr->next)
        if (!strcasecmp(ptr->request, request))
        {
            ptr->LRU = ++chuo;
            memcpy(buf, ptr->block, ptr->block_size);
            len = ptr->block_size;
            break;
        }

    P(&mutex);
    --readcnt;
    if (!readcnt)
    {
        V(&all_operation_lock);
    }
    V(&mutex);

    return len;
}

void writer_check(char *request, char *block_data, int block_size)
{
    struct cache_block *ptr;
    P(&all_operation_lock);
    while (total_cache + block_size >= MAX_CACHE_SIZE)
    {
        struct cache_block *vict = 0;

        if (vict == NULL)
        {
            fprintf(stderr, "%s\n", "linkedlist_start is NULL");
        }
        assert(linkedlist_start != NULL);

        for (ptr = linkedlist_start; ptr; ptr = ptr->next)
        {
            if (ptr->LRU < vict->LRU)
                vict = ptr;
        }

        if (vict == NULL)
        {
            fprintf(stderr, "%s\n", "vict block is NULL");
        }
        assert(vict != 0);

        total_cache -= vict->block_size;

        if (vict == linkedlist_start)
        {
            linkedlist_start = vict->next;
            if (linkedlist_start)
                linkedlist_start-> prev = NULL;
        }
        else
        {
            vict->prev->next = vict->next;
            if (vict->next)
                vict->next->prev = vict->prev;
        }



        (void) remove_block(vict);
    }

    total_cache += block_size;

    ptr = alloc_block(block_size);

    memcpy(ptr->block, block_data, block_size);

    if ((ptr->request = (char *)malloc(strlen(request) + 1)) == NULL)
    {
        fprintf(stderr, "%s\n", "memory malloc error");
    }
    strcpy(ptr->request, request);

    if (linkedlist_start)
    {
        linkedlist_start->prev = ptr;
        ptr->next = linkedlist_start;
        ptr->prev = NULL;
        linkedlist_start = ptr;
    }
    else
    {
        linkedlist_start = ptr;
        linkedlist_start->next = linkedlist_start->prev = NULL;
    }
    
    V(&all_operation_lock);
}
