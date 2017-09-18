#include <cstdio>
#include <iostream>
using namespace std;
extern char ** environ;
int main()
{
	char *s=*environ;
	for(int i=0;;++i)
	{
		s=*(environ + i);
		if (!s) break;
		printf("%s\n", s);
	}
	int x=-1;
	long long y = x;
	cout<<x<<endl;
/*
	int con = 0x96;
	unsigned char *c=(&con)+1;c[1]=0x69;
*/
/*
	unsigned char *c=(&con);c++;*c=0x69;
	//unsigned char *c = &con;c[1]=0x69;
	//char * c ="\0\0\0\0\0\0�i";
	//int&con = *c;
	char c[] ="�ii�\0\0\0\0";
	int * con = (int*) &c[0];
	//int con =
*/
/*
	char *c ="\0\0\0\0�ii�";
	int * con = (int*) &c[0];
	cout <<c <<endl;
*/
	/*
	putchar('\n');
	int x=0x00009669;
	unsigned char*s =(unsigned char*)(&x);
	printf("%x %x\n",(int)s[0],(int)s[1]);
	putchar(s[0]);
	putchar(s[1]);
	*/
	//printf("%x\n",con);
	//freopen("game.in","r",stdin);
	//freopen("game.in","w",stdout);
	return 0;
}

