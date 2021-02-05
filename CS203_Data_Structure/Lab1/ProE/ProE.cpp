#include<stdio.h>
#include<iostream>
#include<math.h>
#include<cstring>
using namespace std;

int testcases,x,y,wei;
long long add,num;

int judge(int a,int b){
	if(a==1&&b==1) return 1;
	if(a==2&&b==1) return 2;
	if(a==2&&b==2) return 3;
	if(a==1&&b==2) return 4; 
}

void cal(int a,int b){
	wei=0;
	long long count=1;
	if(a>=b){
		if(a>2){
			for(;;wei++){if(((a-1)/(2<<wei))<=0) break;}
			for(int i=0;i<wei;i++) count=2*count;
			if((b-1)/(2<<(wei-1))>=1){
				add+=2*count*count;
				cal(a-count,b-count);
			}
			else{
				add+=count*count;
				cal(a-count,b);
			}
		}
		else add+=judge(a,b);
	}
	else{
		if(b>2){
			for(;;wei++){if((b-1)/(2<<wei)<=0) break;}
			for(int i=0;i<wei;i++) count=2*count;
			if((a-1)/count>=1){
				add+=2*count*count;
				cal(a-count,b-count);
			}
			else{
				add+=3*count*count;
				cal(a,b-count);
			}
		}
		else add+=judge(a,b);
	}
}

void calloc(long long a){
	wei=0;long long count=1;
	for(;;wei++) {
	    if((a-1)/(count*count)<=0) break;
	    count=2*count;
	}
	count=count/2;
	wei=wei-2;
	if(a<=4){
		if(a==1) {x+=1;y+=1;}
		else if(a==2) {x+=2;y+=1;}
		else if(a==3) {x+=2;y+=2;}
		else if(a==4) {x+=1;y+=2;}
	}
	else if((a-1)/(count*count)==1){
		x+=count;
		calloc(a-count*count);
	}
	else if((a-1)/(count*count)==2){
		x+=count;
		y+=count;
		calloc(a-2*count*count);
	}
	else{
		y+=count;
		calloc(a-3*count*count);
	}
}

int main(){
	scanf("%d",&testcases);
	while(testcases--)
	{
		char ip2[100000];
		x=0;y=0;add=0;num=0;
		scanf("%s",ip2);
		if((ip2[0]-'0')<0)
		{
			int i=1;
			while(ip2[i]!=',') {
				x=x*10+(ip2[i]-'0');
				i++;
			}
			i++;
			while(ip2[i]!=')') {
				y=y*10+(ip2[i]-'0');
				i++;
			}
		    cal(x,y);
		    printf("%lld\n",add);	
		}
		else{
			for(int i=0;i<strlen(ip2);i++) num=10*num+(ip2[i]-'0');
			calloc(num);
			printf("(%d,%d)\n",x,y);
		}
	}
}
