#include<stdio.h>
#include<cstring>
using namespace std;
int testcases,top,post;
char exp[50],oper[50],postfix[50];
int num[50];

int grade(char a){
	if(a=='(') return 0;
	if(a=='f') return 1;
	if(a=='~') return 1;
	if(a=='*') return 2;
	if(a=='+'||a=='-') return 3;
	if(a=='&') return 4;
	if(a=='^') return 5;
	if(a=='|') return 6;
}

void pop(){
	top--;
}

void push(char a){
	oper[++top]=a;
}

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		scanf("%s",exp); top=-1; post=0;
		for(int i=0;i<strlen(exp);i++){
			char ch = exp[i];
			if(ch==')'){
				ch=oper[top];
				while(ch!='('){
					postfix[post++]=ch;
					pop();
					ch = oper[top];
				}
				pop();	
			}
			else if(ch=='(') push(ch);
			else if(ch>='0'&&ch<='9') postfix[post++]=ch;
			else if((ch=='+'||ch=='-')&&(i==0||(exp[i-1]!=')'&&(exp[i-1]<'0'||exp[i-1]>'9')))){
				if(ch=='-') push('f');
			}
			else{
				while(top!=-1&&oper[top]!='('&&(grade(ch)>=grade(oper[top]))){
					if(ch!='~'&&ch!='f'){
						postfix[post++]=oper[top];
						pop();
					}
					else break;
				}
				if(ch!='~'){
					while(oper[top]=='~'||oper[top]=='f'){
					postfix[post++]=oper[top];
					pop;
				    }
				}
				push(ch);
			}
		}
		while(top!=-1){
			postfix[post++] = oper[top];
			pop();
		}
//		for(int i=0;i<strlen(postfix);i++) printf("%c ",postfix[i]);
		for(int i=0;i<post;i++){
			if(postfix[i]>='0'&&postfix[i]<='9') num[++top] = postfix[i]-'0';
			else if(postfix[i]=='*'){
				int a = num[top--];
				int b = num[top--];
				num[++top] = a*b;
			}
			else if(postfix[i]=='f'){
				num[top]=-num[top];
			}
			else if(postfix[i]=='+'){
				int a = num[top--];
				int b = num[top--];
				num[++top] = a+b;
			}
			else if(postfix[i]=='-'){
				int a = num[top--];
				int b = num[top--];
				num[++top] = b-a;
			}
			else if(postfix[i]=='~'){
				num[top] = ~num[top];
				
			}
			else if(postfix[i]=='&'){
				int a = num[top--];
				int b = num[top--];
				num[++top] = b&a;
			}
			else if(postfix[i]=='^'){
				int a = num[top--];
				int b = num[top--];
				num[++top] = b^a;
			}
			else if(postfix[i]=='|'){
				int a = num[top--];
				int b = num[top--];
				num[++top] = b|a;
			}
		}
		printf("%d\n",num[top]);
//		int a=-+~3-~(2&1)*3+~(2|1);
//		printf("%d",a);
	}
}

