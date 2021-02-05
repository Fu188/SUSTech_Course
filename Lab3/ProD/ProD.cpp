#include <iostream>
#include<math.h>
#include<cstring>
using namespace std;
int A[100000+100],temp[1000000+100];
int testcases;
long long count=0L;

void Merge(int l,int m,int r){
	int l1 = l;
	int m1 = m;
	int k = 0;
	while(l1<m&&m1<=r){
		if(A[l1]<=A[m1]){
			count+=(long)A[l1]*(m1-m);
			temp[k++] = A[l1++];
		}
		else{
			count+=(long)A[m1]*(m-l1);
			temp[k++] = A[m1++];
		}
	}
	while(l1<m){
		count+=(long)A[l1]*(r-m+1);
		temp[k++] = A[l1++];
	}
	while(m1<=r) temp[k++] = A[m1++];
	for(int i=0;i<r-l+1;i++){
		A[l+i] = temp[i];
	}
}

void Merge_sort(int l,int r){
	if(l<r){
		int mid = (l+r)/2;
		Merge_sort(l,mid);
		Merge_sort(mid+1,r);
		Merge(l,mid+1,r);
	}	
}

int main()
{
    scanf("%d",&testcases);
    for(int i=0;i<testcases;i++){
    	scanf("%d",&A[i]);
	}
    Merge_sort(0,testcases-1);
	printf("%lld\n",count);
}
