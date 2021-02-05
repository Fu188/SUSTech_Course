#include<stdio.h>
#include<iostream>
using namespace std;

int x1,y1,x2,y2,period;
long long temp1,temp2;
long long tim=1000000000000000000;
long long mina=-1;
char A[100000+100];
int X[1000000+100],Y[100000+100];

void init(char ch,int a){
	if(ch=='U') {X[a]=X[a-1];Y[a]=Y[a-1]+1;}
	else if(ch=='D') {X[a]=X[a-1];Y[a]=Y[a-1]-1;}
	else if(ch=='L') {X[a]=X[a-1]-1;Y[a]=Y[a-1];}
    else {X[a]=X[a-1]+1;Y[a]=Y[a-1];}
}

long long juedui(long long a){
	if(a>=0) return a;
	else return -a;
}

long long cal(long long a,long long b){
	long long tem = (juedui(a-x1)+juedui(b-y1));
	return tem;
}

bool check(long long a){
	temp1=x2+(a/period)*X[period]+X[a%period];
	temp2=y2+(a/period)*Y[period]+Y[a%period];
	if(a>=cal(temp1,temp2)) return true;
	else return false;
}

void binary(long long begin,long long end){
	while(begin<=end){
		long long mid = (begin+end)/2;
		if(check(mid)) {
		end=mid-1; 
		mina=mid;
		}
		else begin = mid+1;
	}
	printf("%lld",mina);	
}

int main(){
	scanf("%d%d%d%d%d",&x1,&y1,&x2,&y2,&period);
	X[0]=0;Y[0]=0;
	for(int i=0;i<period;i++){
		cin>>A[i];
		init(A[i],i+1);
	}
	binary(1,tim);
} 
