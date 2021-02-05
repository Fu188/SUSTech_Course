#include<iostream>
using namespace std;

class Rectangle{
	private:
		double width,height;
	public:
		Rectangle();
		Rectangle(double width,double height);
		~Rectangle();
		double getArea();
		double getPerimeter();
		void display();	
};

Rectangle::Rectangle(){
	width = 1;
	height = 1;
}

Rectangle::Rectangle(double width,double height){
	this->width = width;
	this->height = height;
}

Rectangle::~Rectangle(){
		
}

double Rectangle::getArea(){
	return width*height;
}

double Rectangle::getPerimeter(){
	return 2*(width+height);
}

void Rectangle::display(){
	cout<<"Width:"<<width<<endl;
	cout<<"Height:"<<height<<endl;
	cout<<"Area:"<<getArea()<<endl;
	cout<<"Perimeter:"<<getPerimeter()<<endl;
}

int main(){
	Rectangle rec1(4,40);
	Rectangle rec2(3.5,35.9);
	rec1.display();
	rec2.display();
	return 0;
}
