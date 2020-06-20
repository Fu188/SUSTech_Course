#include<stdio.h>
#define Maxn 500+10
using namespace std;
int testcases,up,down,right,N,M,ans;
int qmin[Maxn],qmax[Maxn],A[Maxn][Maxn],min[Maxn],max[Maxn];

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		ans=0;
		scanf("%d%d",&N,&M);
		for(int i=0;i<N;i++)
			for(int j=0;j<N;j++) scanf("%d",&A[i][j]);
		for(up=0;up<N;up++){
			for(down=up;down<N;down++){
				if(up==down){
					for(int i=0;i<N;i++){
						min[i]=A[up][i];
						max[i]=A[up][i];
					}
				}
				else{
					for(int i=0;i<N;i++){
						if(A[down][i]>max[i]) max[i]=A[down][i];
						if(A[down][i]<min[i]) min[i]=A[down][i];
					}
				}
				int beg=1,top=0,start=1,end=0,pointer=0;
				for(right=0;right<N;right++){
					while(beg<=top&&max[right]>max[qmax[top]]) top--;
					qmax[++top]=right;
					while(start<=end&&min[right]<min[qmin[end]]) end--;
					qmin[++end]=right;
					while(top>=beg&&end>=start&&!(max[qmax[beg]]-min[qmin[start]]<=M)){
						pointer++;
						while(beg<=top&&pointer>qmax[beg]) beg++;
						while(start<=end&&pointer>qmin[start]) start++;
					}
					if(max[qmax[beg]]-min[qmin[start]]<=M&&(right-pointer+1)*(down-up+1)>ans) ans=(right-pointer+1)*(down-up+1);
				}
			}
		}
		printf("%d\n",ans);
	}
}
