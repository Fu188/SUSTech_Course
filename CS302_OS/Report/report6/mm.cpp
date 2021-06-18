#include <bits/stdc++.h>
#include <unistd.h>

using namespace std;

#define PROCESS_NAME_LEN 32 //��������󳤶�
#define MIN_SLICE 10 //����Ƭ����С
#define DEFAULT_MEM_SIZE 1024  //���ڴ��С
#define DEFAULT_MEM_START 0  //�ڴ濪ʼ����ʱ����ʼ��ַ

int mem_size = DEFAULT_MEM_SIZE;
bool flag = 0; //���ڴ��Լ���������֮�󣬲�����������ڴ��С��flag
static int pid = 0;
int alg; // which alg we will use

struct free_block{	//�������ݿ�
	int size;
	int start_addr;
	struct free_block *next;
};

struct allocated_block{ //�ѷ�������ݿ�
	int pid;
	int size;
	int start_addr;
	int *data;
	struct allocated_block *next;
};

free_block *free_block_head; //�������ݿ���ָ��
allocated_block *allocated_block_head = NULL; //�������ָ��

allocated_block *find_process(int id); //Ѱ��pidΪid�ķ����
free_block *init_free_block(int mem_size); //���п��ʼ��
void display_menu(); //��ʾѡ��˵�
void set_mem_size(); //�����ڴ��С
int allocate_mem(allocated_block *ab); //Ϊ�ƶ�������ڴ�
void rearrange(); // �Կ�������·���
int create_new_process(); //�����µĽ���
int free_mem(allocated_block *ab); //�ͷŷ����
void swap(int *p, int *q); //������ַ
int dispose(allocated_block *ab); //�ͷŷ����ṹ��
void display_mem_usage(); //��ʾ�ڴ����
void kill_process(); //ɱ����Ӧ���̲��ͷ���ռ���ṹ��
void rearrangeBF();
void rearrangeWF();
void rearrangeFF();
void insert_allocate_block(allocated_block *block);
void remove_allocate_block(allocated_block *block);
void insert_free_block(free_block *&head, free_block *block);
void remove_free_block(free_block *&head, free_block *block);

//������
int main(){
	int op;
	pid = 0;
	free_block_head = init_free_block(mem_size); //��ʼ��һ������ʹ�õ��ڴ�飬���������ϵͳ���õ��ܴ洢�ռ�
	for(;;){
		sleep(1);
		display_menu();
		fflush(stdin);
		scanf("%d", &op);
		switch (op){
			case 1:{ set_mem_size(); break; }
			case 2:{
				printf("Choose an algorithm\n");
				printf("1: Best Fit\n 2: Worst Fit\n 3: First Fit\n 4: Buddy System\n");
				scanf("%d", &alg);
				break;
			}
			case 3:{ create_new_process(); break; }
			case 4:{ kill_process(); break; }
			case 5:{ display_mem_usage(); break; }
			case 233:{ puts("bye...."); sleep(1); return 0; }
			defaut: break;
		}
	}
}

allocated_block *find_process(int id){ //ѭ���������������Ѱ��pid=id�Ľ�������Ӧ�Ŀ�
	for (allocated_block *cur = allocated_block_head; cur!=NULL; cur = cur->next) {
		if (cur->pid == id) return cur;
	}
	return NULL;
}

free_block *init_free_block(int mem_size){ //��ʼ�����п飬�����mem_size��ʾ�������������ڴ��С
	free_block *p;
	p = (free_block *)malloc(sizeof(free_block));
	if (p == NULL){
		puts("No memory left");
		return NULL;
	}
	p->size = mem_size;
	p->start_addr = DEFAULT_MEM_START;
	p->next = NULL;
	return p;
}

void display_menu(){
	puts("\n\n******************menu*******************");
	printf("1) Set memory size (default = %d)\n", DEFAULT_MEM_SIZE);
	printf("2) Set memory allocation algorithm\n");
	printf("3) Create a new process\n");
	printf("4) Kill a process\n");
	printf("5) Display memory usage\n");
	printf("233) Exit\n");
}

