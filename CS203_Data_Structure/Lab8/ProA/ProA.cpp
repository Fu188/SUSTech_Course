#include<stdio.h>
#include<queue>
#include<cstring>
#define Maxn 150000
using namespace std;
int testcases,num,a,b,judge[Maxn+100],root;
bool result,jd;
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
		if(node[index].left!=NULL||node[index].right!=NULL){
			result = false;
			return;
		}
	}else{	
		if(node[index].left==NULL){
			jd=true;
		}else{
			q.push(node[index].left->key);
		}
		if(jd){
			if(node[index].right!=NULL){
				result=false;
				return;
			}
		}else{
			if(node[index].right==NULL) jd=true;
			else q.push(node[index].right->key);
		}
	}
	bfs();
}

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		result = true;
		jd = false;
		while(!q.empty()) q.pop() ;
		memset(judge,0,sizeof(judge));
		memset(node,NULL,sizeof(node));
		scanf("%d",&num);
		for(int i=1;i<=num;i++){
			scanf("%d%d",&a,&b);
			node[i].key=i;
			judge[a]++; judge[b]++;
			if(a!=0) node[i].left = &node[a];
			if(b!=0) node[i].right = &node[b];
		}
		for(int i=1;i<=num;i++){	
			if(judge[i]==0){
				root = i;
				break;
			}
		}
		q.push(root);
		bfs();
		if(result) printf("Yes\n");
		else printf("No\n");
	}
}
