#include<stdio.h>
#include<queue>
#include<vector>
#define Infinity (long long)(1e12)
#define Maxn 50000+100
using namespace std;

struct header{
	int next;
	int value;
	int portal;
};

struct Pair{
	long long value;
	int next,portal;
	bool operator <(const Pair&temp)const{
		return value>temp.value;
	}
};

priority_queue<Pair> q;
vector<header> head[Maxn];
long long dist[15][Maxn];
long long mini=Infinity;
int n,m,p,k,S,T;
int isvisit[15][Maxn];

void cal(){
	q.push((Pair){0,S,0});
	while(!q.empty()){
		Pair top = q.top();
		q.pop();
		int temp = top.next;
		int por = top.portal;
		if(isvisit[por][temp]) continue;
		isvisit[por][temp] = 1;
		for(int i=0;i<head[temp].size();i++){
			header t = head[temp][i];
			if(por<k&&!isvisit[por+1][head[temp][i].next]&&t.value==0&&dist[por+1][t.next]>dist[por][temp]){
				dist[por+1][t.next] = dist[por][temp];
				q.push(Pair{dist[por+1][t.next],t.next,por+1});
//				printf("**%d %d %lld\n",por,t.next,dist[por][t.next]);
			}else if(!isvisit[por][head[temp][i].next]&&t.value!=0&&dist[por][t.next]>dist[por][temp]+t.value){
				dist[por][t.next] = dist[por][temp] + t.value;
				q.push(Pair{dist[por][t.next],t.next,por});
//				printf("**%d %d %lld\n",por,t.next,dist[por][t.next]);
			}
		}
	}
}

int main(){
	scanf("%d%d%d%d",&n,&m,&p,&k);
	int a,b,c;
	for(int i=0;i<15;i++){
		for(int j=1;j<=n;j++)
		dist[i][j]=Infinity;
	}
	header temp;
	for(int i=1;i<=m;i++){
		scanf("%d%d%d",&a,&b,&c);
		temp.next = b;
		temp.value = c;
		head[a].push_back(temp);
	}
	for(int i=1;i<=p;i++){
		scanf("%d%d",&a,&b);
		temp.next = b;
		temp.value = 0;
		head[a].push_back(temp);
	}
	scanf("%d%d",&S,&T);
	dist[0][S] = 0;
	cal();
	for(int i=0;i<=k;i++){
		mini = mini<dist[i][T]?mini:dist[i][T];
	}
	printf("%lld\n",mini);
}
