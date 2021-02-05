#include <iostream>
#include"Num.hpp"
using namespace std;
int main()
{
	Number n1(20);
	Number n2 = n1++;
	cout<<n1<<endl;
	cout<<n2<<endl;
	Number n3 = n2--;
	cout<<n2<<endl;
	cout<<n3<<endl;
	Number n4 = ++n3;
	cout<<n3<<endl;
	cout<<n4<<endl;
	Number n5 = --n4;
	cout<<n4<<endl;
	cout<<n5<<endl;
	return 0;
}
