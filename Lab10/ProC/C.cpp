#include<stdio.h>
#include<string.h>
#include<vector>
#define Maxn 200000+100
using namespace std;

vector<int>graph[Maxn];
vector<int>r_graph[Maxn];
vector<int>loadtime;
int isvisit[Maxn];
int n,m,u,v,temp=0;

void dfs(int x){
	isvisit[x] = 1;
	for(int i=0;i<graph[x].size();i++){
		if(!isvisit[graph[x][i]]) dfs(graph[x][i]);
	}
	loadtime.push_back(x);
}

void r_dfs(int x,int y){
	isvisit[x] = 1;
	for(int i=0;i<r_graph[x].size();i++){
		if(!isvisit[r_graph[x][i]]) r_dfs(r_graph[x][i],y);
	}
}

void cal(){
	memset(isvisit,0,sizeof(isvisit));
	for(int i=1;i<=n;i++){
		if(!isvisit[i]) dfs(i);
	}
	memset(isvisit,0,sizeof(isvisit));
	for(int i=loadtime.size()-1;i>=0;i--){
		if(!isvisit[loadtime[i]]) r_dfs(loadtime[i],temp++);
	}
}

int main(){
	scanf("%d%d",&n,&m);
	for(int i=0;i<m;i++){
		scanf("%d%d",&u,&v);
		graph[u].push_back(v);
		r_graph[v].push_back(u);
	}
	cal();
	if(temp==1) printf("Bravo\n");
	else printf("ovarB\n");
}

