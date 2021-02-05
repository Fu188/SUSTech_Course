#include<stdio.h>
#include<vector>
#include<string.h>
#define Maxn 1000+100
using namespace std;

vector<int>graph[Maxn],r_graph[Maxn],res[Maxn],record;
int used[Maxn],isvisit[Maxn][Maxn],lastvis[Maxn]; 
int cmp[Maxn],instack[Maxn];
int n;
long long x[Maxn],y[Maxn],r[Maxn],c[Maxn];
long long cnt = 0;

bool judge_dis(int a,int b){
	if(((x[a]-x[b])*(x[a]-x[b])+
		(y[a]-y[b])*(y[a]-y[b]))
		<=r[a]*r[a]) return true;
	else return false;
}

void add_edge(int a,int b){
	graph[a].push_back(b);
	r_graph[b].push_back(a);
}

void dfs(int x){
	used[x] = 1;
	for(long long i=0;i<graph[x].size();i++){
		if(!used[graph[x][i]]) dfs(graph[x][i]);
	}
	record.push_back(x);
}

void r_dfs(int x,int y){
	used[x] = 1;
	cmp[x] = y;
	for(long long i=0;i<r_graph[x].size();i++){
		if(!used[r_graph[x][i]]) r_dfs(r_graph[x][i],y);
	}
}

int count_scc(){
	memset(used,0,sizeof(used));
	for(int i=0;i<n;i++){
		if(!used[i]) dfs(i);
	}
	memset(used,0,sizeof(used));
	int k = 0;
	for(int i=record.size()-1;i>=0;i--){
		if(!used[record[i]]) r_dfs(record[i],++k);
	}
	return k;
}

void create_edge(){
	for(int i=0;i<n;i++){
		for(int j=0;j<n;j++){
			if(i!=j&&judge_dis(i,j)){
				add_edge(i,j);
				isvisit[i][j]=1;
			}
		}
	}
}

void find(){
	for(int i=0;i<n;i++){
		if(lastvis[cmp[i]]) continue;
		if(0==instack[cmp[i]]){
			long long temp = 999999999999;
			lastvis[cmp[i]] = 1;
			for(long long j=0;j<res[cmp[i]].size();j++){
				int k = res[cmp[i]][j];
				temp = temp<c[k]?temp:c[k];
			}
			if(temp!=999999999999) cnt+=(long long)temp;
		}
	}
}


int main(){
	scanf("%d",&n);
	for(int i=0;i<n;i++){
		scanf("%lld%lld%lld%lld",&x[i],&y[i],&r[i],&c[i]);
	}
	create_edge();
	count_scc();
	for(int i=0;i<n;i++){
		for(int j=0;j<n;j++){
			if(i==j||isvisit[i][j]==0||cmp[i]==cmp[j]) continue;
			instack[cmp[j]] ++;
		}
	}
	for(int i=0;i<n;i++) res[cmp[i]].push_back(i);
	find();
	printf("%lld\n",cnt);
}

