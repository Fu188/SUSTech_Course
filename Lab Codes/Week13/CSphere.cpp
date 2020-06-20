#include<stdio.h>
#include"CSphere.hpp"
#define PI 3.1415926
CSphere::CSphere(){
	radius = 1;
}

CSphere::CSphere(int a):radius(a){	
}

double CSphere::GetArea(){
	return 4*PI*radius*radius;
}

double CSphere::GetVolume(){
	return 4.0/3.0*PI*radius*radius*radius;
}

void CSphere::show(){
	printf("Area = %.2f\n",GetArea());
	printf("Volume = %.2f\n",GetVolume());
}
