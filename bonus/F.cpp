#include<stdio.h>
#define Maxn 2147483231
using namespace std;
int testcases;
int a,b,c,d;

unsigned long long judge(unsigned long long x,unsigned long long y,int A,int B){
	int x1 = A;
	int x2 = B;
	while(true){
		if(x==y) return x;
		if(x==d){
			if(x1==A){
				if(B==1) x = a;
				else if(B==2) x=b;
				else if(B==3) x=c;
				x1==B;
			}else if(x1==B){
				if(A==1) x = a;
				else if(A==2) x=b;
				else if(A==3) x=c;
				x1==A;
			}
		}else x=x*x%Maxn;
		if(y==d){
			if(x2==A){
				if(B==1) y = a;
				else if(B==2) y=b;
				else if(B==3) y=c;
				x2==B;
			}else if(x2==B){
				if(A==1) y = a;
				else if(A==2) y=b;
				else if(A==3) y=c;
				x2==A;
			}
		}else y = y*y%Maxn;	
	}	
}

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		scanf("%d%d%d%d",&a,&b,&c,&d);
		unsigned long long temp1=a;
		unsigned long long temp2=b;
		unsigned long long temp3=c;
		unsigned long long x1 = judge(temp1,temp2,1,2);
		unsigned long long x2 = judge(temp2,temp3,2,3);
		unsigned long long x3 = judge(temp1,temp3,1,3);
		if(x1==x2) printf("%lld\n",x1);
		else if(x1==x3) printf("%lld\n",x1);
		else if(x2==x3) printf("%lld\n",x2); 
	}
}

