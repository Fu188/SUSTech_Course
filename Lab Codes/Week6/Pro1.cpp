#include<stdio.h>

int main(){
	printf("Enter any alphabet:");
	char a; scanf("%c",&a);
	if(a>='A'&&a<='Z') a+='a'-'A';
	switch(a){
		case 'a':
		case 'o':
		case 'e':
		case 'i':
		case 'u':{printf("Vowel\n");break;}
		default:{printf("Consonant\n");break;}
	}
}
