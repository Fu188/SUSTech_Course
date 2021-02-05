#include<stdio.h>
using namespace std;
#define Maxn 40000+100
int testcases,maxk=0;
unsigned long long maxn = 0;
unsigned long long s = 1;
bool statusA;

struct Node{
	int k;
	unsigned long long n;
	char res[20];
};
Node node[Maxn];

int isfind(long long x){
	for(int i=0;i<testcases;i++){
		if(node[i].n==x) return i;
	}
	return -1;	
}

int main(){
	scanf("%d",&testcases);
	for(int i=0;i<testcases;i++){
		scanf("%d%lld",&node[i].k,&node[i].n);
		maxn = maxn>node[i].n?maxn:node[i].n;
		maxk = maxk>node[i].k?maxk:node[i].k;	
	}
	long long p = 1;
	while(maxk--) p*=10;
	for(int i=1;i<=maxn%p;i++){
		s = s*i;
		int pos = isfind(i);
		while(s%10==0) s/=10;
		if(s>=100000000){
			statusA = true;
			s = s%100000000;
		}
		if(pos!=-1){
			long long temp = s;
			int q = node[pos].k;
			for(int j=0;j<node[pos].k;j++){
				if(temp){
					node[pos].res[j] = temp%10+'0';
					temp/=10;
				}else{
					if(statusA) node[pos].res[j] = '0';
					else node[pos].res[j] = 'n';
				}
			}
		}
	}
	for(int i=0;i<testcases;i++){
		for(int j=node[i].k-1;j>=0;j--){
			if(node[i].res[j]!='n') printf("%c",node[i].res[j]);
		}
		printf("\n");
	}
}

