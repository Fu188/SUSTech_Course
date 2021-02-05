#include <iostream>
#include<math.h>
using namespace std;
int red[100000+100],blue[100000+100],red2[100000+100],blue2[100000+100],red3[100000+100],blue3[100000+100],temp1[100000+100],temp2[100000+100],seq[200000+100];
bool jud[100000+100];
int testcases,num,b,r;

void Merge(int arr1[],int arr2[],int l,int m,int r){
	int l1 = l;
	int m1 = m;
	int k = 0;
	while(l1<m&&m1<=r){
		if(arr1[l1]<=arr1[m1]) {temp1[k] = arr1[l1];temp2[k++]=arr2[l1++];}
		else {temp1[k] = arr1[m1];temp2[k++]=arr2[m1++];}
	}
	while(l1<m){temp1[k] = arr1[l1];temp2[k++]=arr2[l1++];}
	while(m1<=r) {temp1[k] = arr1[m1];temp2[k++]=arr2[m1++];}
	for(int i=0;i<r-l+1;i++){
		arr1[l+i] = temp1[i];
		arr2[l+i] = temp2[i];
	}
}

void Merge_sort(int arr1[],int arr2[],int l,int r){
	if(l<r){
		int mid = (l+r)/2;
		Merge_sort(arr1,arr2,l,mid);
		Merge_sort(arr1,arr2,mid+1,r);
		Merge(arr1,arr2,l,mid+1,r);
	}	
}

int main()
{
    scanf("%d",&testcases);
    for(int i=0;i<testcases;i++){
    	 scanf("%d",&num);int id1=0,id2=0,id3=0,tem=0;
    	 int begin=0,end=2*num-1;
    	 for(int j=0;j<num;j++){
    	 	scanf("%d%d",&b,&r);
    	 	if(b<r){blue[id1]=b;red[id1++]=r;}
    	 	else if(b==r) {blue3[id3]=b;red3[id3++]=r;}
    	 	else{blue2[id2]=b;red2[id2++]=r;}
		 }
		 Merge_sort(blue,red,0,id1-1);
		 for(int i=0;i<id1;i++){
		 	seq[2*i]=blue[tem];
		 	seq[2*i+1]=red[tem++];
		 } 
		 tem=0;
		 Merge_sort(blue3,red3,0,id3-1);
		 for(int i=0;i<id3;i++){
		 	seq[2*id1+2*i]=blue3[tem];
		 	seq[2*id1+2*i+1]=red3[tem++];
		 }
		 tem=id2-1;
		 Merge_sort(red2,blue2,0,id2-1);
		 for(int i=0;i<id2;i++){
		 	seq[2*id1+2*id3+2*i]=blue2[tem];
		 	seq[2*id1+2*id3+2*i+1]=red2[tem--];
		 }
		 long long sum=0,color=0,markred=0,markblue=seq[0];
		 for(int i=1;i<2*num-1;i++){
		 	if(color==0){
		 		markred+=seq[i];
		 		color=1;
			 }
			else{
				if(seq[i]<=markred){
					sum+=seq[i];
					markred=markred-seq[i];
					color=0;
				}
				else{
					sum+=markred;
					markred=0;
					color=0;
				}
			}
		 }
		 printf("%lld\n",sum);
	}
}
