#include<stdio.h>
#include<queue>
#define Maxn 50000+100
using namespace std;

struct node{
	int from_x;
	int from_y;
	int value;
	friend bool operator<(const node&x,const node&y){
		return x.value<y.value;
	}
};

int **arr;
int **mul;
int **isvisit;
int row,col,v,current,maxn=0,x1,y1,x2,y2,t;
long long sum=0;
node temp;
node nd;
priority_queue<node> pq;

void cal(){
	while(!pq.empty()){
		temp = pq.top();
		pq.pop();
		if(isvisit[temp.from_x][temp.from_y]) continue;
		isvisit[temp.from_x][temp.from_y] = 1;
		sum+=temp.value;
		if(temp.from_x==1||temp.from_x==row){
			if(temp.from_y!=1&&isvisit[temp.from_x][temp.from_y-1]==0){
				nd.from_x = temp.from_x;
				nd.from_y = temp.from_y-1;
				nd.value = arr[temp.from_x][temp.from_y]*arr[temp.from_x][temp.from_y-1];
				pq.push(nd);
			}
			if(temp.from_y!=col&&isvisit[temp.from_x][temp.from_y+1]==0){
				nd.from_x = temp.from_x;
				nd.from_y = temp.from_y+1;
				nd.value = arr[temp.from_x][temp.from_y]*arr[temp.from_x][temp.from_y+1];
				pq.push(nd);
			}
			if(temp.from_x==1&&row!=1&&isvisit[temp.from_x+1][temp.from_y]==0){
				nd.from_x = temp.from_x+1;
				nd.from_y = temp.from_y;
				nd.value = arr[temp.from_x][temp.from_y]*arr[temp.from_x+1][temp.from_y];
				pq.push(nd);
			}
			else if(temp.from_x==row&&row!=1&&isvisit[temp.from_x-1][temp.from_y]==0){
				nd.from_x = temp.from_x-1;
				nd.from_y = temp.from_y;
				nd.value = arr[temp.from_x][temp.from_y]*arr[temp.from_x-1][temp.from_y];
				pq.push(nd);
			}
		}else if(temp.from_y==1||temp.from_y==col){
			if(isvisit[temp.from_x-1][temp.from_y]==0){
				nd.from_x = temp.from_x-1;
				nd.from_y = temp.from_y;
				nd.value = arr[temp.from_x][temp.from_y]*arr[temp.from_x-1][temp.from_y];
				pq.push(nd);
			}
			if(isvisit[temp.from_x+1][temp.from_y]==0){
				nd.from_x = temp.from_x+1;
				nd.from_y = temp.from_y;
				nd.value = arr[temp.from_x][temp.from_y]*arr[temp.from_x+1][temp.from_y];
				pq.push(nd);
			}
			if(temp.from_y==1&&col!=1&&isvisit[temp.from_x][temp.from_y+1]==0){
				nd.from_x = temp.from_x;
				nd.from_y = temp.from_y+1;
				nd.value = arr[temp.from_x][temp.from_y]*arr[temp.from_x][temp.from_y+1];
				pq.push(nd);
			}
			else if(temp.from_y==col&&col!=1&&isvisit[temp.from_x][temp.from_y-1]==0){
				nd.from_x = temp.from_x;
				nd.from_y = temp.from_y-1;
				nd.value = arr[temp.from_x][temp.from_y]*arr[temp.from_x][temp.from_y-1];
				pq.push(nd);
			}
		}else{
			if(isvisit[temp.from_x-1][temp.from_y]==0){
				nd.from_x = temp.from_x-1;
				nd.from_y = temp.from_y;
				nd.value = arr[temp.from_x][temp.from_y]*arr[temp.from_x-1][temp.from_y];
				pq.push(nd);
			}
			if(isvisit[temp.from_x+1][temp.from_y]==0){
				nd.from_x = temp.from_x+1;
				nd.from_y = temp.from_y;
				nd.value = arr[temp.from_x][temp.from_y]*arr[temp.from_x+1][temp.from_y];
				pq.push(nd);
			}
			if(isvisit[temp.from_x][temp.from_y-1]==0){
				nd.from_x = temp.from_x;
				nd.from_y = temp.from_y-1;
				nd.value = arr[temp.from_x][temp.from_y]*arr[temp.from_x][temp.from_y-1];
				pq.push(nd);
			}
			if(isvisit[temp.from_x][temp.from_y+1]==0){
				nd.from_x = temp.from_x;
				nd.from_y = temp.from_y+1;
				nd.value = arr[temp.from_x][temp.from_y]*arr[temp.from_x][temp.from_y+1];
				pq.push(nd);
			}			
		}
	}
}

int main(){
	scanf("%d%d",&row,&col);
	arr = new int*[row+20];
	isvisit = new int*[row+20];
	for(int i=0;i<row+20;i++){
		arr[i] = new int[col+20];
		isvisit[i] = new int[col+20];
	}
	for(int i=1;i<=row;i++){
		for(int j=1;j<=col;j++){
			isvisit[i][j]=0;
		}
	}
	for(int i=1;i<=row;i++){
		for(int j=1;j<=col;j++){
			scanf("%d",&arr[i][j]);
			if(i==1){
				if(j==1) continue;
				else{
					t=arr[i][j]*arr[i][j-1];
					if(t>maxn){
						x1 = i;
						y1 = j;
						maxn = t;
					}
				}
			}else if(j==1){
				t = arr[i][j]*arr[i-1][j];
				if(t>maxn){
					x1 = i;
					y1 = j;
					maxn = t;
				}
			}else{
				t=arr[i][j]*arr[i][j-1];
				if(t>maxn){
					x1 = i;
					y1 = j;
					maxn = t;
				}
				t=arr[i][j]*arr[i-1][j];
				if(t>maxn){
					x1 = i-1;
					y1 = j;
					maxn = t;
				}
			} 
		}
	}
	temp.from_x = x1;
	temp.from_y = y1;
	temp.value = 0;
	pq.push(temp);
	cal();
	printf("%lld\n",sum);
}


