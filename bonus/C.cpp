#include<stdio.h>
using namespace std;
int N,M;
char res[2000+100][200];
char temp[2000+100];
int main(){
	scanf("%d%d",&N,&M);
	for(int i=0;i<N-M+1;i++){
		scanf("%s",temp);
		for(int j=0;j<N;j++){
			res[j][(int)temp[j]]++;
		}
	}
	for(int i=0;i<N;i++){
		int maxn = 0;
		for(int j=0;j<150;j++){
			maxn = res[i][maxn]>res[i][j]?maxn:j;
		}
		printf("%c",(char)maxn);
	}
	printf("\n");
}
