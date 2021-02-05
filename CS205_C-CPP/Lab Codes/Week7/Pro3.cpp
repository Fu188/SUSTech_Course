#include<stdio.h>
using namespace std;

int Fill_array(double arr[],int size);
void Show_array(double *arr,int size);
void Reverse_array(double *arr,int size);
void Reverse(double *arr,int size);

int main(){
	int size;
	printf("Enter the size of the array:");
	scanf("%d",&size);
	double arr[size];
	int a_size=Fill_array(arr,size);
	Show_array(arr,a_size);
	Reverse_array(arr,a_size);
	Show_array(arr,a_size);
	Reverse(arr,a_size);
	Show_array(arr,a_size);
}

int Fill_array(double arr[],int size){
	double c;
	for(int i=0;i<size;i++){
		printf("Enter value #%d:",i+1);
		if(scanf("%lf",&c)==-1) return i;
		arr[i]=c;
	}
	return size;
}

void Reverse_array(double *arr,int size){
	for(int i=0;i<size/2;i++){
		double temp=*(arr+i);
		*(arr+i)=*(arr+size-i-1);
		*(arr+size-i-1)=temp;
	}
}

void Reverse(double *arr,int size){
	for(int i=1;i<size/2;i++){
		double temp=*(arr+i);
		*(arr+i)=*(arr+size-i-1);
		*(arr+size-i-1)=temp;
	}	
}

void Show_array(double *arr,int size){
	for(int i=0;i<size;i++){
		printf("%.2f ",arr[i]);
	}
	printf("\n");
}
