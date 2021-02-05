#include<stdio.h>

int testcases,l,r;
int A[2000000+100],right[2000000+100],left[2000000+100],minsum[2000000+100];
int temp[2000000+100],B[2000000+100],C[2000000+100];
using namespace std;

void Merge(int begin,int mid,int end){
	int i=begin;int j=mid;int id=0;
	while(i<mid&&j<=end){
		if(A[B[i]]<=A[B[j]]) temp[id++]=B[i++];
		else temp[id++]=B[j++];
	}
	while(i<mid) temp[id++]=B[i++];
	while(j<=end) temp[id++]=B[j++];
	for(int k=0;k<end-begin+1;k++) B[begin+k]=temp[k];
}

void Merge_sort(int l,int r){
	if(l<r){
		int mid = (l+r)/2;
		Merge_sort(l,mid);
		Merge_sort(mid+1,r);
		Merge(l,mid+1,r);
	}
}

int juedui(int a){
	if(a>0) return a;
	else return -a;
}

int judge(int a,int b,int c){
	if(juedui(a-b)>juedui(b-c)) return juedui(b-c);
	else return juedui(a-b);
}

void del(int i){
	left[right[i]]=left[i];
	right[left[i]]=right[i];
}

int main(){
	scanf("%d",&testcases);
	for(int i=0;i<testcases;i++){
		scanf("%d",&A[i]);
		left[i]=i-1;
		right[i]=i+1;
		B[i]=i;
	}
	left[0]=testcases-1;
	right[testcases-1]=0;
	Merge_sort(0,testcases-1);
	for(int i=0;i<testcases;i++) C[B[i]]=i;
	for(int i=0;i<testcases-1;i++){
		l=left[C[i]],r=right[C[i]];
		if(B[l]==i) minsum[i] = juedui(A[B[r]]-A[i]);
		else if(B[r]==i) minsum[i] = juedui(A[B[l]]-A[i]); 
		else minsum[i]=judge(A[B[l]],A[i],A[B[r]]);
		del(C[i]);
	}
	for(int i=0;i<testcases-1;i++) printf("%d ",minsum[i]);
	printf("\n");
}
