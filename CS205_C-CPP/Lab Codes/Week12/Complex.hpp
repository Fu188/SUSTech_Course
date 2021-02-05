#ifndef COMPLEX_H
#define COMPLEX_H
#include<iostream>
using namespace std;
class Complex{
	public:
		Complex();
		Complex(double re,double im);
		void show() const;
		Complex operator+(const Complex&temp) const;
		Complex operator~();
		Complex operator-(const Complex&temp) const;
		Complex operator*(const Complex&temp) const;
		void operator=(const Complex&temp);
		bool operator==(const Complex&temp) const;
		bool operator!=(const Complex&temp) const;
		friend Complex operator*(double n,const Complex&temp);
		friend ostream& operator<<(ostream&os,const Complex&temp);
		friend istream& operator>>(istream&is,Complex&temp);
	private:
		double real;
		double image;
};
#endif 
