## Q1

Describe Function(功能) of  **pthread_create**：

- Usage: Create a new thread in the process of  calling this function.

- Parameters:

  - `*thread`: a pointer to the identifier
  - `*attr`: set the thread attributes
  - `*start_routine`:  the starting address of the running function
  - `*arg`: the parameter of the running function

- Prototype:

  ```C
  int pthread_create(pthread_t *thread, const pthread_attr_t *attr,
                  void *(*start_routine) (void *), void *arg);
  ```

## Q2

Describe Function(功能) of **pthread_join:**

- Usage: Wait for the end of a thread, which is usually used by the main thread for all created threads to avoid the main thread exiting before other threads.

- Parameters:

  - `thread`: thread identifier, used to identify the waiting thread
  - `retval`: pointer defined by user, used to store the returned value of the thread

- Prototype:

  ```C
  int pthread_join(pthread_t thread, void **retval);
  ```

## Q3

Describe Function(功能) of **pthread_mutex_lock:**

- Usage: Lock incoming mutex. If the mutex is already locked, the called thread will block until the mutex is available. If the mutex is not locked, the mutex is locked directly.

- Parameters:

  - `*mutex`: the pointer to the mutex to be locked

- Prototype:

  ```C
  int pthread_mutex_lock(pthread_mutex_t *mutex);
  ```

## Q4

Describe Function(功能) of **pthread_cond_wait:**

- Usage: Block the current thread and wait for other thread wake up. This function can block on a condition variable. 

- Parameters:

  - `*cond`: a pointer to a condition variable
  - `*mutex`: a pointer to a mutex

- Prototype:

  ```C
  int pthread_cond_wait(pthread_cond_t *restrict cond, pthread_mutex_t *restrict mutex);
  ```

## Q5

Describe Function(功能) of **pthread_cond_signal:**

- Usage: Signal a thread that is in a blocked state, and enable the thread to be unblocking state. Can be used with condition variable.

- Parameters:

  - `*cond`: a pointer to a condition variable
  - `*mutex`: a pointer to a mutex

- Prototype:

  ```c
  int pthread_cond_signal(pthread_cond_t *cond);
  ```

## Q6

Describe Function(功能) of **pthread_mutex_unlock:**

- Usage: Unlock incoming mutex. If there are threads blocked on the mutex and this function is called, then the mutex will be available, and the scheduler will determine which thread can acquire the mutex.

- Parameters:

  - `*mutex`: the pointer to the mutex to be unlocked

- Prototype:

  ```C
  int pthread_mutex_unlock(pthread_mutex_t *mutex);
  ```

## Q7

Describe Function(功能) of **sem_open**:

- Usage: Create and initialize a sema or to open an existing sema.

- Parameters:

  - `*name`: the name of the sema
  - `oflag`: the flag for selecting to open or create the sema
  - `mode`: the permission
  - `value`: the initial value of the sema

- Prototype:

  ```C
  sem_t *sem_open(const char *name, int oflag);
  sem_t *sem_open(const char *name, int oflag, mode_t mode, unsigned int value);
  ```

## Q8

Describe Function(功能) of **sem_wait** :

- Usage: Try to decrease the sema vaue by 1. If this value is greater than 0, it will executed directly. If the value is equal or less than zero, it will be blocked until the value is changed to greater than 0 by other threads.

- Parameters:

  - `*sem`: the pointer to the sema

- Prototype:

  ```C
  int sem_wait(sem_t *sem);
  ```

## Q9

Describe Function(功能) of **sem_post**:

- Usage: Try to increase the sema value by 1. If the sema value consequently becomes greater than 0, then another process or thread blocked in a `sem_wait()` will be woken up.

- Parameters:

  - `*sem`: the pointer to the sema

- Prototype:

  ```C
  int sem_post(sem_t *sem);
  ```

## Q10

Describe Function(功能) of **sem_close** ：

- Usage: Close a named semaphore referred to by sem

- Parameters:

  - `*sem`: the pointer to the sema

- Prototype:

  ```C
  int sem_close(sem_t *sem);
  ```

## Q11

Producer-Consumer Problem（understand producer_consumer.c）: Are the data that consumers read from the buffer are produced by the same producer?

Yes. According to the code, there is only one producer. But if there are multiple producers, the data that one consumer reads may come from multiple producers.

## Q12

Producer-Consumer Problem（understand producer_consumer.c）: What is the order of the consumer's read operations and the producer's write operations, and their relationship

- If the buffer is empty, the consumer will wait for the producer to produce data
- If the buffer is full, the producer will wait for the consumer to consume data
- Otherwise, the order is uncertain since it is preemptive

## Q13

Producer-Consumer Problem（understand producer_consumer.c）: Briefly describe the result of the program

- First, we claim a producer and a consumer, and they are guaranteed they cannot do operation on buffer at the same time by mutex
- Producer will wait when the buffer is full, while consumer will wait when the buffer is empty.
- Producer will produce a letter from `A` to `Z` to the buffer in the producing process. Consumer will consume a letter from the buffer in the consuming process.
- Output format:
  - Produce: `[ ]<---| A | L |   |   |   |   |   |   |   |<---[L]`
  - Consume: `[A]<---| L |   |   |   |   |   |   |   |   |<---[ ]`

## Q14

Producer-Consumer Problem（understand producer_consumer.c）: What queue is used in this program, and its characteristics?

It's a ring queue (buffer), and its characteristics:

- the head is connected to the tail
- FIFO
- push or pop an element in `O(1)`

## Q15

Producer-Consumer Problem（understand producer_consumer.c）: Briefly describe the mutual exclusion mechanism of this program

There are two mutual executions, `producer` and `consumer`, and they will try to acquire the mutex lock before they do operation on buffer, which guarantee there is only one object do operation on buffer.

`Producer`:

- If the buffer is full, the producer will block the current thread and wait for consumer waking up 
- If the buffer is empty, the producer will wake up the current thread and continue producing data
- otherwise, it will push a random letter into the buffer and print the info

`Consumer`:

- If the buffer is empty, the consumer will block the current thread and wait for producer waking up
- If the buffer is full, the consumer will wake up the current thread and continue consuming data
- otherwise, it will pop a letter from the head of the queue (buffer), and print the info