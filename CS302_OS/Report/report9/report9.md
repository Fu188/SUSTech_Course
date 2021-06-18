## Q1

**Consider a really simple filesystem, cs302fs, where each inode only has 10 direct pointers, each of which can point to a single file block. Direct pointers are 32 bits in size (4 bytes). What is the maximum file size for cs302fs?( Assume, for all of the questions in this part, that filesystem blocks are 4 KBytes. )**

- Since cs302fs has 10 direct pointers, and each point to a 4KBytes block, such that cs302fs's maximum file size is 10*4KBytes = 40KBytes.

## Q2

**Consider a filesystem, called extcs302fs, with a construct called an extent. Extents have a pointer (base address) and a length (in blocks). Assume the length field is 8 bits (1 byte). Assuming that an inode has exactly one extent. What is the maximum file size for extcs302fs? ( Assume, for all of the questions in this part, that filesystem blocks are 4 KBytes. )**

- Since the length field is 8 bits, it can represent 2^8-1 = 255 blocks. Then the maximum file size is 255*4KBytes = 1020KBytes.

## Q3

**Consider a filesystem that uses direct pointers, but also adds indirect pointers and double-indirect pointers. We call this filesystem, indcs302fs. Specifically, an inode within indcs302fs has 1 direct pointer, l indirect pointer, and 1 doubly-indirect pointer field. Pointers, as before, are 4 bytes (32 bits) in size. What is the maximum file size for indcs302fs? ( Assume, for all of the questions in this part, that filesystem blocks are 4 KBytes. )**

- Indirect pointer represents (4KBytes/4Bytes) = 2^10 blocks
- Doubly-indirect pointer represents (4KBytes/4Bytes)^2 = 2^20 blocks
- Then the maximum file size is 4KBytes * (1+2^10 + 2^20) = 4GBytes + 4MBytes + 4KBytes