#include<stdio.h>
using namespace std;
int num,a,b,crt_type;
unsigned long long sum = 0;

struct Node{
	int key=0;
	int type=-1;
	Node *left=NULL;
	Node *right=NULL;
};
Node *root = NULL;

int cal(int a){
	int b = a>0? a:-a;
	return b;
}

Node *Max_node(Node *temp){
	while(temp->right!=NULL) temp = temp->right;
	return temp;
}

Node *Min_node(Node *temp){
	while(temp->left!=NULL) temp = temp->left;
	return temp;
}

Node *get_PreNode(Node *node1){
	Node *temp = root;
	if(root==NULL) return NULL;
	else{
		Node *parent = NULL;
		Node *R_parent = NULL;
		while(temp){
			if(temp==node1) break;
			parent=temp;
			if(temp->key>node1->key) temp = temp->left;
			else{
				R_parent = temp;
				temp = temp->right;
			}
		}
		if(temp->left) return Max_node(temp->left);
		if(parent==NULL||R_parent==NULL) return NULL;
		if(parent->right==temp) return parent;
		else return R_parent;
	}
}

Node *get_PostNode(Node *node1){
	Node *temp = root;
	if(root==NULL) return NULL;
	else{
		Node *parent = NULL;
		Node *L_parent = NULL;
		while(temp){
			if(temp==node1) break;
			parent = temp;
			if(temp->key>node1->key){
				L_parent = temp;
				temp = temp->left;
			}else{
				temp = temp->right;
			}
		}
		if(temp->right) return Min_node(temp->right);
		if(parent==NULL||L_parent==NULL) return NULL;
		if(temp == parent->left) return parent;
		else return L_parent;
	}
}

void delete_node(int value){
	Node *a; Node *b;
	Node *temp=root;
	Node *parent;
	int child = 0;
	if(temp==NULL) return;
	while(temp){
		if(temp->key==value){
			if(!temp->left&&!temp->right){
				if(temp==root){
					root = NULL;
					delete temp;
					return;
				}else if(child==0){
					parent->left = NULL;
					delete temp;
					return;
				}else if(child==1){
					parent->right= NULL;
					delete temp;
					return;
				}
			}else if(!temp->left){
				if(root==temp) root = temp->right;
				else if(child==1) parent->right = temp->right;
				else parent->left = temp->right;
				delete temp;
				return;
			}else if(!temp->right){
				if(root==temp) root = temp->left;
				else if(child==1) parent->right=temp->left;
				else parent->left = temp->left;
				delete temp;
				return;
			}else{
				a = temp; b = temp->right;
				if(b->left){
					a=b; b=b->left;
					while(b->left){
						a = b;
						b = b->left;
					}
					temp->key = b->key;
					if(b->right) a->left = b->right;
					else a->left = NULL;
					delete b;
					return;
				}else{
					a->key = b->key;
					a->right = b->right;
					delete b;
					return;
				}
			}
		}else if(temp->key>value){
			child = 0;
			parent = temp;
			temp = temp->left;
		}else{
			child = 1;
			parent  = temp;
			temp = temp->right;
		}
	}
}

//void inOrderTraverse(Node* node){
//	if(node){
//		inOrderTraverse(node->left);
//		printf("%d ",node->key);
//		inOrderTraverse(node->right);
//	}
//}

void oper(Node *node1){
	int x,y;
//	if(node1->key==142){
//		inOrderTraverse(root);
//		printf("\n");
//	}
	if(get_PostNode(node1)==NULL){
//		printf("here1\n");
		Node *temp = get_PreNode(node1);
		sum+=cal(temp->key-node1->key);
		delete_node(node1->key);
		delete_node(temp->key);
	}else if(get_PreNode(node1)==NULL){
//		printf("here2\n");
		Node *temp = get_PostNode(node1);
		sum+=cal(temp->key-node1->key);		
		delete_node(node1->key);
		delete_node(temp->key);
	}else{
		Node *temp1 = get_PostNode(node1);
		Node *temp2 = get_PreNode(node1);		
		x=cal(temp1->key-node1->key);
		y=cal(temp2->key-node1->key);
//		printf("***%d %d\n",x,y);
		if(x>=y){
			sum+=(unsigned long long)y;
			delete_node(node1->key);
			delete_node(temp2->key);
		}else{
			sum+=(unsigned long long)x;
			delete_node(node1->key);
			delete_node(temp1->key);
		}
	}
//	if(node1->key==142){
//		inOrderTraverse(root);
//		printf("\n");
//	}
//	inOrderTraverse(root);
//	printf("\n");
}

void add_node(int x,int y){
	Node *node1 = new Node();
	node1->type=x; node1->key=y;
	if(root==NULL){
		root = node1;
		return;
	}else{
		Node *temp1 = root;
		Node *temp2;
		while(temp1){
			temp2 = temp1;
			if(temp1->key>y) temp1=temp1->left;
			else temp1=temp1->right;
		}
		if(temp2->key>y) temp2->left = node1;
		else temp2->right = node1;
	}
//	printf("here\n");
	if(x!=crt_type&&crt_type!=-1) oper(node1);
}

int judge_type(){
	if(root==NULL)return -1;
	if(root->type==0) return 0;
	else return 1;
}

int main(){
	scanf("%d",&num);
	while(num--){
		scanf("%d%d",&a,&b);
		crt_type = judge_type();
		add_node(a,b);
//		printf("%llu\n",sum);
	}
	printf("%llu\n",sum);
}

