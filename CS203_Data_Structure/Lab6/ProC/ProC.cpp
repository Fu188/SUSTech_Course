#include<stdio.h>
#include<cstring>
using namespace std;
int ans=0;
char A[10000+100],B[10000+100];

void prefix_table(int prefix[],int n){
	prefix[0]=-1,prefix[1]=0;
	int i=1,len=0;
	while(i<n){
		if(B[i]==B[len]) prefix[++i]=++len;
		else {
			if(len>0) len=prefix[len-1];
			else prefix[++i]=0;
		}
	}
}

void kmp_search(){
	int m=strlen(A),n=strlen(B),a=0,b=0;
	int prefix[n+100]; prefix_table(prefix,n);
	while(a<m){
		if(A[a]==B[b]&&b+1>=(n+2)/3){
			ans++;
			return;
		}
		else if(A[a]==B[b]){a++;b++;}
		else{
			b=prefix[b];
			if(b<0){a++;b++;}
		}
	}
} 

int main(){
	int testcases;
	scanf("%d",&testcases);
	while(testcases--){
		scanf("%s%s",B,A);
		kmp_search();
	}
	printf("%d\n",ans);
    return 0;
}
