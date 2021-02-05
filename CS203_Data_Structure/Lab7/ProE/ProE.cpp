#include<stdio.h>
#include<string.h>
using namespace std;
#define Maxn 100100
int testcases,num,a,b,red,blue,edge;
int color2[Maxn],rb[2*Maxn][2],time=1,temp[2];
struct Node{
	int key;
	Node *next=NULL;
	int begin=0;
	int end=0;
};
Node head[Maxn];

void add(int a,int b){
	Node *node1 = new Node();
	node1->key = b;
	node1->next = head[a].next;
	head[a].next = node1;
	Node *node2 = new Node();
	node2->key = a;
	node2->next = head[b].next;
	head[b].next = node2;
}

void dfs(Node *a,int b){
	int c=0,d=0;
	if(color2[a->key-1]==1) c=1;
	else if(color2[a->key-1]==2) d=1;
	rb[time+1][0]=rb[time][0]+c;
	rb[time+1][1]=rb[time][1]+d;
	a->begin = time;
	time++;
	for(Node *i = head[a->key].next;i!=NULL;i = i->next){	
		if(i->key!=b){			
			dfs(i,a->key);			
		}
	}
	a->end = time;
	temp[0]=rb[a->end][0]-rb[a->begin][0];
	temp[1]=rb[a->end][1]-rb[a->begin][1];
	if((red==temp[0]&&temp[1]==0)||(temp[0]==0&&blue==temp[1])) edge++;
	head[a->key].next = NULL;
	rb[time+1][0]=rb[time][0];
	rb[time+1][1]=rb[time][1];
	time++;
}

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		scanf("%d",&num);
		red =0,blue=0,edge=0,time=1;
		memset(rb,0,sizeof(rb));
		memset(color2,0,sizeof(color2));
		for(int i=0;i<num-1;i++){
			scanf("%d%d",&a,&b);
			add(a,b);
		}
		for(int i=0;i<num;i++){
			scanf("%d",&a);
			color2[i] = a;
			if(a==1) red+=1;
			else if(a==2) blue+=1;
		}
		Node *temp = new Node();
		temp->key = 1;
		dfs(temp,-1);
		printf("%d\n",edge);
	}
}
