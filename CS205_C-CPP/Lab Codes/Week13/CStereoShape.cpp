#include<stdio.h>
#include"CStereoShape.hpp"
using namespace std;
int CStereoShape::numberofObjects = 0;
double CStereoShape::GetArea(){
	return 0.0;
}

double CStereoShape::GetVolume(){
	return 0.0;
}

void CStereoShape::show(){
	printf("Area = %.2f\n",GetArea());
	printf("Volume = %.2f\n",GetVolume());
}
