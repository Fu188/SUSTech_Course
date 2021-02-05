#include<stdio.h>
using namespace std;

int m,n;
long long count;

int main(){
	scanf("%d%d",&m,&n);
	count = 1;
	if(m>=4) printf("0\n");
	else if(m==3) {
		if(n<=720) printf("0\n");
		else{
			for(int i=1;i<=720;i++){
				count=((count%n)*(i%n))%n;
			}
			printf("%lld\n",count);
		}
	}
	else if(m==0||m==1) printf("%d\n",1%n);
	else if(m==2) printf("%d\n",2%n);  
}
