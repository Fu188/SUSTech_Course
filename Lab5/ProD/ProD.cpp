#include<stdio.h>
#include<cstring>
using namespace std;

int min,top,num,testcases,A[300000+100],B[300000+100],C[300000+100];

void push(int a){
	A[++top]=a;
}

void pop(){
	printf("%d ",A[top]);
	top--;
}

void findmin(){
	min = B[num-1];
	for(int i=num-1;i>=0;i--){
		if(min>B[i]) min = B[i];
	    C[i] = min;		
	}
}

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		memset(B,0,sizeof(B));
		memset(C,0,sizeof(C));
		top=-1;
		scanf("%d",&num);
		for(int i=0;i<num;i++)scanf("%d",&B[i]);
		findmin();
		for(int i=0;i<num;){
			if(top==-1||C[i]<A[top]) {push(B[i]);i++;}
			else pop();
		}
		while(top!=-1) pop();
		printf("\n");
	}
}
