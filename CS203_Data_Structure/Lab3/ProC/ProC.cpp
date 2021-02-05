#include <iostream>
#include<math.h>
using namespace std;
int A[3000+100],temp[3000+100];
int testcases,sum;
long long count=0;

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

long long jiecheng(int a){
	long long b=1;
	for(int i=(a-1);i<=a;i++){
		b*=i;
	}
	return b/2;
}

void swift(int target,int begin,int end){
	while(begin<end){
		int tem = A[begin]+A[end];
		if(tem==target){
			int left = 1; int right = 1;
			while(begin<end&&A[begin]==A[begin+1]){begin++;left++;}
			while(begin<end&&A[end]==A[end-1]) {end--;right++;}
			if(A[begin]==A[end]) count += jiecheng(left); 
			else count+=(long)left*right;
			begin++;
		}
		else if(tem<target) begin++;
		else end--; 
	}
}

int main()
{
    scanf("%d",&testcases);
    scanf("%d",&sum);
    for(int i=0;i<testcases;i++) scanf("%d",&A[i]);
    Merge_sort(0,testcases-1);
    if(testcases<3) printf("0\n");
    else{
    	for(int i=0;i<testcases-2;i++){
    		if(A[i]<sum) swift(sum-A[i],i+1,testcases-1);
    		else break;
		}
		printf("%lld\n",count);
	}
    
    
}
