#include<stdio.h>
#include<cstring>

void prefix_table(char B[],int prefix[],int n){
	prefix[0]=0;
	int i=1,len=0;
	while(i<n){
		if(B[i]==B[len]) prefix[i++]=++len;
		else {
			if(len>0) len=prefix[len-1];
			else prefix[i++]=0;
		}
	}
}

void check(char B[]){
	int n=strlen(B);
	int prefix[n+100];
	prefix_table(B,prefix,n);
	int len=n-prefix[n-1];
	if(prefix[n-1]==0) printf("%d\n",n);
	else if(n%len==0) printf("0\n");
	else printf("%d\n",len-prefix[n-1]%len);
}

int main(){
	int testcases;
	scanf("%d",&testcases);
	char B[200000+100];
	while(testcases--){
		scanf("%s",B);
		check(B);
	}
    return 0;
}
