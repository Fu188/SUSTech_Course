#include<stdio.h>
#include<iostream>
using namespace std;
int arr[9][9];
int index;
char temp;
bool boo = true;

bool judgerow(int i,int j){
	for(int k=0;k<9;k++) if(arr[i][k]>9&&k!=j) return false;
	return true;
}

bool judgecol(int i,int j){
	for(int k=0;k<9;k++) if(arr[k][j]>9&&k!=i) return false;
	return true;
}

bool judgegrid(int i,int j){
	int px=i-(i%3)-1;
	int py=j-(j%3)-1;
	for(int m=1;m<=3;m++){
		for(int n=1;n<=3;n++){
			if(arr[px+m][py+n]>9&&!((px+m)==i&&(py+n)==j))return false;
		}
	}
	return true;
}

int judge(int i,int j){
	if(judgerow(i,j)) return 1;
	if(judgecol(i,j)) return 2;
	if(judgegrid(i,j)) return 3;
	return 0;
}

void ip(){
	for(int i=0;i<9;i++){
		index=0;
		for(int j=0;j<12;j++){
		cin>>temp;
		if(!(temp=='|')) arr[i][index++]=(temp-'0');
		}
	}
}

void check(int i,int j){
	int jg[9];
	if(judge(i,j)==1) {
		for(int k=0;k<9;k++) jg[k]=0;
		for(int k=0;k<9;k++)
		{
		    if(j!=k)jg[arr[i][k]-1]++;
		}
		for(int k=0;k<9;k++)
		{
			if(jg[k]==0)
			{
				arr[i][j]=k+1;
				boo=true;
				break;
			}
		}
	}
	else if(judge(i,j)==2) {
		for(int k=0;k<9;k++) jg[k]=0;
		for(int k=0;k<9;k++)
		{
		    if(i!=k)jg[arr[k][j]-1]++;
		}
		for(int k=0;k<9;k++)
		{
			if(jg[k]==0)
			{
				arr[i][j]=k+1;
				boo=true;
				break;
			}
		}
		}
	else if(judge(i,j)==3) {
		for(int k=0;k<9;k++) jg[k]=0;
		int px=i-(i%3)-1;
	    int py=j-(j%3)-1;
	    for(int m=1;m<=3;m++){
		for(int n=1;n<=3;n++){
			if(!((i==px+m)&&(j==py+n)))jg[arr[px+m][py+n]-1]++;
		}
	}
			for(int k=0;k<9;k++){
				if(jg[k]==0){
					arr[i][j]=k+1;
					boo=true;
					break;
				}
			}
		}
	}

void cal(){
	boo=false;
	for(int i=0;i<9;i++){
		for(int j=0;j<9;j++) 
		if(arr[i][j]>9) check(i,j);
	}
}

bool judgeprint(){
	bool a = true;
	for(int i=0;i<9;i++){
		for(int j=0;j<9;j++){
			if(arr[i][j]>9) return false;
		}
	}
	return true;
}

void print(){
	for(int i=0;i<9;i++){
		printf("%d",arr[i][0]);
		for(int j=1;j<9;j++){
			printf(" %d",arr[i][j]);
			if(j%3==2) printf(" |");
		}
		printf("\n");
		if(i==2||i==5) printf("\n");
		}
	}

int main(){
	ip();
	while(boo) cal();
	if(judgeprint()) print();
	else printf("The test data is incorrect!\n");
}


