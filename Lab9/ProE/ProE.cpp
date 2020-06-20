#include<stdio.h>
#include<queue>
#include<string.h>
#include<stack>
#define Maxn (400000+100)
using namespace std;
priority_queue<int>q;
stack<int>s;
int testcases,n,m,a,b;
int outdegree[Maxn/2];
vector<int> v[Maxn/2]; 

void cal(){
	while(!q.empty()){
		int t = q.top();
		q.pop();
		s.push(t);
		for(int i=0;i<v[t].size();i++){
			outdegree[v[t][i]]--;
			if(outdegree[v[t][i]]==0){
				q.push(v[t][i]);
			}
		}
	}
}

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		memset(outdegree,0,sizeof(outdegree));
		scanf("%d%d",&n,&m);
		for(int i=0;i<=n;i++){
			v[i].clear();
		}
		for(int i=0;i<m;i++){
			scanf("%d%d",&a,&b);
			v[b].push_back(a);
			outdegree[a]++;
		}
		for(int i=1;i<=n;i++){
			if(outdegree[i]==0){
				q.push(i);
			}
		}
		cal();
		while(!s.empty()){
			printf("%d ",s.top());
			s.pop();
		}
		printf("\n");
	}
}

