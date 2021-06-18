#include"init.h"

void *reader(int *buffer){
    // Reader should read the value of buffer
    // Reader cannot start to work when there is any writer working
    // You should implement this using semaphore
    sem_wait(&rc);
    if (readcount==0){
        sem_wait(&db);
    }
    readcount++;
    sem_post(&rc);

    // You should output this just after this thread gets semaphore
    printf("Reader gets sem\n");

    sleep(0.01);

    // you should output this just before this thread releases the semaphore
    printf("Reader reads %d and releases\n", *buffer); 

    sem_wait(&rc);
    if(readcount==1){
        sem_post(&db);
    }
    readcount--;
    sem_post(&rc);

}

