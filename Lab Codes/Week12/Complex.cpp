#include"Complex.hpp"
#include<iostream>
using namespace std;
Complex::Complex():real(0),image(0){
	
}

Complex::Complex(double re,double im):real(re),image(im){
	
}

bool Complex::operator!=(const Complex&temp)const{
	if(real!=temp.real||image!=temp.image){
		return true;
	}
	else return false;
}

bool Complex::operator==(const Complex&temp)const{
	if(real==temp.real&&image==temp.image){
		return true;
	}
	return false;
}

Complex Complex::operator*(const Complex&temp)const{
	Complex t;
	t.real = real*temp.real - image*temp.image;
	t.image = real*temp.image + image*temp.real;
	return t;
}

Complex operator*(double d,const Complex&temp){
	Complex t;
	t.real = d*temp.real;
	t.image = d*temp.image;
	return t;
}

Complex Complex::operator+(const Complex&temp)const{
	Complex t;
	t.real = real + temp.real;
	t.image = image + temp.image;
	return t;
}

Complex Complex::operator-(const Complex&temp)const{
	Complex t;
	t.real = real-temp.real;
	t.image = image - temp.image;
	return t;
}

Complex Complex::operator~(){
	Complex t;
	t.real = -real;
	t.image = -image;
	return t;
}

void Complex::operator=(const Complex&temp){
	real = temp.real;
	image = temp.image;
}

ostream& operator<<(ostream &os,const Complex&temp){
	os<<temp.real<<"+"<<temp.image<<"i";
	return os;
}

istream& operator>>(istream &is,Complex&temp){
	cout<<"real:";
	is>>temp.real;
	cout<<"imaginary:";
	is>>temp.image;
	return is;
}
