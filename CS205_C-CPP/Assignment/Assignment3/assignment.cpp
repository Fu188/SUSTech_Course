#include<stdio.h>
#include<iostream>
#include<stdlib.h>
#include<Math.h>
#include<cstring>
#include<fstream>
#define Maxlength 35
#define Arr_size 1000
#define PiDiv (0.017453292519943296) //¦Ð/180
#define DegToRad(x) ((x)*PiDiv) // transfer Degree to Radian
const int R = 6371;
using namespace std;
int size;

struct info_table{
	string name;
	string country;
	double latitude;
	double longitude;
};

string del_blank(int begin,int end,string str){
	while(str[begin]==' '){ begin++; }
	while(str[end]==' '){ end--; }
	return str.substr(begin,end-begin+1);
}

bool isDouble(string str){
	int count = 0;
	if(str[0]=='+'||str[0]=='-'||(str[0]>='0'&&str[0]<='9')){
		for(int i=1;i<str.length();i++){
			if(str[i]=='.') count++;
			else if(str[i]>='0'&&str[i]<='9') continue;
			else return false;
			if(count>1) return false; 
		}
	}
	else return false;
	return true;
}

int load(info_table *city){
	ifstream file;
	file.open("./world_cities.csv");
	if(!file) return -1;
	int loc[4],index,count = 0,temp=0;
	bool judge = true;
	string str;
	while(getline(file,str)){
		judge = true;
		index=-1;temp++;
		for(int i=0;i<str.length();i++){
			if(str[i]>='A'&&str[i]<='Z') str[i]=str[i]-'A'+'a';
			if(str[i]==','){
				index++;
				if(index<4) loc[index]=i;
				else {
					judge=false;
					break;
				}
			}
		}
		if(index!=3||!judge){
			printf("Warning:The data of the file is wrong.[Line:%d]\n",temp);
			continue;
		}					
		string name = del_blank(0,loc[0]-1,str);
		string country = del_blank(loc[1]+1,loc[2]-1,str);
		string latitude = del_blank(loc[2]+1,loc[3]-1,str);
		string longitude = del_blank(loc[3]+1,str.length()-1,str);
		if(name.length()>Maxlength||country.length()>Maxlength){
			printf("Warning:The length of names is overlong.[Line:%d]\n",temp);
			continue;
		}
		if(count>=Arr_size){
			printf("Warning:The size is over the maximum array size\n");
			break;
		}
		city[count].name = name;
		city[count].country = country;
		if(isDouble(latitude.c_str())&&isDouble(longitude.c_str())){
			double lati = atof(latitude.c_str());
			double longti = atof(longitude.c_str());
			if(lati<-90||lati>90||longti<-180||longti>180){
				printf("Warning:The data of the file is wrong.[Line:%d]\n",temp);
				continue;
			}
			else{
				city[count].latitude = lati;
				city[count].longitude = longti;
			}
		}
		else{
			printf("Warning:The data of the file is wrong.[Line:%d]\n",temp);
			continue;
		}
		count++;
	}
	file.close();
	return count;
}

int prompt(info_table *city){
	int temp=0,cnt[Arr_size],num;
	string str,input;
	getline(cin,str);
	input = del_blank(0,str.length()-1,str);
	for(int i=0;i<input.length();i++){
		if(input[i]>='A'&&input[i]<='Z') input[i]=input[i]+'a'-'A';
	}
	if(input=="bye") return -4;
	if(input.length()<3) return -1;
	for(int i=0;i<size;i++){
		if(city[i].name.find(input)!=string::npos){
			if(city[i].name==input) return i;
			else cnt[temp++] = i;
		}
	}
	if(temp==1) return cnt[0];
	if(temp>1){
		printf("Here are the choices, please input the right one!\n");
		printf("*************************************************\n");
		for(int i=0;i<temp;i++)
			printf("Choice #%d: %s\n",i+1,city[cnt[i]].name.c_str());
		printf("*************************************************\n");
		return -3;	
	}
	return -2;
}

int main(){
	struct info_table city[Arr_size];
	int x[2],test=1;
	size=load(city);
	if(size==-1) {printf("Warning:The file missing\n");return 0;}
	else{
		printf("-------------------------------------------------\n");
	 	printf("The data is loaded.Program begin:\n");
	 	printf("-------------------------------------------------\n");
	}
	while(true){
		printf("Test #%d:\n",test++);	
		for(int i=0;i<2;i++){
			while(true){
				printf("Please input city%d name:",i+1);
				x[i]=prompt(city);
				switch(x[i]){
					case -1:{printf("The input letter is too short!\n");continue;};
					case -2:{printf("The city is not found\n");continue;}
					case -3:{continue;}
					case -4:return 0;
				}
				break;
			}
		}
		double phi1 = DegToRad(90 - city[x[0]].latitude);
		double phi2 = DegToRad(90 - city[x[1]].latitude);
		double theta = DegToRad(city[x[0]].longitude-city[x[1]].longitude);
		double c = sin(phi1)*sin(phi2)*cos(theta)+cos(phi1)*cos(phi2);
		double d = R*acos(c);
		printf("The distance between %s and %s is %.1f km.\n",city[x[0]].name.c_str(),city[x[1]].name.c_str(),d);
		printf("-------------------------------------------------\n");
	}
	return 0;	
}



