## Q1

**Briefly describe the FIFO page-replacement algorithm and analyze its algorithm complexity**

- Hit: return the page in the cache
- Miss: 
  - If the cache is full, the earliest page put in the cache will be removed, and the current page will be put into the cache.
  - If the cache is not full, the current page will be simply put in the cache
- Algorithm complexity (n: the number of pages, k: the cache size)
  - Time: O(1) for each page to update, so totally O(n).
  - Space: O(k) to keep the cache of page.

## Q2

**Briefly describe the MIN page-replacement algorithm and analyze its algorithm complexity**

- Hit: return the page in the cache
- Miss:
  - If the cache is full, the page which will be used after the longest time will be removed, and the current page will be put into the cache.
  - If the cache is not full, the current page will be simply put in the cache.
- Algorithm complexity (n: the number of pages, k: the cache size)
  - Time: O(logn) for each page to update (using priority queue), so totally O(nlogn).
  - Space: O(n) to keep all pages.

## Q3

**Briefly describe the LRU page-replacement algorithm and analyze its algorithm complexity**

- Hit: return the page in the cache, and move the hit page to the top of the cache
- Miss:
  - If the cache is full, the page which is used earliest in the cache (the most bottom page) will be removed, and the current page will be put into the cache.
  - If the cache is not full, the current page will be put to the top of the cache.
- Algorithm complexity (n: the number of pages, k: the cache size)
  - Time: O(1) for each page to update (using list), so totally O(n)
  - Space: O(k) to keep the cache of page.

## Q4

**Briefly describe the clock algorithm and analyze its algorithm complexity**

- Treat the list as circular linked list, and a pointer to iterate this circular list

- Hit: return the page in the cache, and set the valid bit of this page as 1
- Miss: 
  - If the page the pointer point to has the valid bit 1, then set the valid bit into 0. Then set the pointer point to the next page and do the same things until the page which the pointer point to has the valid bit of 0.
  - If the page the pointer point to has the valid bit 0, then put the page here, and set the valid bit as 1.
- Algorithm complexity (n: the number of pages, k: the cache size)
  - Time: O(k) for each page to check, so totally O(nk)
  - Space: O(k) to keep the cache of page.

## Q5

1.in: FIFO: **11.98** % MIN: **42.40** % LRU: **11.76** % CLOCK: **11.93** %

2.in: FIFO: **11.85** %  MIN:  **43.27**% LRU: **11.85** % CLOCK: **11.83** %

3.in: FIFO: **82.36** %  MIN: **88.58** % LRU: **82.39** % CLOCK: **82.38** % 