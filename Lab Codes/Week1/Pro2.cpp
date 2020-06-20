#include<stdio.h>

void print(int a){
	for(int i=0;i<a;i++){
		printf("Smile!");
	}
	printf("\n");
}

int main(){
	print(3);
	print(2);
	print(1);
	return 0;
}
