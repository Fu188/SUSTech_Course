#include<stdio.h>
 
//��������ѭ������
int main()
{
	int n = 0,n_dis=0,total=0;
	int ret = 0;
	int bef1 = 1;
	int bef2 = 0;
	printf("����Ҫ���쳲���������������");
	scanf("%d", &n);
	n_dis = n;
	while(n>0)
	{
		n = n - 1;
		bef2 = bef1;
		bef1 = ret;
		ret = (bef1 + bef2)%1000000;
		total = (total + ret)%1000000;//����ǰn���
		printf("%d\n", ret);//�������Ҫ��ӡǰn��ÿ��������ɾ�����
	}
	printf("��%d�� = %d\n",n_dis,ret);
	printf("ǰ%d��� = %d\n",n_dis,total);
	return 0;
}

