#include<stdio.h>
#include<cstring>
#include<queue>
using namespace std;
#define Maxn 100000
int testcases,num,a,b,count=0,root;
int son[Maxn+100],judge[Maxn+100],cnt[Maxn+100];
bool mark,jd,result,high,low;
queue<int> q;

struct Node{
	int key=0;
	Node *left=NULL;
	Node *right=NULL;
};

Node node[Maxn+100];

void bfs(){		
	if(q.empty()) return;
	int index = q.front();
	q.pop();
	if(jd){
		if(node[index].left!=NULL||node[index].right!=NULL){result=false;return;}
	}	
	else{
		if(node[index].left==NULL){
			jd=true;			
		}
		else{
			q.push(node[index].left->key);
		}
		if(node[index].right!=NULL)q.push(node[index].right->key);
	}	
	bfs();
}

void dfs(int index){
	if(node[index].left!=NULL){
		if(cnt[node[index].key]>cnt[node[index].left->key]) high=true;
		else if(cnt[node[index].key]<cnt[node[index].left->key]) low=true;
		dfs(node[index].left->key);
	}
	if(node[index].right!=NULL){
		if(cnt[node[index].key]>cnt[node[index].right->key]) high=true;
		else if(cnt[node[index].key]<cnt[node[index].right->key]) low=true;
		dfs(node[index].right->key);
	}
}

int  main(){
	scanf("%d",&testcases);
	while(testcases--){
		mark = false,jd=false,result=true,high=false,low=false;
		memset(node,NULL,sizeof(node));
		memset(cnt,0,sizeof(cnt));
		memset(son,0,sizeof(son));
		memset(judge,0,sizeof(judge));
		scanf("%d",&num);
		for(int i=1;i<=num;i++) scanf("%d",&cnt[i]);
		for(int i=1;i<=num-1;i++){
			scanf("%d%d",&a,&b);
			node[a].key = a;
			node[b].key = b;
			if(son[a]==0) node[a].left = &node[b];
			else node[a].right = &node[b];
			son[a]++; judge[b]++;
		}
		for(int i=1;i<=num;i++){
			if(son[i]>2||judge[b]>1){
				result=false;
				break;
			}
			if(judge[i]==0) {
				node[i].key=i;
				root=i;
				mark=true;
				break;
			}
		}
		if(mark){
			q.push(root);
			bfs();
			dfs(root);
		}
		if(low&&high) result=false;
		if(result){
			printf("Case #%d: YES\n",++count);
		}
		else printf("Case #%d: NO\n",++count);
	}
}
