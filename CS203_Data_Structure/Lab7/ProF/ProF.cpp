#include<stdio.h>
#include<string.h>
#include<iostream>
#define Maxn 100010
int testcases,city,num,a,b,loc[Maxn],maxi,len,first;
using namespace std;
struct Node{
	Node *next=NULL;
	int key;
};

struct Node header[Maxn];
struct Node *temp;

void dfs(int a,int b){
	for(Node *i=header[a].next;i!=NULL;i=i->next){
		if(i->key!=b){
			len++;
			if(loc[i->key]==1){
				if(len>=maxi){
					maxi = len;
					temp = i;
				}
			}
//			printf("key:%d   len:%d  max:%d\n",i->key,len,maxi);
			dfs(i->key,a);
		}
	}
	len--;
}

void add(int a,int b){
	Node *node1 = new Node();
	node1->key = b;
	node1->next =  header[a].next;
	header[a].next = node1;
	Node *node2 = new Node();
	node2->key = a;
	node2->next = header[b].next;
	header[b].next = node2;
}

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		len=0,maxi=0;
		memset(loc,0,sizeof(loc));
		memset(header,NULL,sizeof(header));
		scanf("%d%d",&city,&num);
		for(int i=0;i<city-1;i++){
			scanf("%d%d",&a,&b);
			add(a,b);
		}
		for(int i=0;i<num;i++){
			scanf("%d",&a);
			if(i==0) first = a;
			loc[a]=1;
		}
		dfs(first,-1);
		len=0;
		if(temp!=NULL){
			dfs(temp->key,-1);
		};
		printf("%d\n",(int)(maxi+1)/2);
	}
}
