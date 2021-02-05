#include<stdio.h>
using namespace std;

long long testcases,days;
unsigned long long count;

int main(){
	scanf("%lld",&testcases); 
	while(testcases--){
	    count = 0;
		scanf("%lld",&days);
		count=days*(days+1)*(days+2)/6;
		printf("%lld\n",count);
	}
} 