void set_mem_size(){ //��������ڴ��С
	int mem_sz;
	scanf("%d",&mem_sz);
	if(flag == 0 && mem_sz > 0) {		// memory does not been allocated
		mem_size = mem_sz;
		free_block_head->size = mem_size;
	} else {
		printf("Operation is not allowed\n");
	}
	mem_size = mem_sz;
    free_block_head->size = mem_size;
    free_block_head->start_addr = DEFAULT_MEM_START;
    free_block_head->next = NULL;
    flag = true;	// Menu option 1 will not be executed more than once
}

void insert_allocate_block(allocated_block *block){
	if (allocated_block_head == NULL) {
		block->next = NULL;
		allocated_block_head = block;
	} else {
		allocated_block* cur = allocated_block_head;
		while(cur->next!= NULL){
        	cur = cur->next;
    	}
    	cur->next = block;
	}
}

void remove_allocate_block(allocated_block *block){
	if (allocated_block_head == block) {
		allocated_block_head = allocated_block_head->next;
	} else {
		allocated_block* cur = allocated_block_head;
		while(cur->next != NULL) {
			if(cur->next == block) {
				cur->next = block->next;
				break;
			}
		}
	}
	delete block;
}

void insert_free_block(free_block *&head, free_block *block){
	if (head == NULL){
		block->next = NULL;
		head = block;
	} else {
		free_block* cur = head;
		while(cur->next!=NULL) {
			cur = cur->next;
		}
		cur->next = block;
	}
}

void remove_free_block(free_block *&head, free_block *block){
	if (head == block) {
		head = head->next;
	} else {
		free_block *cur = head;
		while (cur->next != NULL) {
			if (cur->next == block) {
				cur->next = block->next;
				break;
			}
		}
	}
	delete block;
}

free_block *find_front_free_block(allocated_block *ab) {
	free_block *cur = free_block_head;
	while(cur!=NULL) {
		if (cur->start_addr + cur->size == ab->start_addr) {
			return cur;
		}
		cur = cur->next;
	}
	return NULL;
}

free_block *find_back_free_block(allocated_block *ab) {
	free_block *cur = free_block_head;
	while(cur!=NULL) {
		if (cur->start_addr == ab->start_addr + ab->size) {
			return cur;
		}
		cur = cur->next;
	}
	return NULL;
}

int allocate_mem(allocated_block *ab){ //Ϊ������ڴ棬�����Ĳ���ϵͳ������������û��Ȳ��� 
	switch(alg){
        case 1: {rearrangeBF(); break;}
        case 2: {rearrangeWF(); break;}
        case 3: {rearrangeFF(); break;}
        default: rearrangeBF();
    }
    free_block* cur = free_block_head;
    free_block* pre = nullptr;
    while(cur!=NULL) {
    	if (cur->size >= ab->size) {
    		break;
		}
		pre = cur;
		cur = cur->next;
	}
	if (cur==NULL) return -1;
	
	ab->start_addr = cur->start_addr;
	if (cur->size == ab->size) {
		remove_free_block(free_block_head, cur);
	} else {
		cur->size -= ab->size;
		cur->start_addr += ab->size;
	}
	
	insert_allocate_block(ab);
	return 1;
}

int create_new_process(){ //�����½���
	int mem_sz = 0;
	printf("Please input memory size\n");
    scanf("%d", &mem_sz);
    // Write your code here
    
    if (free_block_head == NULL || mem_sz <=0 || mem_sz>mem_size) {
    	printf("Operation is not allowed\n");
    	return -1;
	}
	
    auto *new_block = (allocated_block*)malloc(sizeof(allocated_block));
    
    new_block->pid = ++pid;
    new_block->size = mem_sz;
    new_block->start_addr = 0;
    new_block->data = NULL;
    new_block->next = NULL;
    
    int status = allocate_mem(new_block);
    if (status < 0) {
    	free(new_block);
    	printf("Opration is not allowed\n");
    	return -1;
	}
	return 1;
}

void swap(int *p, int *q){
	int tmp = *p;
	*p = *q;
	*q = tmp;
	return;
}

