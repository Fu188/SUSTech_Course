#include<stdio.h>
using namespace std;
int testcases,num,pre[1000+10],in[1000+10];

typedef struct Tree_node{
	int key;
	struct Tree_node *left;
	struct Tree_node *right;
}Node;

Node *createTree(int l1,int r1,int pre[],int l2,int r2,int in[]){
	if(l1>r1) return NULL;
	Node *root = new Node();
	root->key = pre[l1];
	for(int i=l2;i<=r2;i++){
		if(in[i]==pre[l1]){
			root->left = createTree(l1+1,l1+i-l2,pre,l2,i-1,in);
			root->right = createTree(l1+i-l2+1,r1,pre,i+1,r2,in);
			break;
		} 
	}
	return root;
}

void print(Node *post){
	if(post){
		print(post->left);
		print(post->right);
		printf("%d ",post->key); 
	}
}

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		scanf("%d",&num);
		for(int i=0;i<num;i++) scanf("%d",&pre[i]);
		for(int i=0;i<num;i++) scanf("%d",&in[i]);
		Node *post = createTree(0,num-1,pre,0,num-1,in);
		print(post);
		printf("\n");
	}
}
