#include<stdio.h>
#pragma GCC optimize(2)
#include<vector>
using namespace std;
int city,query,maxn;
int a,b,c;
struct node{
	int to;
	int key;
};
vector<node> head[5000+100];

void dfs(int x,int y,int parent,int sum){
	for(int i=0;i<head[x].size();i++){
		maxn = maxn>((sum+head[x][i].key)%y)?maxn:((sum+head[x][i].key)%y);
		if(parent!=head[x][i].to) dfs(head[x][i].to,y,x,sum+head[x][i].key);
	}
}

int main(){
	scanf("%d",&city);
	for(int i=0;i<city-1;i++){
		scanf("%d%d%d",&a,&b,&c);
		node temp1;
		temp1.to = b; temp1.key = c;
		node temp2;
		temp2.to = a; temp2.key = c;
		head[a].push_back(temp1);
		head[b].push_back(temp2);
	}
	scanf("%d",&query);
	for(int i=0;i<query;i++){
		scanf("%d%d",&a,&b);
		maxn = 0;
		dfs(a,b,-1,0);
		printf("%d\n",maxn);
	}
}
