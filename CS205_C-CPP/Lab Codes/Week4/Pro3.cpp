#include<stdio.h>
using namespace std;

int main()
{
	int *arr = new int[5];
	for(int i=0;i<5;i++) scanf("%d",arr+i);
	for(int i=4;i>=0;i--) printf("%d ",*(arr+i));
	delete arr;
	return 0;
}
