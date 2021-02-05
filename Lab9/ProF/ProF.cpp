#include<stdio.h>
#include<vector>
#include<algorithm>
#include<string.h>
#define Maxn 2000+100
using namespace std;
int testcases,n,a,b,c,result;

int Larger(int x,int y){
	return x>y?x:y;
}

struct Pair{
	int a,b,c;
}v[2000];
int dp[Maxn];
int G[Maxn][Maxn];

void build_edge(int i,int j){
	if(v[i].a>v[j].a&&v[i].b>v[j].b)
		G[i][j] = 1;
}

int dfs(int i){
	if(dp[i]>0) return dp[i];
	dp[i] = v[i].c;
	for(int k=0;k<n;k++){
		if(G[i][k]){
			dp[i] = Larger(dp[i],v[i].c+dfs(k));
		}
	}
	return dp[i];
}

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		result = 0;
		memset(dp,0,sizeof(dp));
		memset(G,0,sizeof(G));
		scanf("%d",&n);
		for(int i=0;i<n;i++){
			scanf("%d%d%d",&v[i].a,&v[i].b,&v[i].c);
			if(v[i].a>v[i].b){
				int temp = v[i].a;
				v[i].a = v[i].b;
				v[i].b = temp;
			}
//			printf("**a=%d b=%d c=%d\n",v[i].a,v[i].b,v[i].c);
		}
		for(int i=0;i<n;i++){
			for(int j=0;j<n;j++){
				build_edge(i,j);
			}
		}
		for(int i=0;i<n;i++) dfs(i);
		for(int i=0;i<n;i++){
			result = Larger(result,dp[i]);
		}
		printf("%d\n",result);
	}
}
