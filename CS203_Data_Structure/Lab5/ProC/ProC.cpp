#include<stdio.h>
using namespace std;

#define Maxn 2000000
int A[Maxn],ans=0,q[Maxn],front=0,rear=0,begin=1,end=0,k,count=0;

int main(){
	scanf("%d",&k);
	while(true){
		scanf("%d",&A[rear]);
		if(A[rear]==-1) break;
		rear++;
		while(begin<=end&&A[count]>=A[q[end]]) end--;
		q[++end]=count;
		if(count>=k-1){
			while(q[begin]<=count-k) begin++;
//			printf("%d ",A[q[begin]]);
			ans = ans^A[q[begin]];
		}
		count++;
    }
    printf("%d\n",ans);
}
