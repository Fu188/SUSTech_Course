#include<stdio.h>
#include<cstring>
using namespace std;
unsigned long long len;
int testcases;
char A[1000+10];
int main(){
	scanf("%d",&testcases);
	while(testcases--){
		scanf("%s",A);
		len=(strlen(A)+1)*strlen(A)/2;
		printf("%lld\n",len);
	}
}
