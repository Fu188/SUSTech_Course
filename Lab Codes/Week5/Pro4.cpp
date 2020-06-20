#include<stdio.h>

int main(){
	for(int i=1;i<=7;i++){
		for(int j=1;j<=7;j++){
			if(j<=i) printf("%d",j);
			else printf("*");
		}
		printf("\n");
	}
}
