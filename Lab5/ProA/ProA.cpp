#include<stdio.h>
using namespace std;
#define MAXN 1000000
int A[MAXN],front=0,rear=0,testcases,num;
char oper;

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		scanf("\n%c",&oper);
		if(oper=='E'){
			scanf("%d",&num);
			A[rear] = num;
			rear = (rear+1)%MAXN;
		}
		else if(oper=='A') printf("%d\n",A[front]);
		else if(oper=='D') front = (front+1)%MAXN;
	}
	while(front!=rear){
		printf("%d ",A[front]);
		front = (front+1)%MAXN;
	}
}

