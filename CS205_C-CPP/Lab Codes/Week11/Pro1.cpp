#include<iostream>
#include<string>
using namespace std;

class CandyBar{
	private:
		string name;
		double weight;
		int calories;
	public:
		void setCandyBar();
		void showCandyBar();
};

void CandyBar::setCandyBar(){
	string name;
	double weight;
	int calories;
	cout<<"Enter brand name of a Candy bar:";
	cin>>name;
	cout<<"Enter weight of the candy bar:";
	cin>>weight;
	cout<<"Enter calories (an integer value) in the candy bar:";
	cin>>calories;
	this->name = name;
	this->weight = weight;
	this->calories = calories;
}

void CandyBar::showCandyBar(){
	cout<<"Brand:"<<name<<endl;
	cout<<"Weight:"<<weight<<endl;
	cout<<"Calories:"<<calories<<endl;
}


int main(){
	CandyBar cb;
	cb.setCandyBar();
	cb.showCandyBar();
}

 
