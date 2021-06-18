### Q1

**What is a process? What is a program? And what is the difference?**

**说明进程与程序的区别：**

- process is an execution instance of computer program that being excuted by threads with CPU and other resouces. It is the basic unit for operating system to allocating resources and scheduling.
- program is a collection of instrcutions that can be executed by a computer to perform a specific task.
- Difference:
  - process is temporal (dynamic), program is consistent (static)
  - process has a life cycle, program can be stored alone without operating system
  - process is the basic unit to allocate resouce and schedule, but program not.
  - process will consume CPU and other resouces, program will only consume storage resouces.

### Q2

**What is job? And what is the difference between process and job?**

**说明进程与作业的区别：**

- process is an execution instance of computer program that being excuted by threads with CPU and other resouces. It is the basic unit for operating system to allocating resources and scheduling.
- job is a unit of execution. A job may be identified a single process, which may in turn have subprocesses and perform the subtask that comprise the work of the job.
- Difference:
  A job may contain many process.

### Q3

**What are the differences between job scheduling and process scheduling?**

**说明作业调度与进程调度的区别：**

- job scheduling is to select jobs from external job backup queue and transfer the job to memory according to the certain principles, and allocate resources to them. At the same time, corresponding processes will be create, and enter the ready queue.
- process scheduling is to select a process from the ready queue according to certain strategy, and assign a processor to it dynamically.

### Q4

**How many statuses are in a job(in the code for this report—scheduler)? And what are they?**

**本次实验作业有几种状态(在本次报告的代码中-scheduler)？请列举，并分别解释几种状态**

From the code line 22-25, we can conclude that there are 3 statuses.

- READY: The job is ready to be executed.
- RUNNING: The job is running
- DONE: The job is finished.

### Q5

 **What programs for job control are used in this experiment? And their function?本实验作业控制命令处理程序包括哪些？它们分别实现什么功能？**

- do_enq (line 224): send a enqueue request to the scheduler and submit the job to operating system for running.
- do_deq(line 325): send a dequeue reuqest to the scheduler
- do_stat(line 386): sebd a stat request to the scheduler, and scheduler will output information about the currently running job and all jobs in the waiting queue.

### Q6

**What is used for inter-process communication in this experiment? And its function?**

**本实验采用什么进行进程之间的通信？它相当于什么作用？**

FIFO

- The scheduler will create a FIFO file
- The command program (enq,deq,stat) will write the command into the FIFO file in 'struct jobcmd' format
- The scheduler will read the command from FIFO file

### Q7

 **Run the job scheduler program, And analyze the execution of the submitted job:运行作业调度程序，分析提交作业后的作业的执行过程:**

Create a process, and set the status to ready and put it to the ready queue.

There are three life cycles during the execution of the submitted job: READY, RUNNING, DONE

The strategy of the sheduler is: job with highest priority runs first, if with same priority, the job waiting longest runs first, and the priority add 1 after waiting for 100ms, reset to initial priority after running. In every interval, the current priority and wait time will be updated.

When multiple jobs are in scheduling under the strategy, there will be a job switch. The current job status is from RUNNING to READY and the change job status is from READY to RUNNING.

### Q8

**Understand the process of job scheduling——Submit a new job (Execution results and corresponding code)：**

**Schedueler作业调度的过程理解——提交新作业 （分析执行结果及代码表现）：**

Create a process, and set the status to ready and put it to the ready queue.

- In "enq.c"(line 33-50): Check if the parameter is valid. It will prompt user if it is invalid
- In "enq.c"(line 52-63): Generate cmd message. The enq program will be executed.
- In "enq.c"(line 73-77): Send the command message through FIFO. It will prompt user if fail
- In "scheduler.c"(do_enq()): Instantiate the job, add the new job to the queue, and create child process to execute the job

### Q9

**Understand the process of job scheduling——End of job execution (Execution results and corresponding code)：** 

**Schedueler作业调度的过程理解——作业正常执行结束 （分析执行结果及代码表现）：**

Remove the job from the queue.

- When job is finished:
  - the scheduler will receive a signal, and it will set the job status to DONE
  - the scheduler will do job switch, and will remove the job if the status is DONE
- When job is dequeued:
  - In "deq.c"(line 25-29): check if the parameter is valid. It will prompt user if it is invalid
  - In "deq.c"(line 31-36): Generate cmd message. The deq program will be executed.
  - In "deq.c"(line 39-43): Send the command message through FIFO. It will prompt user if fail
  - In "scheduler.c"(do_deq()): If the target dequeued job is the current job, stop it and remove it;
       If the target dequeued job is a waiting job, remove it directly

### Q10

**Understand the process of job scheduling——job scheduling due to Priority(Execution results and corresponding code)：**

**Schedueler作业调度的过程理解——因为优先级和进行作业调度（分析执行结果及代码表现）：**

For every 100ms, the scheduler will add the priority of waiting jobs by 1 (<=3);

The code is in "scheduler.c"(updateall())


In the selection, scheduler will choose the job with highest priority job as the selected job. If there are more than one jobs with the same highest priority, the scheduler will choose the largest waitting_time job among them.

The code is in "scheduler.c"(jobselect())

### Q11

**Understand the process of job scheduling——Job scheduling due to time slice (Execution results and corresponding code)：**

**Schedueler作业调度的过程理解——因为时间片而进行作业调度（分析执行结果及代码表现）：**

For every 100ms, the scheduler will add the priority of waiting jobs by 1 (<=3);

The code is in "scheduler.c"(updateall()) 



In the selection, scheduler will choose the job with highest priority job as the selected job. If there are more than one jobs with the same highest priority, the scheduler will choose the largest waitting_time job among them.

The code is in "scheduler.c"(jobselect()) 