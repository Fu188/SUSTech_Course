#include<stdio.h>
#include<cstring>
char str[100];
int v=0,c=0,o=0;

bool isalp(int a){
	if(str[a]>='A'&&str[a]<='Z') {str[a]+='a'-'A';return true;}
	else if(str[a]>='a'&&str[a]<='z') return true;
	else return false;
}

void judge(char a){
	switch(a){
		case 'a':
		case 'o':
		case 'e':
		case 'i':
	    case 'u':v++;break;
	    default:c++;
	}
}

int main(){
	printf("Enter words (q to quit):\n");
	gets(str);
	for(int i=0;i<strlen(str);i++){
		if(i==0||str[i-1]==' '){
			if(isalp(i)) judge(str[i]);
			else o++;
		}
	}
	printf("%d words begining with vowels\n",v);
	printf("%d words begining with consonants\n",c);
	printf("%d others\n",o);
}
