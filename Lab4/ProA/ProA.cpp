#include<stdio.h>
#include<string.h>

int testcases,n,m,num,target,count,id;
int A[1000+100],B[1000+100],C[1000+100],D[1000+100],E[2000+100];
long long sum[2000+100];

void Merge(int a,int b){
	int i=0,j=0;id=-1;
	while(i<a&&j<b){
		if(id>=0&&B[i]==E[id]) sum[id] +=A[i++];
		else if(id>=0&&D[j]==E[id]) sum[id] +=C[j++];
		else if(B[i]==D[j]) {
			id++;
			E[id]=B[i];
			sum[id]=(long)A[i++]+(long)C[j++];
			count++;
		}
		else if(B[i]<D[j]){
			id++;
			E[id]=B[i];
			sum[id]=(long)A[i++];
			count++;
		}
		else{
			id++;
			E[id]=D[j];
			sum[id]=(long)C[j++];
			count++;
		}
	}
	while(i<a) {
		if(id>=0&&B[i]==E[id]) sum[id] +=A[i++];
		else if(id>=0&&D[j]==E[id]) sum[id] +=C[j++];
		else{
			id++;
			E[id]=B[i];
			sum[id]=(long)A[i++];
			count++;
		}
	}
	while(j<b) {
		if(id>=0&&B[i]==E[id]) sum[id] +=A[i++];
		else if(id>=0&&D[j]==E[id]) sum[id] +=C[j++];
		else{
			id++;
			E[id]=D[j];
			sum[id]=(long)C[j++];
			count++;
		}
	}
}

int binary(int a,int begin,int end){
	while(begin<=end){
		int mid=(begin+end)/2;
		if(E[mid]==a) return mid;
		else if(E[mid]<a){
			if((mid==m+n-count-1)||E[mid+1]>a) return mid;
			else begin=mid+1;
		}
		else {
			if(mid==0||E[mid-1]<a) return mid;
			else end=mid-1;
		}
	}
}

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		count=0;
		memset(E,0,sizeof(E));
		scanf("%d",&n);
		for(int i=0;i<n;i++) scanf("%d%d",&A[i],&B[i]);
		scanf("%d",&m);
		for(int j=0;j<m;j++) scanf("%d%d",&C[j],&D[j]);
		Merge(n,m);
		scanf("%d",&num);
		while(num--){
			scanf("%d",&target);
			int tem=binary(target,0,count-1);
			if(E[tem]==target) printf("%lld",sum[tem]);
			else printf("0");
			if(num>0) printf(" ");
			else printf("\n");
		}
	}
}
