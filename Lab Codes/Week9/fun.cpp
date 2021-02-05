#include "fun.h"
#include<stdio.h>

void CopyArray(double(&target)[5], double (&source)[5]){
	for(int i=0;i<5;i++){
		target[i] = source[i];
	}
}

void CopyArray(double *target, double *source, int len){
	for(int i=0;i<len;i++){
		target[i] = source[i];
	}
}

void CopyArray(double *target, double *source_start, double *source_end){
	int j=0;
	for(double *i=source_start;i<=source_end;i++,j++){
		target[j] = *i;
	}
}

void PrintArray(double *target1, double *target2, double *target3, int
len){
	printf("target1|\ttarget2|\ttarget3\n");
	for(int j=0;j<len;j++){
		printf("%.3f|\t%.3f|\t%.3f\n",target1[j],target2[j],target3[j]);
	}
}
