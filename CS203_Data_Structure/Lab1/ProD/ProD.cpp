#include<stdio.h>
#include<math.h>
int testcases,weishu,count,com,add,tem;
long long num,temp;

int gethui(int wei){
	if(wei==1){
	 	tem=10;
	}
	else if(wei%2==1){
		tem=(pow(10,(wei/2))-pow(10,wei/2-1))*10;
	}
	else if(wei%2==0){
		tem=pow(10,wei/2)-pow(10,wei/2-1);
	}
	return tem;
}

int huiwen(int weishu){
		count=0;
		com=0;
		if(weishu==1){
	 	    count=num+1;
		}
	 	else if(weishu%2==1){
	 		int pre = num/(pow(10,weishu/2+1));
	 		int zhong = (num%(int)(pow(10,weishu/2+1)))/(pow(10,weishu/2));
	 		int post = (num%(int)(pow(10,weishu/2+1)))%(int)(pow(10,weishu/2));
	 		count=(pre-pow(10,(weishu/2)-1))*10;
	 		for(int i=0;i<=9;i++) {
	 			if(i<zhong) count++;
	 			else break;
			 }
			int A[weishu/2];
			int a = pre;
			for(int i=0;i<weishu/2;i++){
				A[i]=a%10;
				a=a/10;
			}
			for(int i=0;i<=weishu/2-1;i++){
				com = 10*com+A[i];
			}
			if(com<=post)count++;
		 }
		 else{
		 	int pre = num/(pow(10,weishu/2));
	 		int post = num%(int)(pow(10,weishu/2));
	 		count=(pre-pow(10,(weishu/2)-1));
	 		int A[weishu/2];
	 		int a=pre;
			for(int i=0;i<weishu/2;i++){
				A[i]=a%10;
				a=a/10;
			}
			for(int i=0;i<weishu/2;i++){
				com = 10*com+A[i];
			}
			if(com<=post)count++;
		 }
	return count;
}

int main(){
     scanf("%d",&testcases);
	 while(testcases--){
	 	scanf("%lld",&num);
	 	weishu=1;
	 	temp=num;
	 	while(temp/10){weishu++;temp=temp/10;}
	 	add=huiwen(weishu);
	 	for(int i=(weishu-1);i>0;i--) add+=gethui(i);
		printf("%d\n",add);
	 }
}
