#include<stdio.h>

int testcases,n,m,id,x1,y1,x2,y2;
int A[100000+100],right[100000+100],left[100000+100],nail,loc[100000+100];

void init(){
	for(int i=0;i<n;i++){
		scanf("%d",&A[i]);
		loc[A[i]]=i;
	    right[i]=i+1;
	    left[i]=i-1;
	}
	right[n-1]=0;
	left[0]=n-1;
}

void change(int a,int b,int c,int d){
		int i = left[c];
		int j = right[d];
		if(left[a]==d){
			right[left[c]]=a;
			left[a]=left[c];
			left[right[b]]=d;
			right[d]=right[b];
			right[b]=c;
			left[c]=b;
			
		}		
		else if(right[b]!=c){
			left[c]=left[a];
			right[left[a]]=c;
			left[right[b]]=d;
			right[d]=right[b];
			right[i] = a;
			left[a] = i;
			right[b] = j;
			left[j] = b;
		}else{
			left[c]=left[a];
			right[left[a]]=c;
			right[d]=a;
			left[a]=d;
			right[b]=j;
			left[j]=b;
		}
		if(A[a]==nail) nail=A[c];
}

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		scanf("%d%d",&n,&m);
		init();nail=A[0];
		for(int i=0;i<m;i++){
			scanf("%d%d%d%d",&x1,&y1,&x2,&y2);
		    change(loc[x1],loc[y1],loc[x2],loc[y2]);
		}
		int temp=loc[nail];
		for(int i=0;i<n-1;i++){
			printf("%d ",A[temp]);
			temp=right[temp];
		}
		printf("%d\n",A[temp]);
	}
}
