#include<stdio.h>
#include<iostream>
#include<cstring>
#define Maxn 500000+100
using namespace std;
int conv[26],point;
char temp;
char A[Maxn],B[Maxn],sum[Maxn+Maxn];
int prefix[Maxn+Maxn];

void prefix_table(int n){
	prefix[0]=-1,prefix[1]=0;
	int i=1,len=0;
	while(i<=n){
		if(len==-1||sum[i]==sum[len]) prefix[++i]=++len;
		else len=prefix[len];
	}
}

int main(){
	for(int i=0;i<26;i++){
		cin>>temp;
		conv[i]=temp;
	}
	scanf("%s",A);
	int len=strlen(A);
	for(int i=0;i<len;i++){
		B[i]=conv[A[i]-'a'];
		sum[i]=A[i];
		sum[len+i]=B[i];
	}
	prefix_table(2*len);
	point=2*len;
	int ans=len;
	while(point>len) point=prefix[point];
	bool judge=true;
		
//	while(point>0){
//		if(point<=len-point){
//			judge=true;
//			for(int i=0;i<point;i++){
//				if(conv[sum[len-point+i]-'a']!=sum[i]){					
//					judge=false;
//					break;
//				}
//			}
//			if(judge){
//				ans=len-point;
//				break;
//			}
//		}	
//		point=prefix[point];
//	}
//	printf("%d\n",ans);
	
	if(point<=0){
		printf("%d\n",len);
		judge=false;
	}
	while(judge){
		for(int i=0;i<point;i++){
			if(point>len-point||conv[sum[len-point+i]-'a']!=sum[i]){
				point=prefix[point];
				if(point<=0){
					printf("%d\n",len);
					judge=false;
				}
				break;
			}
			if(i==point-1){
				printf("%d\n",len-point);
				judge=false;
			}
		} 
	}	
}
