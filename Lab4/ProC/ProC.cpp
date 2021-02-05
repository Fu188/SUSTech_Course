#include<stdio.h>

int testcases,mark,head,count,num,pointer;
char B[1000000+100];
char A[100000+100];
int left[100000+100];
int right[100000+100],point[100000+100];
using namespace std;

void del(int d){
	if(d==1) return;
	right[left[pointer]]=right[pointer];
	left[right[pointer]]=left[pointer];
	pointer=right[d];
}

void add(char a,int pointer){
	B[count]=a;
	right[left[pointer]]=count;
	left[count]=left[pointer];
	right[count]=pointer;
	left[pointer]=count;
	count++;
}

void replace(char a,int q){
	if(q!=1) B[q]=a;
	else{
		add(a,q);
		pointer=left[q];
	}
}

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		pointer=1;count=2;num=0;
		right[0]=1;
		left[1]=0;
		scanf("%d",&num);
		scanf("%s",A);
		for(int i=0;i<num;i++){
			if(A[i]=='r') {if(i<num-1)replace(A[++i],pointer);}
			else if(A[i]=='I') pointer=right[0];
			else if(A[i]=='H') {if(left[pointer]!=0) pointer=left[pointer];}
			else if(A[i]=='L') {if(pointer!=1) pointer=right[pointer];}
			else if(A[i]=='x') del(pointer);
			else add(A[i],pointer);
		}
		int temp=0;
		while(right[temp]!=1){
			printf("%c",B[right[temp]]);
			temp=right[temp];
		}
		printf("\n");
	}
} 
