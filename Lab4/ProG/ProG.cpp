#include<stdio.h>
 
//迭代法（循环法）
int main()
{
	int n = 0,n_dis=0,total=0;
	int ret = 0;
	int bef1 = 1;
	int bef2 = 0;
	printf("输入要求的斐波拉契数列项数：");
	scanf("%d", &n);
	n_dis = n;
	while(n>0)
	{
		n = n - 1;
		bef2 = bef1;
		bef1 = ret;
		ret = (bef1 + bef2)%1000000;
		total = (total + ret)%1000000;//计算前n项和
		printf("%d\n", ret);//如果不需要打印前n项每个数，则删除这句
	}
	printf("第%d项 = %d\n",n_dis,ret);
	printf("前%d项和 = %d\n",n_dis,total);
	return 0;
}

