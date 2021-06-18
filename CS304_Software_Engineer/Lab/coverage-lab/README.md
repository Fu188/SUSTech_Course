### Name: Weibao Fu

### SID: 11812202

### answer

Coverage: 84%

1. For each test, answer the following questions: 1. Which line will this test cover? 2. Rename each test to the line where each test cover

    - Test0: Line 2,4,6,8,9,16,19             
      Rename: testL2a4a6a8a9a16a19()
    
    - Test1: Line 2,4,6,8,9,16,19             
      Rename: testL2a4a6a8a9a16a19_1()
    
    - Test2: Line 2,4,6,7,16,19               
      Rename: testL2a4a6a7a16a19()
    
    - Test2: Line 2,4,6,8,10,14,16,19      
      Rename: testL2a4a6a8a10a14a16a19()
    
    - Test2: Line 2,4,6,16                    
      Rename: testL2a4a6a16()

2. Could Evosuite achieve 100% line coverage?

    - In some simple applications, it might happen
    
    - It might never happen in some complex applications
    
3. For each uncovered block of code, explain why the tool cannot cover.

    - Line 11 is not covered since no test inputs "cs"
    
    - Line 17 is not covered since `!name.equals(name)` will never be true
    
4. Write more tests to increase the code coverage.

    There is no way since the length of "cs" is 2, which is smaller than 4, and it will jump to the first branch. And `!name.equals(name)` will never be true
