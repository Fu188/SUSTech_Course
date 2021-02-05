#include<stdio.h>
#include<cstring>

struct CandyBar{
	char name[100];
	double weight;
	int calories;
};

int main(){
	int testcases;
	printf("How many Candy Bars?");
	scanf("%d",&testcases);
    CandyBar mem[testcases];
	for(int i=0;i<testcases;i++){
		printf("CandyBar #%d\n",i+1);
		printf("Please enter the brand:");
	    scanf("%s",mem[i].name);
	    printf("Please enter the weight:");
	    scanf("%lf",&mem[i].weight);
	    printf("Please enter the calories:");
	    scanf("%d",&mem[i].calories);
	}
	printf("Here is the collection:\n");
	for(int i=0;i<testcases;i++){
		printf("Brand: %s\n",mem[i].name);
		printf("Weight: %.1lf\n",mem[i].weight);
		printf("Calorie: %d\n",mem[i].calories);
	}
}
