#include<stdio.h>
using namespace std;

struct CandyBar{
	char name[20];
	double weight;
	int colories;
};

int main(){
	CandyBar *p = new CandyBar;
	printf("Please input the name:");
	scanf("%s",p->name);
	printf("Please input the weight:");
	scanf("%lf",&(p->weight));
	printf("Please input the colories:");
	scanf("%d",&(p->colories));
	printf("Name:%s\nWeight:%.1lf\nColories:%d\n",p->name,p->weight,p->colories);
	delete p;
	return 0;
}
