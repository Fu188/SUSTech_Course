#include<stdio.h>
using namespace std;

int main(){
	int testcases,node,k,temp;
	long long leaf;
	scanf("%d",&testcases);
	while(testcases--){
		scanf("%d%d",&node,&k);
		if(node>k){
			temp = (node-1)%k;
			node = node-temp;
			if(temp!=0) temp--;
			leaf = (long long)(((k-1)/(double)k)*(node-1)+1.5)+temp;
		}
		else leaf = node-1;
		printf("%lld\n",leaf);
	}
}
