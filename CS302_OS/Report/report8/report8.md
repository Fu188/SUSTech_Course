## Q1

1. I/O control methods can be classified as (1)_________(2)__________.
2. Each physical record on the disk has a unique address that consists of three parts: (1)______________(2)_______________(3)________________.
3. Data READ/WRITE time = (1)_____________ + (2) ____________ +(3)____________.
4. The metric for measuring I/O performance are (1)__________,(2)___________.

1. Programmed, DMA
2. Head identifier, Track identifier, Sector identifier
3. Seek time, Rotational latency, Transfer time
4. Latency (Response time), Bandwidth (Throughput)

## Q2

**What are the work steps of the DMA controller? Please answer it and briefly describe the process of each step**

Overview: Give controller access to memory bus and ask it to transfer data blocks to/from memory directly.

Work Steps:

- CPU tells device driver to transfer disk data to buffer at address X.
- Device driver tells disk controller to transfer C bytes from disk to buffer at address X.
- Disk controller initiates DMA transfer
- Disk controller sends each byte to DMA controller
- DMA controller transfers bytes to buffer X, increasing memory address and decreasing C until C=0
- When C=0, DMA interrupts CPU to signal transfer completion

## Q3

**Under what circumstance, the SSTF algorithm will cause starvation?**

If there is a sector far from the head, and sectors near the head is visiting continuously, then the further sector will not be visited, which will cause starvation.

## Q4

**Suppose the computer system uses the disk as the following:**

Let a single-sided disk rotation speed be 12000r/min, each track has 100 sectors, 200 tracks in total, and the average movement time between adjacent tracks is 1 ms.

If at some point, the head is located at track 100 and moves in the direction in which the track number increases, the track number request queue is 70, 90, 30, 120, 20, 60. For each track in the request queue, a randomly distributed sector is read.

a) If the C-SCAN algorithm is used to read the six sectors,

​    (1) Write the track access sequence (5 points)

​    (2) How much time is required in total? The calculation process is required. (15 points).

b) If using SSD, which scheduling algorithm do you think should be used, and explain   why? (10 points)

a)

- If we use C-SCAN algorithm, then the track sequence is 100, 120, 199, 0, 20, 30, 60, 70, 90

- Seek time = (120-100) + (199-120) + (199-0) + (20-0) + (30-20) + (60-30) + (70-60) + (90-70) = 388ms

  The rotation needed is 3, and the latency of each rotation is 60 * 1000 / 12000 = 5ms

  Rotational Latency = 3*5ms = 15ms

  Total time = Seek time + Rotational Latency = 403ms

b) If we use SSD, there is no rotational latency and the seek time is low enough that we can ignore it. In this case, we can use FCFS since we can read/write data ASAP. By the way, the algorithm is very simple and effient.