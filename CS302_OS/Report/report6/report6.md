## Q1

**What is Uniprogramming, What is the shortcoming of Uniprogramming:**

- Besides OS, there is only one program in the memory at a time.
- Shortcoming:
  - Not efficient: if we need to run multiple programs, repeated read and write memory is required, which leads to high overhead of context switching.
  - Not powerful: we cannot run multiple programs at the same time. 



## Q2

**What is Multiprogramming, What is the shortcoming of Multiprogramming:**

- Memory is allocated to several blocks, which allows multiple programs using memory in different blocks at the same time.
- Shortcoming:
  - OS will be more complex since we need to consider many problems such as isolated memory and translation.
  - For fixed-sized partition, we need to consider internal fragmentation
  - For dynamic partition, we need to consider the additional overhead, internal and external fragmentation. 

## Q3

**What is the segmentation mechanism and its advantages & disadvantages:**

- Segmentation Mechanism:
  - a memory-management mechanism that divides memory into segmentation of varying lengths
  - maps the virtual address space in each segment to the physical address space
- Advantages:
  - make data more logical, easy to share
  - make data easy to protect
  - reduce fragmentation
- Disadvantages:
  - more complicated, segment size is not fixed
  - more overhead, one process need allocating memory many times
  - fragmentation is smaller but still a problem

## Q4

**What is the paging mechanism and its advantages & disadvantages:**

- Paging Mechanism:
  - a memory-management mechanism that divides memory into many frames of the same size
  - processes are divided into pages of the same size as frames
  - maps the virtual address space to the physical address space by maintaining a page table
- Advantages:
  - simple to implement
  - reduce the external fragmentation
  - better utilization
  - demand paging technique
- Disadvantages:
  - requires extra memory space
  - internal fragmentation problem
  - need more time to access memory

## Q5

**How to reduce the occurrence of internal fragmentation when allocating memory? Briefly explain why this method works.**

- For segmentation, dynamic segmentation is better than fixed-sized segmentation. Since we can allocate memory according to the requirement, it reduce internal fragmentation
- For paging, we can decrease the size of page. Since we divide memory into many frames of the same size and processes are divided into pages of the same size as frames, the internal fragmentation will appear only at the last page. So if we decrease the size of page, the internal fragmentation will occur less.

## Q6

**How to reduce the occurrence of external fragmentation when allocating memory? Briefly explain why this method works.**

- For segmentation, dynamic segmentation will work. Since dynamic segmentation will rearranges all allocated blocks to make them compact, thus cleaning the external fragmentation.
- For paging, there is no external fragmentation. Since each page will be allocated to process, thus no external fragmentation.