#include<stdio.h>
#include<vector>
#include<string>
#include<algorithm>
#include<iostream>
using namespace std;
int testcases,num;
char arr[20];
vector<string> str;
void swap(int i,int j){
	char temp = arr[i];
	arr[i] = arr[j];
	arr[j] = temp;
}

void recursion(int s,int t){
	if(s==t){
		string s;
		for(int i=0;i<num;i++) s+=arr[i];
		str.push_back(s); 
	}
	else{
		for(int i=s;i<=t;i++){
			swap(i,s);
			recursion(s+1,t);
			swap(i,s);
		}
	}
}

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		str.clear();
		scanf("%d",&num);
		scanf("%s",arr);
		for(int i=0;i<num-1;i++){
			for(int j=1;j<num;j++){
				if(arr[j]<arr[j-1]) swap(j,j-1);
			}
		}
		recursion(0,num-1); 
		sort(str.begin(),str.end());
		for(int i=0;i<str.size();i++){
			cout<<str[i]<<endl;
		}
	}
}
 
