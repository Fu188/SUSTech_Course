#include<stdio.h>

int main(){
	printf("Enter the number of seconds:");
	long long seconds;
	int A[4],num=0,temp;
	scanf("%lld",&seconds);
	temp=seconds;
	for(int i=0;i<2;i++){
		A[num++]=temp%60;
		temp/=60;
	}
	A[2]=temp%24;
	temp/=24;
	A[3]=temp;
	printf("%lld seconds = %d days, %d hours, %d minutes, %d seconds",seconds,A[3],A[2],A[1],A[0]);
}
