#include<stdio.h>

int main(){
	int a,sum=0;
	do{
		printf("Enter integer number:");
		scanf("%d",&a);
		sum+=a;
		printf("The cumulative sum of the entries to date is:%d\n",sum);
	}while(a!=0);
} 
