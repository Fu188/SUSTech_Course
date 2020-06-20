#include<stdio.h>
#include<string.h>
#include<vector>
using namespace std;
int testcases,M,N,K;
bool mark[1000+100];
bool can_get;

struct monster{
	int X;
	int Y;
	int S;
};
monster mon[1000+100];
vector<int> mons[1000+100];

bool cal(int i,int j){
	unsigned long long X2= (unsigned long long)(mon[i].X-mon[j].X)*(unsigned long long)(mon[i].X-mon[j].X);
	unsigned long long Y2= (unsigned long long)(mon[i].Y-mon[j].Y)*(unsigned long long)(mon[i].Y-mon[j].Y);
	if(X2+Y2<=(unsigned long long)(mon[i].S+mon[j].S)*(unsigned long long)(mon[i].S+mon[j].S))
		return true;
	else return false;
}

void dfs(int x){
	if(can_get||mon[x].X-mon[x].S<=0||mon[x].Y+mon[x].S>=N){
		can_get = true;
		return;
	}
	if(mark[x]) return;
	mark[x]=true;
	for(int i=0;i<mons[x].size();i++){
		dfs(mons[x][i]); 
	}
}

void operation(){
	for(int i=1;i<=K;i++){
		for(int j=1;j<=K;j++){
			if(i==j) continue;
			if(cal(i,j)){
				mons[i].push_back(j);
			}
		}
	}
	for(int i=1;i<=K;i++){
		if((mon[i].Y-mon[i].S)<=0||mon[i].X+mon[i].S>=M){
			dfs(i);
		}
		if(can_get) return;
	}
}

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		memset(mon,0,sizeof(mon));
		memset(mark,0,sizeof(mark));
		can_get = false;
		scanf("%d%d%d",&M,&N,&K);
		for(int i = 1;i<=K;i++){
			mons[i].clear();
			scanf("%d%d%d",&mon[i].X,&mon[i].Y,&mon[i].S);
		}
		operation(); 
		if(!can_get) printf("Yes\n");
		else printf("No\n");
	}
}
