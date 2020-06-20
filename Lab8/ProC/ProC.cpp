#include<stdio.h>
#include<algorithm>
#include <queue>
#include<string.h>
#define Maxn 100000
using namespace std;
int testcases,num,temp;
long long sum;
long long heap[Maxn+100];

void upheap(long long A[],int size,int i){
	int pre,maxi,parent;
	if(size<=1||i<0||i>size-1) return;
	pre = maxi = i;
	while(maxi>0){
		pre = maxi;
		parent = (maxi-1)/2;
		if(parent>=0&&A[parent]>A[maxi]) maxi=parent;
		if(maxi!=pre) swap(A[maxi],A[pre]);
		else break;
	}
}

void downheap(long long A[],int size,int i){
	int pre,mini,left,right;
	if(size<=1||i<0||i>size-1) return;
	pre = mini = i;
	while(mini<size/2){
		pre = mini;
		left = mini*2+1;
		right = mini*2+2;
		if(left<size&&A[left]<A[mini]) mini=left;
		if(right<size&&A[right]<A[mini]) mini=right;
//		printf("-%d-\n",mini);
		if(mini!=pre) swap(A[mini],A[pre]);
		else break;
	}
}

void popheap(long long A[],int size){
	if(size<1) return;
	swap(A[0],A[size-1]);
	downheap(A,size-1,0);
}

void pushheap(long long A[],int size){
	if(size<1) return;
	upheap(A,size,size-1);
}

void makeheap(long long A[],int size){
	for(int i=size/2;i>=0;i--)
		downheap(A,size,i);
} 

void cal(int size){
	long long a,b;
	while(size>1){
		a = heap[0];
		popheap(heap,size);
		b = heap[0];
		popheap(heap,size-1);
		heap[size-2] = a+b;
		sum+=(long long)heap[size-2];
		pushheap(heap,size-1);
		size = size-1;
	}
}

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		sum = 0;
		memset(heap,0,sizeof(heap));
		scanf("%d",&num);
		for(int i=0;i<num;i++){
			scanf("%d",&heap[i]);
		}
		makeheap(heap,num);
		if(num==1){
			sum=0;
		}else{
			cal(num);
		}
		printf("%lld\n",sum);
	}
	return 0;
}
