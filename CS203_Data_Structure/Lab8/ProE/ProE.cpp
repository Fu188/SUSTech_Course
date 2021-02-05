#include<stdio.h>
#include<queue>
#define Maxn 100000
using namespace std;
int m,k,num,target,result;
queue<int> q1;
queue<int> q2;

struct Node{
	int lchild;
	int rchild;
	int key;
	Node *left;
	Node *right;
};
Node *root=NULL;
Node node[Maxn+100];

void add_node(int i){
	Node *node1= new Node();
	node1->key = i;
	if(root==NULL){
		root = node1;
	}else{
		Node *temp1 = root;
		Node *temp2;
//		printf("i=%d  temp1=%d\n",i,root->key);
		while(temp1){
			temp2 = temp1;	
			if(temp1->key>i){
				temp1->lchild++;
				temp1 = temp1->left;
			}
			else {
				temp1->rchild++;
				temp1 = temp1->right;
			}
		}
		if(i<temp2->key) temp2->left = node1;
		else temp2->right = node1; 
	}
}

int find_k(Node *node,int m){	
	while(node){
//		printf("key:%d  lchild:%d  rchild:%d m:%d\n",node->key,node->lchild,node->rchild,m);
		if(node->lchild==m-1) return node->key;
		int child = node->lchild;
		if(child<m-1){
			node = node->right;
			m = m-child-1;
		}else{
			node = node->left;
		}
	}
}

void delete_node(Node *node,int value){
	Node *a; Node *b;
	Node *temp = node;
	Node *parent;
	int child = 0; //0left  1right
	if(temp==NULL) return;
	while(temp){
		if(temp->key==value){
			if(!temp->left&&!temp->right){
				if(temp==node){
					 delete node;
					 return;
				}
				else if(child==0){
					parent->left=NULL;
					delete temp;
					return;
				}
				else if(child==1){
					parent->right=NULL;
					delete temp;
					return;
				}
			}else if(!temp->left){
				if(root==temp) root=temp->right;
				else if(child==0) parent->left=temp->right;
				else parent->right=temp->right;
				delete temp;
				return;
			}else if(!temp->right){				
				if(root==temp) root = temp->left;
				else if(child==0) parent->left=temp->left;
				else parent->right = temp->left;
				delete temp;
				return;
			}else{
				a=temp;b=temp->right;
				if(b->left){
					a->rchild--;  
					a=b;
					a->lchild--;
					b=b->left;
					while(b->left){
						b->lchild--;
						a=b;
						b=b->left;
					}
					temp->key = b->key;
					if(b->right) a->left = b->right;
					else a->left=NULL;
					delete b;
					return;
					}
				else{
					a->rchild--;
					a->key=b->key;
					a->right=b->right;
					delete b;
					return;
				}
			}
		}
		else if(temp->key>value){
			temp->lchild--;
			child=0;
			parent = temp;
			temp = temp->left;
		}else{
			temp->rchild--;
			child=1;
			parent = temp;
			temp = temp->right;
		}
	}
}
//
//void inOrderTraverse(Node* node){
//	if(node){
//		inOrderTraverse(node->left);
//		printf("%d ",node->key);
//		inOrderTraverse(node->right);
//	}
//}

int main(){
	scanf("%d%d",&m,&k);
	for(int i=0;i<m;i++){
		scanf("%d",&num);
		q1.push(num);
		if(i<k) add_node(num);
		else q2.push(num);
	}
//	printf("%d %d \n",root->key,root->left->key);
	for(int i=0;i<m-k+1;i++){
//		printf("----%d----\n",root->key);
//		inOrderTraverse(root);
//		printf("\n");
		scanf("%d",&target);
		int result = find_k(root,target);
		printf("%d\n",result);		
		int temp1 = q1.front();
		q1.pop();
		delete_node(root,temp1);
		int temp2 = q2.front();
		q2.pop();
		add_node(temp2);		
	}
}
