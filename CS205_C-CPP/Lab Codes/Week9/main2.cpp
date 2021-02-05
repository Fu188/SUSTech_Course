#include<stdio.h>
#include"candybar.h"

int main(){
	int num,staus;
	printf("Please enter the number of candybar:\n");
	scanf("%d",&num);
	CandyBar *snack = new CandyBar[num];
	for(int i=0;i<num;i++){			
		printf("CandyBar[%d]\n",i);
		while(getchar()!='\n') ;
		staus = setCandyBar(snack[i]);
		if(staus==0){
			printf("empty name detected!\n");
			return 0;
		}
	}
	for(int i=0;i<num;i++) showCandyBar(snack[i]);
}
