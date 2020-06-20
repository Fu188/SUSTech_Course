#include<iostream>
#include"box.hpp"
using namespace std;
int main(){
	Box a(1,1,1);
	Box b(1,2,1);
	Box c(1,2,0);
	cout<<"Box a:"<<a;
	cout<<"Box b:"<<b;
	cout<<"Box c:"<<c;
	if(a<b) cout<<"True\n";
	else cout<<"False\n";
	if(a<c) cout<<"True\n";
	else cout<<"False\n";
	if(b<c) cout<<"True\n";
	else cout<<"False\n";
	return 0;
}
