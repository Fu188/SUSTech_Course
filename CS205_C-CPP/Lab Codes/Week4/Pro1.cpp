#include<stdio.h>
#include<iostream>
using namespace std;

struct Pizza{
	char name[20];
	int diameter;
	double weight;
};

int main(){
	Pizza *p = new Pizza;
	printf("Please input the name:");
	scanf("%s",p->name);
	printf("Please input the diameter:");
	scanf("%d",&(p->diameter));
	printf("Please input the weight:");
	scanf("%lf",&(p->weight));
	printf("Name:%s\nDiameter:%d\nWeight:%.1f\n",p->name,p->diameter,p->weight);
	delete p;
	return 0;
}
