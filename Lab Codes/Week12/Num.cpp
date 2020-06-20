#include"Num.hpp"
#include<iostream>
using namespace std;

Number::Number():v(0){
	
}

Number::Number(int t):v(t){
	
}


Number Number::operator ++(){
	return Number(++v);
}

Number Number::operator ++(int){
	Number t(v);
	v++;
	return t;
}
Number Number::operator --(){
	return Number(--v);
}

Number Number::operator --(int){
	Number t(v);
	v--;
	return t;
}

ostream& operator<<(ostream&io,const Number&t){
	io<<"x = "<<t.v;
	return io;
}
