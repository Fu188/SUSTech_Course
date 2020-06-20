#include<stdio.h>
#include<algorithm>
#include <queue>
using namespace std;
int testcases,num,temp;
long long sum;
priority_queue<int,vector<int>,greater<int> > heap;

void cal(){
	int a,b,c;
	while(heap.size()>1){
		a = heap.top();
		heap.pop();
		b = heap.top();
		heap.pop();
		c = a+b;
		sum+=c;
		heap.push(c);
	}
	heap.pop();
}

int main(){
	scanf("%d",&testcases);
	while(testcases--){
		sum = 0;
		scanf("%d",&num);
		for(int i=0;i<num;i++){
			scanf("%d",&temp);
			heap.push(temp);
		}
		if(num==1){
			sum=0;
		}else{
			cal();
		}
		printf("%lld\n",sum);
	}
	return 0;
}
