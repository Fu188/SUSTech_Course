#include<stdio.h>
#include<iostream>
#include<cstring>
#define Maxn 1000
using namespace std;
char str[Maxn];
const char *commands[5]={"start","stop","restart","reload","exit"};

void deleteblank(){
	int l=0,r=strlen(str)-1,id=0;
	while(str[l++]==' ') ;
	while(str[r--]==' ') ;
	for(int i=l-1;i<=r+1;i++){
		if(str[i]<='Z'&&str[i]>='A') str[i]+='a'-'A';
		str[id++]=str[i];
	} 
	str[id]='\0';
}

int main(){	
	while(true){
		int cmd=-1;
		printf("> ");
		cin.getline(str,Maxn);
		deleteblank();
		if(str[0]=='\0') continue;
		for(int i=0;i<5;i++){
			if(strcmp(str,commands[i])==0){
				cmd=i;
				break;
			} 
		}
		switch(cmd){
			case 0: printf("command <start> recognized.\n");
			        break;
			case 1: printf("command <stop> recognized.\n");
			        break;
			case 2: printf("command <restart> recognized.\n");
			        break;
			case 3: printf("command <reload> recognized.\n");
			        break;
			case 4: return 0;
			default: printf("Invalid command.\n");
		}
	}
	return 0; 
} 
