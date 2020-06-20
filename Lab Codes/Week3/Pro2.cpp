#include<stdio.h>
#include<cstring>

struct CandyBar{
	char name[100];
	double weight;
	int calories;
};

int main(){
	CandyBar mem[3];
	memcpy(mem[0].name,"Brand1",sizeof("Brand1"));
	mem[0].weight=1.1;
	mem[0].calories=1;
	memcpy(mem[1].name,"Brand2",sizeof("Brand2"));
	mem[1].weight=2.2;
	mem[1].calories=2;
    memcpy(mem[2].name,"Brand3",sizeof("Brand3"));
	mem[2].weight=3.3;
	mem[2].calories=3;
	for(int i=0;i<3;i++){
		printf("Brand:%s\n",mem[i].name);
		printf("Weight:%.1lf\n",mem[i].weight);
		printf("Calorie:%d\n",mem[i].calories);
	}
}
