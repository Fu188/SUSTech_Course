#include<stdio.h>
#include<iostream>
#include<cstring>
#define Maxn 200000
using namespace std;
int testcases,loc,n,m,temp;
char A[Maxn],B[Maxn];

bool check(int a,int b,int c,int d){
	for(int i=0;i<d-c+1;i++){
		if(A[a+i]!=B[c+i]){
			return false;
		}
	}
	return true;
}

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		loc=-1;bool mark;
		scanf("%d%d%s%s",&n,&m,B,A);
		if(n-m>1){
			printf("NO\n");
			continue;
		}
		for(int i=0;i<n;i++){
			if(B[i]=='*'){
				loc=i;
				break;
			}
		}
		if(loc==-1){
			if(m==n) mark=check(0,m,0,n);
			else mark=false;
		}
		else if(loc==0)  mark=check(m-n+1,m-1,1,n-1);
		else if(loc==n-1)  mark=check(0,n-2,0,n-2);
		else{
			mark=check(0,loc-1,0,loc-1)&&check(m-n+loc+1,m-1,loc+1,n-1);
		}
		if(mark) printf("YES\n");
		else printf("NO\n");
	}
} 
