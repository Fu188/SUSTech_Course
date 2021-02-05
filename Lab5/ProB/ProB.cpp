#include<stdio.h>
using namespace std;
#define MAXN 30000+100
int top,testcases,num;
char A[MAXN],B[MAXN];
 
void pop(){
	if(top!=-1) top--;
}

void push(char a){
	if(top<MAXN) A[++top]=a;
}

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		top=-1;
		scanf("%d",&num);
		scanf("%s",B);
		for(int i=0;i<num;i++){
			if(top==-1) push(B[i]);
			else if(B[i]==')'&&A[top]=='(') pop();
			else if(B[i]==']'&&A[top]=='[') pop();
			else if(B[i]=='}'&&A[top]=='{') pop();
			else push(B[i]);
		}
		if(top==-1) printf("YES\n");
		else printf("NO\n");
	}
}
