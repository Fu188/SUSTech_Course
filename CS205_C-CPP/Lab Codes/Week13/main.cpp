#include<stdio.h>
#include"CStereoShape.hpp"
#include"CCube.hpp"
#include"CSphere.hpp"
using namespace std;

int main(){
	CCube a_cube(4.0,5.0,6.0);
	CSphere c_sphere(7.9);
	CStereoShape *p;
	p = &a_cube;
	p->show();
	p = &c_sphere;
	p->show();
	printf("Has %d objects\n",CStereoShape::GetNumofObject());
	return 0;
	
}
