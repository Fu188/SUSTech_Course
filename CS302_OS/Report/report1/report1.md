### Q1

**run"mkdir ~/studentID" （replacing studentID with your own ID）**

**Answer the function and parameter meaning:**

mkdir： 创建文件夹

mkdir \~/11812202：在~/的目录下创建一个名为11812202的文件夹

### Q2

**run"ls –la ~ "**  

**Answer the function and parameter meaning:**

ls: 显示目标列表

-l：以长格式显示目录下的内容列表。

-a：显示所有档案及目录，包括目录名称为“.”的。

-la：以长格式显示所有档案及目录，包括目录名称为“.”的

### Q3

**run" cd ~/studentID " （replacing studentID with your own ID）**

cd 进入到某目录

进入到~/11812202的目录下

### Q4

**run"  man grep  " （replacing studentID with your own ID）** 
**Answer the function and parameter meaning:**

man：查看Linux的帮助指令

man grep：查看grep的帮助指令

### Q5

**run"  mv ~/studentID /home  "and" ls /home " （replacing studentID with your own ID）** 
**Answer the function and parameter meaning:** 

mv：将文件或文件夹移动到其他地方

mv ~/11812202 /home：将根目录下的文件夹11812202转移到/home下

### Q6

**run"  rm -r /home/studentID   "（replacing studentID with your own ID）**

**Answer the function and parameter meaning:** 

rm：删除文件或文件夹

-r：删除文件夹的参数

rm -r /home/11812202：删除目录/home下的11812202文件夹

### Q7

**run"   cp /etc/apt/sources.list /etc/apt/sources.list.bak   "（replacing studentID with your own ID）**

**Answer the function and parameter meaning:**

cp：复制一个文件或文件夹

复制目录/etc/apt下的sources.list文件并粘贴在目录 /etc/apt下，命名为sources.list.bak

### Q8

**run"  cat /etc/shells  "（replacing studentID with your own ID）**
**Answer the function and parameter meaning:**

cat：concatenate files and then print.

展示目录/etc/shells下的文件/文件夹

### Q9

**run"  cat /etc/shells | grep bash  "（replacing studentID with your own ID）**
**Answer the function and parameter meaning:** 

cat：concatenate files and then print.

|： a pipe that treating the output of one command as the input of another command.

grep：print the item which matching the patterns

展示目录/etc/shells下的文件/文件夹 ，将结果通过管道，筛选出名称中含有“bash”的文件/文件夹

### Q10

**Open two terminals, find their PIDs by ps and kill one of them**

**Answer the function and parameter meaning:**  

ps displays information about a selection of the active processes

### Q11

**Compile and Execute: write following opt.c and check the assembly language under –o0 –o1**

```c
int main(){
	int x = 0;
    x += 1;
    x += 1;
    x += 1;
    printf("%d\n",x);
    return 0;
}
```

**Answer**

**1）the source code:**

**2）command：**

**3）result：**

**4）difference:**

1) 

\#include
int main(){
    int x = 0;
    x += 1;
    x += 1;
    x += 1;
    printf("%d\n",x);
    return 0;
}

(2) gcc -S opt.c -O0 -o opt.s
   gcc -S opt.c -O1 -o opt.s

(3) 分别生成了对应的汇编代码

(4) 第一个命令是不加优化器的，生成的汇编语言中有三段连续的 addl $1, -4(%rbp)

第二个命令是加了优化器的，生成的汇编语言中优化成了一段（see the attachment for more details）

