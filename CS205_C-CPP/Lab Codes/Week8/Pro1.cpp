#include<stdio.h>

struct CandyBar{
	char brand[30];
	double weight;
	int calorie;
};

void set(CandyBar *cb){
	printf("Call the set function of Passing by reference:\n");
	printf("Enter brand name of a Candy bar:");
	scanf("%s",cb->brand);
	printf("Enter weight of the candy bar:");
	scanf("%lf",&cb->weight);
	printf("Enter calories (an integer value) in the candy bar:");
	scanf("%d",&cb->calorie);
	printf("\n");
}

void set(CandyBar &cb){
	printf("Call the set function of Passing by pointer:\n");
	printf("Enter brand name of a Candy bar:");
	scanf("%s",cb.brand);
	printf("Enter weight of the candy bar:");
	scanf("%lf",&cb.weight);
	printf("Enter calories (an integer value) in the candy bar:");
	scanf("%d",&cb.calorie);
	printf("\n");
}

void show(const CandyBar &cb){
	printf("Call the set function of Passing by pointer:\n");
	printf("Enter brand name of a Candy bar:%s\n",cb.brand);
	printf("Enter weight of the candy bar:%lf\n",cb.weight);
	printf("Enter calories (an integer value) in the candy bar:%d\n",cb.calorie);
	printf("\n");
}

void show(const CandyBar *cb){
	printf("Call the set function of Passing by reference:\n");
	printf("Enter brand name of a Candy bar:%s\n",cb->brand);
	printf("Enter weight of the candy bar:%lf\n",cb->weight);
	printf("Enter calories (an integer value) in the candy bar:%d\n",cb->calorie);
	printf("\n");
}

int main(){
	CandyBar cb;
	set(&cb);
	show(&cb);
	CandyBar cb2;
	set(cb2);
	show(cb2); 
	
}
