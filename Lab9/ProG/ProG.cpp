#include<stdio.h>
#include<vector>
#include<queue>
#include<algorithm>
#include<string.h>
#define Maxn 50000+100
using namespace std;
int testcases,n,m,q,a,b,c,t[Maxn],maxn;
long long result[Maxn];

struct path{
	int start;
	int last_end;
	int end;
	long long weight;
	int mark;
	bool operator<(const path&temp)const{
		return weight>temp.weight;
	} 
};
struct edge{
	int from;
	int to;
	int weight;
	bool operator<(const edge&temp)const{
		return weight<temp.weight;
	}
};

priority_queue<path> pq;
vector<edge> v[Maxn];

void cal(){
	for(int i=1;i<=maxn;i++){
		if(!pq.empty()){
			path temp = pq.top();
			pq.pop();
			result[i] = temp.weight;
			if(temp.mark<v[temp.last_end].size()-1){
				path tem1 = {temp.start,temp.last_end,v[temp.last_end][temp.mark+1].to,temp.weight-v[temp.last_end][temp.mark].weight+v[temp.last_end][temp.mark+1].weight,temp.mark+1};
				pq.push(tem1);
			}
			if(v[temp.end].size()){
				pq.push(path{temp.start,temp.end,v[temp.end][0].to,temp.weight+v[temp.end][0].weight,0});
			}
		}
	}
}

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		scanf("%d%d%d",&n,&m,&q);
		maxn = 0;
		while(!pq.empty()) pq.pop();
		for(int i=1;i<=n;i++){
			v[i].clear();
		}
		memset(result,0,sizeof(result));
		for(int i=0;i<m;i++){
			scanf("%d%d%d",&a,&b,&c);
			v[a].push_back(edge{a,b,c});
		}
		for(int i=1;i<=n;i++){
			sort(v[i].begin(),v[i].end());
			if(v[i].size()){
				pq.push(path{v[i][0].from,v[i][0].from,v[i][0].to,(long long)v[i][0].weight,0});
			}
		}
		for(int i=0;i<q;i++){
			scanf("%d",&t[i]);
			maxn = maxn>t[i]?maxn:t[i];
		}
		cal();
		for(int i=0;i<q;i++){
			printf("%lld\n",result[t[i]]);
		}
	}
}

