#include <iostream>
#include<math.h>
#include<cstring>
using namespace std;
int A[100+10],temp[100+10];
int testcases,num;

void Merge(int l,int m,int r){
	int l1 = l;
	int m1 = m;
	int k = 0;
	while(l1<m&&m1<=r){
		if(A[l1]<=A[m1]) temp[k++] = A[l1++];
		else temp[k++] = A[m1++];
	}
	while(l1<m) temp[k++] = A[l1++];
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
    for(int j=0;j<testcases;j++){
    memset(A,0,sizeof(A));
    scanf("%d",&num);
    for(int i=0;i<num;i++) scanf("%d",&A[i]);
    Merge_sort(0,num-1);
    if(A[num-3]!=A[num-2]&&(num==3||A[num-3]!=A[num-4])) printf("%d\n",A[num-3]);
    else printf("wa\n");
    }
}
