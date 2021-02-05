#include<stdio.h>
#include<math.h>
int testcases,spell1,spell2;
int hp[200000+200],attack[200000+200],attack2[200000+200],temp3[200000+200],temp2[200000+200];
long long A[200000+200],temp1[200000+200];
long long count=0;
int jd=0,jd2=0;

void Merge(int l,int m,int r){
	int l1 = l;
	int m1 = m;
	int k = 0;
	while(l1<m&&m1<=r){
		if(A[l1]<=A[m1]) {temp1[k] = A[l1];temp3[k]=hp[l1];temp2[k++] = attack[l1++];}
		else {temp1[k] = A[m1];temp3[k]=hp[m1];temp2[k++] = attack[m1++];}
	}
	while(l1<m) {temp1[k] = A[l1];temp3[k]=hp[l1];temp2[k++] = attack[l1++];}
	while(m1<=r) {temp1[k] = A[m1];temp3[k]=hp[m1];temp2[k++] = attack[m1++];}
	for(int i=0;i<r-l+1;i++){
		A[l+i] = temp1[i];
		attack[l+i] = temp2[i];
		hp[l+i]= temp3[i];
	}
}

void Merge_sort(int l,int r){
	if(l<r){
		int mid = (l+r)/2;
		Merge_sort(l,mid);
		Merge_sort(mid+1,r);
		Merge(l,mid+1,r);
	}	
}

void MergeB(int l,int m,int r){
	int l1 = l;
	int m1 = m;
	int k = 0;
	while(l1<m&&m1<=r){
		if(attack2[l1]<=attack2[m1]) temp3[k++] = attack2[l1++];
		else temp3[k++] = attack2[m1++];
	}
	while(l1<m) temp3[k++] = attack2[l1++];
	while(m1<=r) temp3[k++] = attack2[m1++];
	for(int i=0;i<r-l+1;i++){
		attack2[l+i] = temp3[i];
	}
}

void Merge_sortB(int l,int r){
	if(l<r){
		int mid = (l+r)/2;
		Merge_sortB(l,mid);
		Merge_sortB(mid+1,r);
		MergeB(l,mid+1,r);
	}	
}

long long cal(){
	long long temp = 1;
	for(int i=0;i<spell1;i++) temp*=2;
	return temp;
}

int maxi(int i){
	if(hp[i]>attack[i]) {return hp[i];}
	else return attack[i];
}

int main(){
	scanf("%d%d%d",&testcases,&spell1,&spell2);
	for(int i=0;i<testcases;i++){
		scanf("%d%d",&hp[i],&attack[i]);
	}
	for(int i=0;i<testcases;i++){
		if(spell2>=2) A[i] = cal()*hp[i]-maxi(i);
		else A[i]=cal()*hp[i]-attack[i];
	}
	Merge_sort(0,testcases-1);
	if(spell2>0&&spell2<=testcases){
		for(int i=0;i<testcases;i++){
		attack2[i]=hp[i]-attack[i];
	}
	Merge_sortB(0,testcases-1);
	int tem1 = attack2[testcases-spell2+1];
	if(hp[testcases-1]-attack[testcases-1]>tem1) jd2=1;
	}
	if(spell2>=2&&A[testcases-1]>0){
		if(maxi(testcases-1)==hp[testcases-1]){
		if(jd2){
			count = A[testcases-1]+hp[testcases-1];
		}
		else count = A[testcases-1]+maxi(testcases-1);
		}
		else count = A[testcases-1]+attack[testcases-1];
	}
	else if(spell2==1&&A[testcases-1]>0)count = A[testcases-1] + attack[testcases-1];
	else if(spell2>0&&attack[testcases-1]<hp[testcases-1]){count=hp[testcases-1];}
	else count = attack[testcases-1];
	for(int i=0;i<testcases-1;i++){
		count+=attack[i];
		attack2[i]=hp[i]-attack[i];
	}
	Merge_sortB(0,testcases-2);
	spell2=spell2-1;
	for(int i=testcases-2;i>=0;i--){
		if(spell2>0&&attack2[i]>0){
			spell2--;
			count+=attack2[i];
		}else break;
	}
	printf("%lld\n",count); 
	return 0; 
}
