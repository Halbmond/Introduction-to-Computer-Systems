#include <cstdio>
#include <iostream>

using namespace std;

int gcd(int x, int y)
{
	if (!y) return x;
	return gcd(y, x%y);
}

void foo()
{
	{
		int y = 5;
	}
	int x = 7 - 1;
}

int main()
{
	foo();
	printf("Hello World\n");
	foo();
	int x=2000,y=3000;
	int g=gcd(x+y,y);
	int a=1;
	foo();
	return 0;
}
