#include<stdio.h>

int A[1000000+100];
int length,count;
long long obj;
bool jud;

void search(long long a,int begin,int end){
	while(begin<=end){
		int mid = (begin+end)/2;
		if(A[mid]==a) {count++;break;}
		else if(a<A[mid]) end = mid-1;
		else begin = mid+1;
	}
}

int main(){
	scanf("%d%lld",&length,&obj);
	count=0;
	jud = true;
	for(int i=0;i<length;i++) scanf("%d",&A[i]);
	if(obj!=0){
		for(int i=0;i<length;i++){
		if(A[i]!=0&&obj%A[i]==0){
			if(i==0||A[i]!=A[i-1]) search(obj/A[i],i+1,length-1);
		    } 
	    }
	} 
	else{
		search(0,0,length-1);
		if(count==1){
			for(int i=1;i<length;i++){
				if(A[i]!=A[i-1]) count++;
				else if(A[i]==0&&jud) {
					count++;
					jud=false;
				}
			}
			count-=1;
		}
	}
	printf("%d\n",count);
}
