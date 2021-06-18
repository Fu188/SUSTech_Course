## Q1

What is deadlock?

If any process in a system is waiting for resources occupied by other processes, which leads to the entire group of processes cannot be executed, then the system is said to be in a deadlock.

## Q2

What are the requirements of deadlock?

- Mutual exclusion: Only one thread at a time can use a resource
- Hold and wait: Thread holding at least one resource is waiting to acquire additional resources held by other threads
- No preemption: Resources are released only voluntarily by the thread holding the resource, after thread is finished with it
- Circular wait: Each process are waiting for a resource which is being held by other processes

## Q3

What’s difference between deadlock prevention and deadlock avoidance?

- Deadlock prevention: By breaking one of the requirement of deadlock to prevent deadlock occurring.
- Deadlock avoidance: By checking whether resources will lead to deadlock and refuse resources which will lead to deadlock
  - If starting a process will cause a deadlock, then the process will not start
  - If adding a requested resource will cause a deadlock, this allocation will not be allowed

## Q4

How to prevent deadlock? Give at least two examples.

- Allow preemption: Set the priority of process at the beginning, and process with higher priority can grab the resource from the process with lower priority
- Regulate the longest time of holding resource: We can kill one process if this process holding the resource too long, which break the rule **Hold and Wait**
- Concurrently Access: Allow shared resources such as read-only files can be accessed concurrently, which break the rule **Mutual Exclusion**

## Q5

Which way does recent UNIX OS choose to deal with deadlock problem, why?

Using Ostrich Strategy (鸵鸟算法):

- the probability of deadlock is very low
- the overhead of dealing with deadlock is expensive
- will not have much impact on user when deadlock occurs

## Q6

What data structures you use in your implementation（of Banker's algorithm）? Where and why you use them? Are they optimal for your purpose?

- **vector<int>**
  - `max_remain`: store the max_remain (input, will not change). Since the length is defined by user, it is optimal to use structure vector.
  - `remain`: store the remain (initialize by input) and represent the current available resources. Since the length is defined by user, it is optimal to use structure vector.
  - `read_vector`: store the data we read. Since the size of the data we read is always `n`, it is convenient for us to use vector.
- **map<string, vector<int> >**
  - `mp_max`: record the maximum quantity of each resource. This structure can help us find the maximum quantity by their pid (name).
  - `mp_allo`: record the current allocation of each resource. This structure can help us find the current allocation of each resource by their pid (name).
- **set<string>**
  - `not alive`: record the list of process been moved. Since we can get whether an item is in the set easily, this structure is indeed efficient.