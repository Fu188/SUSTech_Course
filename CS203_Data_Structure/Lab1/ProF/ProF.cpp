#include<stdio.h>
using namespace std;

int testcases,num;
bool judge;

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		judge=false;
		scanf("%d",&num);
		if(num==1) printf("impossible\n");
		else if(num%2==1) printf("%d\n",2);
		else {
			for(long long i=3;i*(i-1)/2<num;i++){
			   if(i%2==1) {
			       if(num%i==0) {printf("%d\n",i);judge=true;break;}
			   }
			   else{
			   	   if((num+i/2)%i==0) {printf("%d\n",i);judge=true;break;}
			   }
		    }
		    if(!judge) printf("impossible\n");
		}
	}
}
