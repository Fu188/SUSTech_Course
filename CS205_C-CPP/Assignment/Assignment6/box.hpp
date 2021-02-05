#ifndef BOX_HPP
#define BOX_HPP
#include<iostream>
using namespace std;

class Box{
	public:
		Box();
		Box(int length,int breadth,int height);
		Box(const Box&b);	
		int getLength();
		int getBreadth();
		int getHeight();
		long long CalculateVolume();
		bool operator<(const Box&b)const;
		friend ostream& operator<<(ostream&os,const Box&b);
	private:
		int l;
		int b;
		int h;
};

Box::Box(){
	l = 0;
	b = 0;
	h = 0;
}

Box::Box(int length,int breadth,int height):l(length),b(breadth),h(height){
	
}

Box::Box(const Box&b){
	this->l = b.l;
	this->b = b.b;
	this->h = b.h;
}

int Box::getLength(){
	return l;
}

int Box::getBreadth(){
	return b;
}

int Box::getHeight(){
	return h;
}

long long Box::CalculateVolume(){
	return (long long)l*(long long)b*(long long)h;
}

bool Box::operator<(const Box&b)const{
	if(l<b.l) return true;
	if(l==b.l&&this->b<b.b) return true;
	if(l==b.l&&this->b==b.b&&h<b.h) return true;
	return false;
}

ostream& operator<<(ostream &os,const Box&b){
	os<<"Length = "<<b.l<<", Breadth = "<<b.b<<", Height = "<<b.h<<endl;
	return os;
}

#endif
