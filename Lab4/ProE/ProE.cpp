#include<stdio.h>
#include<math.h>

int testcases,n;
long long m,maxi,tem;

long long modulus(long long a){
	while(a>tem) a/=10;
	return a;
}

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		scanf("%d%lld",&n,&m);
		tem = (long long)pow(10,n)-1;
		long long low=modulus(m);
		long long fast=modulus(m*m);
		if(low>fast) maxi=low;
		else maxi=fast;
		while(low!=fast){
			low = modulus(low*low);
			if(low>maxi) maxi=low;
			fast = modulus(fast*fast);
			if(fast>maxi) maxi=fast;
			fast = modulus(fast*fast);
			if(fast>maxi) maxi=fast;
		}
		printf("%lld\n",maxi);
	}
}
