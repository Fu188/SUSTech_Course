#include<stdio.h>
#include"CCube.hpp"
CCube::CCube(){
	length = 1;
	width = 1;
	height = 1;
}

CCube::CCube(int a,int b,int c):length(a),width(b),height(c){
	
}

double CCube::GetArea(){
	return 2*(length*width+length*height+width*height);
}

double CCube::GetVolume(){
	return length*width*height;
}

void CCube::show(){
	printf("Area = %.2f\n",GetArea());
	printf("Volume = %.2f\n",GetVolume());
}

