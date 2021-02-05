#include<stdio.h>

int testcases,n,m,temp,a,b,num,A[10000+100],left[10000+100],right[10000+100];
using namespace std;

void del(int tem){
	left[right[temp]]=left[temp];
	right[left[temp]]=right[temp];
	num--;
}

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		scanf("%d%d",&n,&m);
		for(int i=0;i<n;i++){
			scanf("%d",&A[i]);
			left[i]=i-1;
			right[i]=i+1;
		}
		num=n;
		temp=0;
		left[0]=n-1;right[n-1]=0;
		for(int i=0;i<n-1;i++){
			a=(m-1)%num;
			b=num-a;
			if(a>=b){
				while(b--) temp=left[temp];
				del(temp);
				m=A[temp];
				temp=right[temp];
			}
			else{
				while(a--) temp=right[temp];
				del(temp);
				m=A[temp];
				temp=right[temp];
			}
		}
		printf("%d\n",right[temp]+1);
	}
}
