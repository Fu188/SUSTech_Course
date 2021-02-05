#include<stdio.h>
#include<string.h>
using namespace std;
int testcases,m,n,u,v;
int matrix[2000+100][2000+100];
int main(){
	scanf("%d",&testcases);
	while(testcases--){
		memset(matrix,0,sizeof(matrix));
		scanf("%d%d",&m,&n);
		for(int i=0;i<n;i++){
			scanf("%d%d",&u,&v);
			matrix[u][v]++;
		}
		for(int i=1;i<=m;i++){
			for(int j=1;j<=m;j++){
				printf("%d ",matrix[i][j]);
			}
			printf("\n");
		}
	}
} 
