#include<iostream>
#include<cstdio>
using namespace std;

int main(){
	int testcases;
	char letter;
	cin>>testcases;
	while(testcases--){
		for(int i=0;i<9;i++){
			cin>>letter;
			if(i==4) cout<<letter<<endl;
		}
	}
}
