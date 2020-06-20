#include<stdio.h>
using namespace std;

long long testcases;
unsigned long long num,a;
long long count;

int main(){
	scanf("%lld",&testcases);
	while(testcases--){
		scanf("%lld",&num);
		count=0;a=num;
		while(a){
			count+=a/5;
			a=a/5;
		}
		printf("%lld\n",count);
	}
}
