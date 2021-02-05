#include<stdio.h>
#include<cstring>
using namespace std;

#define Maxn 50000+100
int height[Maxn],pl[Maxn],pr[Maxn],temp[Maxn];
int testcases,num,top=-1,ind=1;

void pop(){
	top--;
}

void push(int a){
	temp[++top]=a;
}

void find(){
	for(int i=0;i<num;i++){
		if(top==-1||height[temp[top]]>=height[i]){
			pl[i]=0; push(i);
		}
		else{
			while(top!=-1&&height[temp[top]]<height[i]){pl[i]=temp[top]+1;pop();}
			push(i);
		}
	}
	top=-1;
	for(int i=num-1;i>=0;i--){
		if(top==-1||height[temp[top]]>=height[i]){
			pr[i]=0; push(i);
		}
		else{
			while(top!=-1&&height[temp[top]]<height[i]){pr[i]=temp[top]+1;pop();}
			push(i);
		}
	}
}

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		top=-1;
		scanf("%d",&num);
		for(int i=0;i<num;i++) scanf("%d",&height[i]);
		find();
		printf("Case %d:\n",ind++);
		for(int i=0;i<num;i++) printf("%d %d\n",pl[i],pr[i]);
	}
}
