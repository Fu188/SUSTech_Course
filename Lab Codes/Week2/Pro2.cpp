#include<stdio.h>

int main(){
	printf("Range of char = %d to %d\n",-2<<(sizeof(char)*8-2),(2<<(sizeof(char)*8-2))-1);
	printf("Range of unsigned char = %d to %d\n",0,(2<<(sizeof(unsigned char)*8-1))-1);
    printf("Range of short = %d to %d\n",-2<<(sizeof(short)*8-2),(2<<(sizeof(short)*8-2))-1);
    printf("Range of unsigned short = %d to %d\n",0,(2<<(sizeof(unsigned short)*8-1))-1);
    printf("Range of int = %d to %d\n",-2<<(sizeof(int)*8-2),(2<<(sizeof(int)*8-2))-1);
    printf("Range of unsigned int = %d to %lld\n",0,(2<<(sizeof(unsigned int)*8-1))-1);
    printf("Range of long = %lld to %u\n",-(long long)2<<(sizeof(long)*8-2),(2<<(sizeof(long)*8-2))-1);
    printf("Range of unsigned long = %u to %u\n",0,((unsigned long)2<<(sizeof(unsigned long)*8-1))-1);
    printf("Range of long long = %lld to %lld\n",-(long long)2<<(sizeof(long long)*8-2),((long long)2<<(sizeof(long long)*8-2))-1);
    printf("Range of unsigned long long = %u to %llu\n",0,((unsigned long long)2<<(sizeof(unsigned long long)*8-1))-1);
}
