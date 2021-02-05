#include<bits/stdc++.h>
#define base 131
#define Maxn 100000+10
using namespace std;
char A[Maxn],B[Maxn];
vector<unsigned long long> save;
unsigned long long weight[Maxn],hash1[Maxn],hash2[Maxn];

void hash_table(){
	for(int i=0;i<strlen(A);i++){
		if(i==0) hash1[0]=A[0];
		else hash1[i]=hash1[i-1]*base+A[i];
	}
	for(int i=0;i<strlen(B);i++){
		if(i==0) hash2[0]=B[0];
		else hash2[i]=hash2[i-1]*base+B[i];
	}
}

void getweight(){
	weight[0]=1;
	for(int i=1;i<Maxn;i++) weight[i]=weight[i-1]*base;
}

int mini(int a,int b){
	if(a>b) return b;
	else return a;
}

unsigned long long gethash1(int L,int R){
	return hash1[R]-hash1[L-1]*weight[R-L+1];
}
unsigned long long gethash2(int L,int R){
	return (hash2[R]-hash2[L-1]*weight[R-L+1]);
}

bool check(int target){
	save.clear();
	int m=strlen(A),n=strlen(B);
	for(int i=0;i<=m-target;i++) {
//		printf("%lld\n",gethash1(i,i+target-1));
		save.push_back(gethash1(i,i+target-1));
	}
//	printf("\n");
	sort(save.begin(),save.end());
	for(int i=0;i<=n-target;i++){
		unsigned long long temp = gethash2(i,i+target-1);
//		printf("%d--%d:%lld\n",i,i+target-1,temp);
		if(binary_search(save.begin(),save.end(),temp)) return true;
	}
	return false;
}

int main(){
	scanf("%s%s",A,B);
	getweight();
	hash_table();
	int l=0,r=mini(strlen(A),strlen(B))-1,maxi=0;
	while(l<=r){
//		printf("00 %d\n",r);
		int mid=(l+r)/2;
		if(check(mid+1)){
			l=mid+1;
			maxi=mid+1;
		}
		else r=mid-1;
	}
	printf("%d\n",maxi);
}
