#include<stdio.h>
#define Maxn 100000000
using namespace std;
int t,k;
unsigned long long s;

typedef struct Binary_Tree{
	unsigned long long key=0;
	int lchild=0;
	int rchild=0;
	Binary_Tree *left=NULL;
	Binary_Tree *right=NULL;
}Node;
Node *root = NULL;

unsigned long long calA(unsigned long long i){
	unsigned long long temp = i;
	while(i>0){
		temp+=i%10;
		i=i/10;
	}
	return temp;
}

void create_Tree(int i){
	unsigned long long value = calA(1+i);
	Node *node = new Node();
	node->key = value;
	root = node;
}

void add_node(int i,unsigned long long j){
	unsigned long long value = calA(i+(unsigned long long)j);
	Node *node = new Node();
	node->key = value;
	Node *temp1=root;
	Node *temp2;
	while(temp1){
		temp2 = temp1;
		if(temp1->key>value){
			temp1->lchild++;
			temp1 = temp1->left;
		}
		else{
			temp1->rchild++;
			temp1=temp1->right;
		}		 
	}
	if(value<temp2->key) temp2->left = node;
	else temp2->right = node;
}

Node* TreeMin(Node* node){
	while(node->left!=NULL) node=node->left;
	return node;
}

unsigned long long find_k(Node *node,int m){	
	while(node){
//		printf("key:%d  lchild:%d  rchild:%d m:%d\n",node->key,node->lchild,node->rchild,m);
		if(node->rchild==m-1) return node->key;
		int child = node->rchild;
		if(node->rchild<m-1){
			node = node->left;
			m=m-child-1;
		}else{
			node = node->right;
		}
	}
}

void del_node(Node *node){
	Node *parent;
	while(node->left!=NULL){
		parent = node;
		node->lchild--;
		node=node->left;
	}
	if(node==root){
		root = root->right;
		delete node;
	} 
	else{
		parent->left = node->right;
		delete node;
	}
}

int main(){
	scanf("%d%d%d",&t,&k,&s);
	create_Tree(s);
	for(int i=2;i<=t;i++){
		if(i<=k){
			add_node(i,s);
			if(i%100==0){
				s=TreeMin(root)->key;
				printf("%u ",s);	
			}
		}
		else{
			add_node(i,s);			
			if(i%100==0){
			 	s=find_k(root,k);
				printf("%u ",s);
			} 
			del_node(root);
		}
	}
}
 
