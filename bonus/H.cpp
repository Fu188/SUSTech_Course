#include<stdio.h>
#define Maxn 1e12
using namespace std;
int N,I,M,K;
int game[100000+100];
long long res;
int status;

bool judge(long long day){
	long long sum = 0;
	for(int i=0;i<M;i++){
		long long days = day-1;
		long long temp = game[i];
		if(temp-days*K>0){
			temp = temp - days*K;
		}else{
			temp = (temp%K)==0?K:temp%K;
		}
		sum +=temp;
	}
	long long money = N+day*I;
	if(money>=sum){
		if(money-I>=sum) status = 0;
		else status = 1;
		return true;
	}
	else return false;
}

long long binary(long long begin,long long end){
	while(begin<end){
		long long mid = (begin+end)/2;
		if(judge(mid)){
			end = mid;
		}
		else begin=mid+1;
	}
	return end;
}

int main(){
	scanf("%d%d%d%d",&N,&I,&M,&K);
	for(int i=0;i<M;i++) scanf("%d",&game[i]);
	long long res = binary(1,Maxn);
	if(status==0){
		printf("%lld morning\n",res);
	}
	else printf("%lld evening\n",res);
}
