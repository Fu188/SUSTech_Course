#include <iostream>
using namespace std;

void displaymenu(){
    printf("1.Add\n2.Substract\n3.Multiply\n4.Divide\n5.Modulus\n");
}

int Add(int a,int b){
	return a+b;
}

int Substract(int a, int b){
	return a-b;
}

int Multiply(int a, int b){
	return a*b;
}

float Divide(int a,int b){
	return (float)a/(float)b;
}

int Modulus(int a, int b){
	return a%b;
}

int main(int argc, char *argv[]){
	displaymenu();
	int yourchoice,a,b;
	char confirm;
	do{
		cout<<"Enter your choice(1-5):";
		cin>>yourchoice;
		cout<<"Enter your two integer numbers:";
		cin>>a>>b;
		cout<<"\n";
		switch(yourchoice){
			case 1:{printf("%d\n",Add(a,b)); break;}
			case 2:{printf("%d\n",Substract(a,b)); break;}
			case 3:{printf("%d\n",Multiply(a,b)); break;}
			case 4:{printf("%.1f\n",Divide(a,b)); break;}
			case 5:{printf("%d\n",Modulus(a,b)); break;}
		}
		cout<<"\nPress y or Y to continue:";
		cin>>confirm;
	}while(confirm=='y'||confirm=='Y');
	return EXIT_SUCCESS;
}

