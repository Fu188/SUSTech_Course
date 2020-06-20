#include<stdio.h>
#include<string.h>
using namespace std;
int depth[100000+100];

struct node{
	node *next = NULL;
	int to;
};

node head[100000+100];// = new node[];

void dfs(int a,int h){
	for(node *i = head[a].next;i!=NULL;i=i->next){
		if(i->to!=1&&depth[i->to]==0){
			depth[i->to] = h+1;
			dfs(i->to,h+1);
		} 
	}
	head[a].next = NULL;
}

void add(int a,int b){
	node *node1 = new node();
	node1->to = b;
	node1->next = head[a].next;
	head[a].next = node1;
	node *node2 = new node();
	node2->to = a;
	node2->next = head[b].next;
	head[b].next = node2;
}

int main(){
	int testcases,num,a,b;
	scanf("%d",&testcases);
	while(testcases--){
		memset(depth,0,sizeof(depth));
		scanf("%d",&num);
		for(int i=0;i<num-1;i++){
			scanf("%d%d",&a,&b);
			add(a,b);
		}
		dfs(1,0);
		for(int i=1;i<=num;i++) printf("%d ",depth[i]);
		printf("\n");
	}
}
