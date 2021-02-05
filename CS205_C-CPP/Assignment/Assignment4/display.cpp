#include<stdio.h>
#include<iostream>
#include<fstream>
#include<string.h>
#include<sstream>
#include"utf8.h" 
#define Maxn 1000
#define Max_len 1e18
using namespace std;

struct info{
	int count = 0;
	char name[Maxn];
	int start=0;
	int end=0;
};

struct info cnt[Maxn];
bool load();
void find(int target);
void print();

int main(){
	if(!load()) return 0;
	else{
		unsigned char *p = new unsigned char[Maxn];
		int bytes_in_char;
		unsigned int codepoint;
		stringstream buffer;
		buffer<<cin.rdbuf();
		string contents(buffer.str());
		p = (unsigned char*)contents.c_str();
		while(*p){
			codepoint = utf8_to_codepoint(p, &bytes_in_char);
			if(codepoint){
				find(codepoint);
				_utf8_incr(p);
			}else{
				printf("%c Invalid UTF-8\n", *p);
           		p++;
			}
		}	
		print();
	}		
	return 0;
}

bool load(){
	ifstream file("Blocks.txt");
	if(!file.is_open()){
		cout<<"Can not open the file!"<<endl;
		return false;
	}else{
		int i = 0;
		char *str1 = new char[Maxn];
		while(file.getline(str1,Maxn)){
			if(str1[0]=='#'||strlen(str1)==0) continue;
			else{
				sscanf(str1,"%x..%x; %[^\n]",&cnt[i].start,&cnt[i].end,cnt[i].name);
				i++;
			}
		}
		cout<<"Load the file successfully\n";
		file.close();
		return true;
	}
}

void find(int target){
	for(int i=0;i<Maxn;i++){
		if(cnt[i].start<=target&&cnt[i].end>=target){
			cnt[i].count++;
			break;
		}
	}
}

void print(){
	int max_num=0;
	int max_index=0;
	for(int i=0;i<Maxn;i++){
		if(cnt[i].count>max_index){
			max_index = i;
			max_num = cnt[i].count;
		}
	}
	for(int i=0;i<Maxn;i++){
		if(cnt[i].count==0) ;
		else{
			printf("There are %d characters belong to %s\n",cnt[i].count,cnt[i].name);
		}		
	}
	printf("Most characters belong to %s, there have %d characters of of this set in this file\n",cnt[max_index].name,max_num);
}
