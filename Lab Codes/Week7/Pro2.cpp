#include<stdio.h>
using namespace std;

void cal(struct box *box1);
void display(struct box *box1);
struct box{
	char maker[40];
	float height;
	float width;
	float length;
	float volume;
};

int main(){
	struct box box1;
	scanf("%s%f%f%f",box1.maker,&box1.height,&box1.width,&box1.length);
	printf("Before setting valume:\n");
	display(&box1);
	cal(&box1);
	display(&box1);
}

void display(struct box *box1){
	printf("Maker: %s\n",box1->maker);
	printf("Height: %.1f\n",box1->height);
	printf("Width: %.1f\n",box1->width);
	printf("Length: %.1f\n",box1->length);
	printf("Volume: %.1f\n",box1->volume);
}

void cal(struct box *box1){
	box1->volume=box1->height*box1->length*box1->width;
}

