#include"candybar.h"
#include<cstring>
#include<iostream>
#include<stdio.h>
using namespace std;

int setCandyBar(CandyBar &snack){
	printf("Enter brand name of a Candy bar:");
	cin.getline(snack.brand,40);
	int i=0;
	while(snack.brand[i]==' ') i++;
	if(i==(signed)strlen(snack.brand)) return 0;
	printf("Enter weight of the Candy bar:");
	scanf("%lf",&snack.weight);
	printf("Enter calories (an interger value) in the candy bar:");
	scanf("%d",&snack.calorie);
	return 1;
}

void showCandyBar(const CandyBar &snack){
	printf("Brand name of a Candy bar:%s\n",snack.brand);
	printf("Weight of the candy bar:%lf\n",snack.weight);
	printf("Calories in the candy bar:%d\n",snack.calorie);
}
