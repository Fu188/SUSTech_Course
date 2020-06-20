#include<stdio.h>
#include<vector>
using namespace std;
#define Maxn 200000+100
int testcases,n_odd,n_even,city,road,a,b;
int city_odd[Maxn],city_even[Maxn];
int mark[Maxn];

vector<int>head[Maxn];

void dfs(int x,bool b){
	if(!b){
		city_odd[n_odd++] = x;
	}else{
		city_even[n_even++] = x;
	}
	mark[x] = true;
	int len = head[x].size();
	for(int i=0;i<len;i++){
		if(!mark[head[x][i]]){
			dfs(head[x][i],!b);
		}
	}
}

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		n_odd=0;n_even=0;
		scanf("%d%d",&city,&road);
		for(int i=1;i<=city;i++){
			head[i].clear();
			mark[i]=0;
		}
		for(int i=0;i<road;i++){
			scanf("%d%d",&a,&b);
			head[a].push_back(b);
			head[b].push_back(a);
		}
		dfs(1,false);
		if(n_odd>=n_even){
			printf("%d\n",n_even);
			for(int i=0;i<n_even;i++){
				printf("%d ",city_even[i]);
			}
			printf("\n");
		}else{
			printf("%d\n",n_odd);
			for(int i=0;i<n_odd;i++){
				printf("%d ",city_odd[i]);
			}
			printf("\n");
		}
	}	
}
