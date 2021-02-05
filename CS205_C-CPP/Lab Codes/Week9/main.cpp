#include<stdio.h>
#include "fun.h"

int main(){
	double source[5]={1.0,2.0,3.0,4.0,5.0};
	double target1[5],target2[5],target3[5];
	CopyArray(target1,source);
	CopyArray(target2,source,5);
	CopyArray(target3,source,source+4);
	PrintArray(target1,target2,target3,5); 
}
