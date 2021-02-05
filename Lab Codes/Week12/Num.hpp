#ifndef NUM
#define NUM
#include<iostream>
using namespace std;
class Number{
	public:
		Number();
		Number(int t);
		Number operator++();
		Number operator ++(int);
		Number operator--();
		Number operator --(int);
		friend ostream& operator<<(ostream&t1,const Number&t2);
	private:
		int v;	 
};
#endif
