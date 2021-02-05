#ifndef CSphere_H
#define CSphere_H
#include"CStereoShape.hpp"
class CSphere:public CStereoShape{
	public:
		CSphere();
		CSphere(int a);
		double GetArea();
		double GetVolume();
		void show();
	private:
		double radius;
};
#endif
