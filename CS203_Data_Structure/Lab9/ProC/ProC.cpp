#include<stdio.h>
#include<queue>
#include<vector>
#define Infinity (int)(1e8)
#define Maxn 200000+100
using namespace std;

struct header{
	int next;
	int value;
};

struct Pair{
	int value,next;
	bool operator <(const Pair&temp)const{
		return value>temp.value;
	}
};

priority_queue<Pair> q;
vector<header> head[Maxn];
int dist[Maxn];
int n,m;
int isvisit[Maxn];

void cal(){
	q.push((Pair){0,1});
	while(!q.empty()){
		Pair top = q.top();
		q.pop();
		int temp = top.next;
		if(isvisit[temp]) continue;
		isvisit[temp] = 1;
		for(int i=0;i<head[temp].size();i++){
			if(!isvisit[head[temp][i].next]){
				header t = head[temp][i];
				if(dist[t.next]>dist[temp]+t.value){
					dist[t.next] = dist[temp]+t.value;
					q.push(Pair{dist[t.next],t.next});
				}
			}
		}
	}
}

int main(){
	scanf("%d%d",&n,&m);
	int a,b,c;
	for(int i=2;i<=n;i++){
		dist[i]=Infinity;
	}
	header temp;
	for(int i=1;i<=m;i++){
		scanf("%d%d%d",&a,&b,&c);
		temp.next = b;
		temp.value = c;
		head[a].push_back(temp);
	}
	cal();
	if(dist[n]==Infinity) printf("-1\n");
	else printf("%d\n",dist[n]);
}
