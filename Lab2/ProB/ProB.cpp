#include<stdio.h>
using namespace std;

const int maxn= 1000000+20;
int days,fish;
int money[maxn],price[maxn];

void check(int a,int begin,int end){
	while(begin<end){
		int mid = (begin+end)/2;
	    if(a==price[mid]) {printf("Meow\n");return;}
	    else if(a<price[mid]) end = mid-1;
	    else begin = mid+1;
	}
	if(a==price[begin]) printf("Meow\n");
	else if(end<begin&&a<price[begin]) printf("%d\n",a-price[end]);
	else if(begin==end&&a>price[begin]) printf("%d\n",a-price[begin]);
	else printf("%d\n",a-price[begin-1]);
}

int main(){
	scanf("%d%d",&days,&fish);
	for(int i=0;i<days;i++) scanf("%d",&money[i]);
	for(int i=0;i<fish;i++) scanf("%d",&price[i]);
	for(int i=0;i<days;i++){
		if(money[i]<price[0]) printf("%d\n",money[i]);
		else check(money[i],0,fish-1);
	}
}
