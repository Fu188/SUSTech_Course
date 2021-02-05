#ifndef CCube_H
#define CCube_H
#include"CStereoShape.hpp"
class CCube:public CStereoShape{
	public:
		CCube();
		CCube(int a,int b,int c);
		double GetArea();
		double GetVolume();
		void show();
	private:
		int length,width,height;	
};
#endif