void rearrangeBF(){ //���鰴���ڴ��С��������
	free_block *tmp, *tmpx;
	puts("Rearrange begins...");
	puts("Rearrange by address...");
	tmp = free_block_head;
	while(tmp != NULL){
		tmpx = tmp->next;
		while (tmpx != NULL){
			if (tmpx->size < tmp->size){
				swap(&tmp->start_addr, &tmpx->start_addr);
				swap(&tmp->size, &tmpx->size);
			}
			tmpx = tmpx->next;
		}
		tmp = tmp->next;
	}
	usleep(500);
	puts("Rearrange Done.");
}

void rearrangeWF(){ //���鰴���ڴ��С��������
	free_block *tmp, *tmpx;
	puts("Rearrange begins...");
	puts("Rearrange by address...");
	tmp = free_block_head;
	while(tmp != NULL){
		tmpx = tmp->next;
		while (tmpx != NULL){
			if (tmpx->size > tmp->size){
				swap(&tmp->start_addr, &tmpx->start_addr);
				swap(&tmp->size, &tmpx->size);
			}
			tmpx = tmpx->next;
		}
		tmp = tmp->next;
	}
	usleep(500);
	puts("Rearrange Done.");
}

void rearrangeFF(){ //���鰴���ڴ��С��������
	free_block *tmp, *tmpx;
	puts("Rearrange begins...");
	puts("Rearrange by address...");
	tmp = free_block_head;
	while(tmp != NULL){
		tmpx = tmp->next;
		while (tmpx != NULL){
			if (tmpx->start_addr < tmp->start_addr){
				swap(&tmp->start_addr, &tmpx->start_addr);
				swap(&tmp->size, &tmpx->size);
			}
			tmpx = tmpx->next;
		}
		tmp = tmp->next;
	}
	usleep(500);
	puts("Rearrange Done.");
}

int free_mem(allocated_block *ab){ //�ͷ�ĳһ����ڴ�
	free_block *front = find_front_free_block(ab);
	free_block *back = find_back_free_block(ab);
	if (front != NULL && back!=NULL) {
		front->size += ab->size;
		front->size += back->size;
		remove_free_block(free_block_head, back);
		return 1;
	}
	
	if (front != NULL && back==NULL) {
		front->size += ab->size;
		return 1;
	}
	
	if (front == NULL && back!=NULL) {
		back->start_addr = ab->start_addr;
		back->size += ab->size;
		return 1;
	}
	
	if (front == NULL && back==NULL) {
		auto* new_free_block = (free_block*)malloc(sizeof(free_block));
		new_free_block->size = ab->size;
		new_free_block->start_addr = ab->start_addr;
		new_free_block->next = NULL;
		insert_free_block(free_block_head, new_free_block);
		return 1;
	}
}

int dispose(allocated_block *fab){ //�ͷŽṹ����ռ���ڴ�
	allocated_block *pre, *ab;
	if (fab == allocated_block_head){
		allocated_block_head = allocated_block_head->next;
		free(fab);
		return 1;
	}
	pre = allocated_block_head;
	ab = allocated_block_head->next;
	while (ab != fab){ pre = ab; ab = ab->next;}
	pre->next = ab->next;
	free(ab);
	return 2;
}

void display_mem_usage(){
	free_block *fb = free_block_head;
	allocated_block *ab = allocated_block_head;
	puts("*********************Free Memory*********************");
	printf("%20s %20s\n", "start_addr", "size");
	int cnt = 0;
	while (fb != NULL){
		cnt++;
		printf("%20d %20d\n", fb->start_addr, fb->size);
		fb = fb->next;
	}
	if (!cnt) puts("No Free Memory");
	else printf("Totaly %d free blocks\n", cnt);
	puts("");
	puts("*******************Used Memory*********************");
	printf("%10s %10s %20s\n", "PID", "start_addr", "size");
	cnt = 0;
	while (ab != NULL){
		cnt++;
		printf("%10d %10d %20d\n", ab->pid, ab->start_addr, ab->size);
		ab = ab->next;
	}
	if (!cnt) puts("No allocated block");
	else printf("Totaly %d allocated blocks\n", cnt);
	return;
}

void kill_process(){ //ɱ��ĳ������
	allocated_block *ab;
	int pid;
	puts("Please input the pid of Killed process");
	scanf("%d", &pid);
	ab = find_process(pid);
	if (ab != NULL){
		free_mem(ab);
		dispose(ab);
	} else {
		printf("The is no process with pid = %d\n", pid);
	}
}



