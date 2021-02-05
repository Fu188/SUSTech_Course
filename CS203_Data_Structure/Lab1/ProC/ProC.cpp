#include<iostream>
#include<stdio.h>
#include<cstring>
using namespace std;

int testcases,num;
int W[10],T[10],Y[10],Z[10];
char temp,tem;

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		memset(W,0,sizeof(W));
		memset(T,0,sizeof(T));
		memset(Y,0,sizeof(Y));
		memset(Z,0,sizeof(Z));
		for(int i=0;i<13;){
			cin>>temp;
			if(temp=='W'){
				scanf("%ch",&tem);
				if((tem-'0')>0) W[(tem-'0')]++;
				else Z[2]++;
				i++;
			}
			else if(temp=='T') {scanf("%d",&num);T[num]++;i++;}
			else if(temp=='Y') {scanf("%d",&num);Y[num]++;i++;}
			else if(temp=='E') {Z[0]++;i++;}
			else if(temp=='S') {Z[1]++;i++;}
			else if(temp=='N') {Z[3]++;i++;}
			else if(temp=='B') {Z[4]++;i++;}
			else if(temp=='F') {Z[5]++;i++;}
			else if(temp=='Z') {Z[6]++;i++;}
		}
		for(int i=1;i<10;i++) while(W[i]--) printf("W%d ",i);
		for(int i=1;i<10;i++) while(T[i]--) printf("T%d ",i);
		for(int i=1;i<10;i++) while(Y[i]--) printf("Y%d ",i);
		while(Z[0]--) printf("E ");
		while(Z[1]--) printf("S ");
		while(Z[2]--) printf("W ");
		while(Z[3]--) printf("N ");
		while(Z[4]--) printf("B ");
		while(Z[5]--) printf("F ");
		while(Z[6]--) printf("Z ");
		printf("\n");
	}
} 
