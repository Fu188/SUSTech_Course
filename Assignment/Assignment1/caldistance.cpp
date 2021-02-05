#include<stdio.h>
#include<Math.h>
#include<cstring>
using namespace std;

const int R = 6371;
#define PiDiv (0.017453292519943296) //¦Ð/180
#define DegToRad(x) ((x)*PiDiv) // transfer Degree to Radian

int main(){
	char city1[100] , city2[100] , temp[1000];
	double lati1 , lati2 , longi1 , longi2;
	bool state;
	int tem; 
	do{
		state = false;
		printf("The first city:");
	    scanf("\n");
		gets(city1);
		tem=strlen(city1)-1;
		while(city1[tem--]==' ');
		city1[tem+2]='\0';
		for(int i=0;i<strlen(city1);i++){
			if(strlen(city1)>=30||!((city1[i]!=64&&city1[i]>=32&&city1[i]<=90)||(city1[i]>=97&&city1[i]<=122)||city1[i]==','||city1[i]==' ')){
				printf("The name's format is incorrect.\n");
				state=true;
				break;
			}
	    }
	}while(state);
	do{
		state = false;
		printf("The latitude and longitude of first city:");
		if(!scanf("%lf%lf", &lati1 , &longi1)||lati1<-90||lati1>90||longi1<-180||longi1>180){
			printf("The value of latitude and longitude are incorrect.\n");
			state = true;
			gets(temp);
			continue;
    	}
		gets(temp);
		for(int i=0;i<strlen(temp);i++){
		    if(temp[i]!=' '){
		    	printf("The value of latitude and longitude are incorrect.\n");
			    state = true;
			    break;
			}
	    } 
	}while(state);
	do{
		state = false;
		printf("The second city:");
	    scanf("\n");
		gets(city2);
		tem=strlen(city2)-1;
		while(city2[tem--]==' ');
		city2[tem+2]='\0';
		for(int i=0;i<strlen(city2);i++){
			if(strlen(city2)>=30||!((city2[i]!=64&&city2[i]>=32&&city2[i]<=90)||(city2[i]>=97&&city2[i]<=122)||city2[i]==','||city2[i]==' ')){
				printf("The name's format is incorrect.\n");
				state=true;
				break;
			}
	    }
	}while(state);
	do{
		state = false;
		printf("The latitude and longitude of second city:");
		if(!scanf("%lf%lf", &lati2 , &longi2)||lati2<-90||lati2>90||longi2<-180||longi2>180){
			printf("The value of latitude and longitude are incorrect.\n");
			state = true;
			gets(temp);
			continue;
    	}
    	gets(temp);
		for(int i=0;i<strlen(temp);i++){
		    if(temp[i]!=' '){
		    	printf("The value of latitude and longitude are incorrect.\n");
			    state = true;
			    break;
			}
	    }    
	}while(state);
	
	double phi1 = DegToRad(90 - lati1);
	double phi2 = DegToRad(90 - lati2);
	double theta = DegToRad(longi1-longi2);
	double c = sin(phi1)*sin(phi2)*cos(theta)+cos(phi1)*cos(phi2);
	double d = R*acos(c);
	printf("The distance between %s and %s is %.1f km.\n",city1,city2,d);
	return 0;
} 
