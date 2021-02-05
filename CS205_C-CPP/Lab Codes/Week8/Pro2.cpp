#include<stdio.h>

template <typename T>

T Max(T arr[]){
	T max =arr[0];
	for(int i=1;i<5;i++){
		if(arr[i]>max) max = arr[i];
	}
	return max;
}

int main(){
	int arr1[5] = {1,2,3,4,5};
	double arr2[5] = {1.0,2.0,3.0,4.0,5.5};
	printf("Max int: %d\n",Max(arr1));
	printf("Max double: %.1f\n",Max(arr2));
}
