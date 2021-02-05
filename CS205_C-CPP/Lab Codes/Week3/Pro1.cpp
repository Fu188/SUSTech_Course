#include<stdio.h>
#include<cstring>

struct CandyBar{
	char name[100];
	double weight;
	int calories;
};

int main(){
	CandyBar mem1;
	printf("Enter brand name of a Candy bar:");
	scanf("%s",mem1.name);
	printf("Enter weight of the Candy bar:");
	scanf("%lf",&mem1.weight);
	printf("Enter calories (an interger value) in the Candy bar:");
	scanf("%d",&mem1.calories);
	printf("Brand: %s\n",mem1.name);
	printf("Weight: %.1lf\n",mem1.weight);
	printf("Calorie: %d",mem1.calories);
}
