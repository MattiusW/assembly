#include <stdio.h>

extern int cAddFunction(int, int);

int cAddFunction(int a, int b)
{
	printf("Call function C correct!\n");
	return a+b;
}
