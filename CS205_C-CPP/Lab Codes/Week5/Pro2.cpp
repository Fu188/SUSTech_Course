#include<stdio.h>
#include<cstring>
using namespace std;

int main(){
	char A[20];
	int count=0;
	printf("Enter words(to stop, type the word done):\n");
	do{
		scanf("%s",A);
		count++;
	}while(strcmp(A,"done"));
	printf("You entered a total of %d words.",count-1);
}
