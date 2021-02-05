#include<stdio.h>
#include<queue>
#define Maxn 1000+100
using namespace std;

struct node{
	int to;
	int weight;
	friend bool operator<(const node&x,const node&y){
		return x.weight>y.weight;
	}
};

int isvisit[Maxn];
int n,m,u,v,w,current;
long long sum=0;
priority_queue<node> pq;
int graph[Maxn][Maxn];
node temp;

void cal(){
	while(!pq.empty()){
		temp = pq.top();
		pq.pop();
		if(isvisit[temp.to]) continue;
		current = temp.to;
		isvisit[current] = 1;
		sum+=(long long)temp.weight;
		for(int j=1;j<=n;j++){
			if(graph[current][j]!=-1&&isvisit[j]==0){
				temp.to = j;
				temp.weight = graph[current][j];
				pq.push(temp);
			}
		}
	}
}

int main(){
	scanf("%d%d",&n,&m);
	for(int i=1;i<=n;i++){
		for(int j=1;j<=n;j++){
			graph[i][j]=-1;
		}
	}
	for(int i=0;i<m;i++){
		scanf("%d%d%d",&u,&v,&w);
		graph[u][v]=w;
		graph[v][u]=w;
	}
//	current = 1;
//	isvisit[1] = 1;
	temp.to = 1;
	temp.weight = 0;
	pq.push(temp);
	cal();
	printf("%lld\n",sum);
}

