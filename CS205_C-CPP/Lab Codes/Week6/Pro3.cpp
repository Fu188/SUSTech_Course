#include<stdio.h>

int main(){
	double score[3],sum=0;
	for(int i=0;i<3;i++){scanf("%lf",&score[i]);sum+=score[i];}
	sum=sum/3.0;
	if(sum>=90) printf("Grade:A");
	else if(sum>=70) printf("Grade:B");
	else if(sum>=50) printf("Grade:C");
	else printf("Grade:F");
	
}
