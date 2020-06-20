<font face="Arial" color=black size=5>**CS307 Database Project Report**</font>

<HR style="FILTER: progid:DXImageTransform.Microsoft.Glow(color=#987cb9,strength=10)" width="80%" color=#987cb9 SIZE=1>

##### Name: 傅伟堡(Weibao Fu)

##### SID:11812202

<HR style="FILTER: progid:DXImageTransform.Microsoft.Glow(color=#987cb9,strength=10)" width="80%" color=#987cb9 SIZE=1></HR>
### 1. Title

<font face="Arial" size=4>How do DBMS makes it easier for us to manage data?</font>


### 2. Introduction

<font face="Arial" size=3>We are living in an era of data explosion, with so much data that we need to pay more attention to the management of data. Also, many scientists are constantly looking for ways to manage data more efficiently. Currently, we usually use database management system to manage our data, which makes it very convenient and fast for us to manage data. However, it is not enough just to be able to use database management system, we also need to know how DBMS is convenient for us. So in this project, I will from the data loading, storage, query speed, insert speed, user privileges management, index and other aspects to explain how do DBMS makes it easier for us to manage data.</font>

### 3. Experimental Design

#### 3.1 Experimental data and envrionments

##### 3.1.1 Data

###### Introduction

<font face="Arial" size=3>Douban movie is a Chinese website which allows users to share their comments and views. Users can also give them marks. This dataset collects more than 2 million comments of 28 movies in Douban Movie website. We use this dataset during our project.</font>

###### Description

<font face="Arial" size=3>In the original dataset, it contains a lot of columns. The content and description of each column is as follow:</font>

| Column Name   | Description of Column                      |
| :------------ | :----------------------------------------- |
| ID            | The ID of the comment                      |
| Movie_Name_EN | The English name of the movie              |
| Movie_Name_CN | The Chinese name of the movie              |
| Crawl_Date    | The date that the data are crawled         |
| Number        | The number of the comment                  |
| Username      | The username of the account                |
| Date          | The date that the comment posted           |
| Star          | The star that user give to the movie (0-5) |
| Comment       | The content of the comment                 |
| Like          | The count of 'like' on the comment         |

###### Data Organization

<font face="Arial" size=3>Through my analysis, I can conclude that the column have the following relationship:<br><Comment Table\> Movie, User, Date, Star, Like are related to the comment.<br><User Table\>  Comment is related to the user.<br><Movie Table\> Movie_Name_EN, Movie_Name_CN, Crawl_Date, Comment are realated to the movie.<br>Here I give ER graph to show my data organization:</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200316224633817.png" alt="image-20200316224633817" style="zoom:200%;" />

<font face="Arial" size=3>We use the following clause to create each table.</font>

```sqlite
create table movie(
    movie_id serial primary key,
    movie_name_EN varchar(100) not null ,
    movie_name_CN varchar(50) not null ,
    crawl_date date,
    unique(movie_name_EN,movie_name_CN,crawl_date)
);

create table user_info(
    user_id serial primary key ,
    user_name varchar(50) not null ,
    unique (user_name)
);

create table comment(
    comment_id serial primary key,
    user_id int not null
        constraint user_id references user_info,
    crawl_date date,
    star int ,
    comment varchar(500) not null ,
    likes int,
    check(star in (1,2,3,4,5))
);

create table relation
(
	movie_id int not null
		constraint movie_id
			references movie,
    comment_id int
        constraint comment_id
            references comment,
    unique (movie_id,comment_id),
    primary key (movie_id,comment_id)
);
```

###### Data Processing

<font face="Arial" size=3>In the process of my project, I think data processing is a very troublesome task. I need to transfer the original dataset to those satisfy my expectation. Since the dataset contains more than 2 million sample, it is impossible to do the data processing manually. After considering, I decide to use another programming language (Python) to help me to finish my work. Here I will show a part of my code to explain how I do this process. </font>

<font face="Arial" size=3>1. To create the dataset of table (comment, user_info, movie)</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200316230046072.png" alt="image-20200316230046072" style="zoom:200%;" />

<font face="Arial" size=3>2. To create the dataset of table <relation\>. </font><img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200316230516094.png" alt="image-20200316230516094" style="zoom:200%;" />

<font face="Arial" size=3>In this way, I finish the data processing successfully.</font>

##### 3.1.2 DBMS

<font face="Arial" size=3>As recommended in this lecture, I use PostgreSQL during this project.</font>

##### 3.1.3 Programming language

<font face="Arial" size=3>In this project, I use Java to show the difference of DBMS and File. Besides, I use Python to do some neccessary data processing.</font>

#### 3.2 Experiments

###### 3.2.1 Store the data into DBMS and File (Large data sets)

<font face="Arial" size=3>First of all, we need to store the data into our DBMS and File separately. We guess that there may have some difference between them, so we do an experiment to test whether there have any difference between DBMS and File. It is worthy to tell that I will use a large dataset to do the experiment.</font>

###### 3.2.2 Load the data from DBMS and File

<font face="Arial" size=3>After we stored the data successfully, we need to get the infomation of the dataset and to use it in our program. Such that the current thing we need to do is to load the data from DBMS and file. Also, I will load the data from DBMS and File separately to show the difference in loading data between DBMS and File.</font>

###### 3.2.3 Comparison between DBMS and File of Insertion

<font face="Arial" size=3>If we have loaded data, let we do some interesting things. That's to insert something into our database. We can compare the speed between the DBMS and File to get more information. We should do many times and get the average time to reduce the error and to increase the correctness of the experiment.</font>

###### 3.2.4 Comparison between DBMS and File of Query

<font face="Arial" size=3>Also, we can query something in our DBMS and File separately. Then, we can compare the speed of DBMS and File. By doing this, we can get the information of speed of Insertion and querying. Next, we can guess the data structure of DBMS. We should do many times and get the average time to reduce the error and to increase the correctness of the experiment</font>

###### 3.2.5 User privileges management

<font face="Arial" size=3>We will use this part to show that how DBMS convient to manage user privileges. It is a very strong tools to manage the data.</font>

###### 3.2.6 Rich query set

<font face="Arial" size=3>Actually, DBMS provides us a very strong function. We can easily use it to create a query clause to retrieve the data from database. Also, it provides us a lot of common aggregate functions, filters and orders.</font>

###### 3.2.7 Database index and File IO 

<font face="Arial" size=3>Actually, DBMS can query data faster than File due to the structure in DBMS and File is different. So I will use this part to analyze the difference between them and tell the principle of Database index and File IO.</font>

#### 3.3 Experiments Result

###### 3.3.1 Store the data into DBMS and File (Large data sets)

<font face="Arial" size=3>If we store the data into DBMS, we can store it very without difficulties. To my convience, I use Datagrip to help me do this. </font>The screenshot show that we store 2 million data successfully.

![](C:\Users\17124\Desktop\导入.png)

![](C:\Users\17124\Desktop\导入2.png)

<font face="Arial" size=3>But if we want to store the data into file, we will meet some difficulties. Since the dataset is more than 2 million, we cannot store all the data. I use a simple method to check how many data I store.</font>

![](C:\Users\17124\Desktop\3.17.png)

<font face="Arial" size=3>From the result, we can notice that only a part of data can be store in file.</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200317001216916.png" alt="image-20200317001216916" style="zoom:200%;" />

<font face="Arial" size=3>From the experiment result, we can conclude that DBMS can conveniently and easily to store the data into our database without losing data. However, we will get a incomplete data if we use File, that is to say, we cannot store the data into our database totally. In this case, DBMS is better than File obviously.</font>

###### 3.3.2 Load the data from DBMS and File

<font face="Arial" size=3>We have shown that it is very easy to store the data into our DBMS. Also, we can use the data directly. I will show how I get the $<comment>$ information.</font>

![image-20200318233121445](C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200318233121445.png)

<font face="Arial" size=3>Obviously, we use only a simple instruction. But if we want to get the information from the file, we will meet a huge difficulties. </font>

<img src="C:\Users\17124\Desktop\读取错误1.png" style="zoom:200%;" />

<font face="Arial" size=3>That's because when we the column `comment` can also exists `\n`. Since we use `bufferedReader.readLine()`, such that it make some mistakes when we load the data. My solution is to delete those samples. I know it is incorrert to delete samples when we do data analysis, but I still delete them because I think it is the most convient way to continue my experiment and deleting the sample have no effects in this experiment. I will show you how I select those data and delete them. </font>

<font face="Arial" size=3>First, I use the following code to output the "problem" comment_id.</font>

<img src="C:\Users\17124\Desktop\try_catch.png" style="zoom:200%;" />

<font face="Arial" size=3>The output:</font>

<img src="C:\Users\17124\Desktop\try_catch_result.png" style="zoom:200%;" />

<font face="Arial" size=3>After doing this, I use Python again. And I use the following code to delete those samples directly.</font>

<img src="C:\Users\17124\Desktop\1.png" style="zoom:150%;" />

<font face="Arial" size=3>By doing such a complex operation, we finish load the data from file successfully.</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200318235017904.png" alt="image-20200318235017904" style="zoom:150%;" />

<font face="Arial" szie=3>By doing this experiment, we can see the DBMS is so convenient to help us processing the data. On the other side, we will meet a huge difficulty when we use File because we should notice that the data set may include `\n`. Such that, we may need to do some data preprocessing. In this case, it is undoubtedly that DBMS is better than File.</font>

###### 3.3.3 Comparison between DBMS and File of Insertion

<font face="Arial" size=3>Now let we use the following code to insert a data into our DBMS.</font>

![image-20200319000705250](C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200319000705250.png)

<font face="Arial" size=3>And we can get the following result:</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200319000514678.png" alt="image-20200319000514678" style="zoom:200%;" />

<font face="Arial" size=3>If we want to using the following code to insert a data into our file:</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200319000923741.png" alt="image-20200319000923741" style="zoom:150%;" />

<font face="Arial" size=3>Then, we can get the result:</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200319001106325.png" alt="image-20200319001106325" style="zoom:200%;" />

<font face="Arial" size=3>After do 10 times, we get the average time of DBMS is 12.8ms and the average time of File is 134.6ms. From the result, we can clearly to see that the DBMS is faster than File.</font>

###### 3.3.4 Comparison between DBMS and File of Query

<font face="Arial" size=3>If we want to query the movie information by movie_id, we can also use DBMS and File.<br>If we use DBMS to query:</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200319001955136.png" alt="image-20200319001955136" style="zoom:200%;" />

<font face="Arail" size=3>The result is as follow:</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200319002205865.png" alt="image-20200319002205865" style="zoom:200%;" />

<font face="Arial" size=3>If we use File to query:</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200319001904300.png" alt="image-20200319001904300" style="zoom:200%;" />

<font face="Arial" size=3>The result is as follow:</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200319002234691.png" alt="image-20200319002234691" style="zoom:200%;" />

<font face="Arial" size=3>After repeating the experiment 10 times, we get the average time of DBMS is 1823.5ms and the average time of File is 3681.2ms. We notice that though we have less data in our file, it costed more 2 times than the DBMS. </font>

###### 3.3.5 User privileges management

- **Create users and Drop users easily.**

<font face="Arial" size=3>We try to create a user called $user1$</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200314203406997.png" alt="image-20200314203406997" style="zoom:200%;" />

<font face="Arial" size=3>Then we check the usertable, we can get that $user1$ is created successfully.</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200314203545394.png" alt="image-20200314203545394" style="zoom:200%;" />

<font face="Arial" size=3>We try to drop $user1$</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200314203815188.png" alt="image-20200314203815188" style="zoom:200%;" />

<font face="Arial" size=3>By checking the usertable, we can ensure $user1$ is deleted as expectation.</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200314203925257.png" alt="image-20200314203925257" style="zoom:200%;" />

- **Make some user can only $select$ one table.**

<font face="Arial" size=3>If we give $user1$ the privileges of selecting the movie table as follow:</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200314204232102.png" alt="image-20200314204232102" style="zoom:200%;" />

<font face="Arial" size=3>And then if we excute the $select$ instructions as follow,  and then we can get the result.</font>

![image-20200314204628594](C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200314204628594.png)

<font face="Arial" size=3>If we try to delete the data from $movie$ table, we will faill.</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200314205506185.png" alt="image-20200314205506185" style="zoom:200%;" />

<font face="Arial" size=3>If we try to select the data from other table, we will also fail.</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200314205614596.png" alt="image-20200314205614596" style="zoom:200%;" />

- **Make some user can $insert$ and $select$ one table.**

<font face="Arial" size=3>If we give $user1$ the privileges of inserting and selecting the movie table as follow:</font> 

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200314210024415.png" alt="image-20200314210024415" style="zoom:200%;" />

<font face="Arial" size=3>And then we do the $select$ and $insert$, the result is as follow:</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200314211437543.png" alt="image-20200314211437543" style="zoom:200%;" />

<font face="Arial" size=3>But if we try to still have no previlege to delete the data of movie and do other action on other table.</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200314211748952.png" alt="image-20200314211748952" style="zoom:200%;" />

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200314211850114.png" alt="image-20200314211850114" style="zoom:200%;" />

- **Make some user can do $all$ action in one table. **

<font face="Arial" size=3>We can also have some users which can do any operation our database.<br>The operation: insert and select the data in movie is as follow:</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200314212258606.png" alt="image-20200314212258606" style="zoom:200%;" />

<font face="Arial" size=3>The operation: delete the data in movie is as follow:</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200314212425132.png" alt="image-20200314212425132" style="zoom:200%;" />

<font face="Arial" size>The operation in other table is as follow:</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200314212542132.png" alt="image-20200314212542132" style="zoom:200%;" />

###### 3.3.6 Rich query set

<font face="Arial" size=3>DBMS provides a lot of useful function to help us retrieve the data.</font>

- Use $where$ to filter the data

  ![image-20200321172804864](C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200321172804864.png)

- Use aggregate functions

  <img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200321173156971.png" alt="image-20200321173156971" style="zoom:200%;" />

- Use $having$ to filter the data

  <img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200321173329477.png" alt="image-20200321173329477" style="zoom:200%;" />

- To order the data

  <img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200321173418457.png" alt="image-20200321173418457" style="zoom:200%;" />

###### 3.3.7 Database index and File IO

<font faec="Arial" size=3>Firstly, we will talk about File IO. According to Wikipedia$^{[1]}$, the definition of IO is:</font>

> In [computing](https://en.wikipedia.org/wiki/Computing), **input/output** or **I/O** (or, informally, **io** or **IO**) is the communication between an information processing system, such as a [computer](https://en.wikipedia.org/wiki/Computer), and the outside world, possibly a human or another information processing system. [Inputs](https://en.wikipedia.org/wiki/Information) are the signals or data received by the system and outputs are the signals or [data](https://en.wikipedia.org/wiki/Data_(computing)) sent from it. The term can also be used as part of an action; to "perform I/O" is to perform an [input or output operation](https://en.wikipedia.org/wiki/I/O_scheduling).

<font face="Arial" size=3>Actually, each IO have its costs and the cost is related to the consumption per read from disk and memory. From a hardware perspective, we recognize the limitations of memory itself. Such that, we will mainly improve the speed in software perspective. In fact, different operation systems give a helpful support to IO.</font>

<font face="Arial" size=3>In our disk, the data is managed by blocks, and each block is 4Kb. We can think of the disk as the following sequential storage structure.</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200321144650702.png" alt="image-20200321144650702" style="zoom:200%;" />

<font face="Arial" size=3>When the operation system want to get the data from disk, it will use certain block id to drive the disk to read the data and search the block data. It is improtant to note that these operations start with a block, and the smalledt unit of data per read is also 4Kb. Such that if the information we want to get is less than 4Kb or it doesn't lie in the start of the block, the disk will still read the whole data of the block.</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200321150049727.png" alt="image-20200321150049727" style="zoom:200%;" />

<font face="Arial" size=3>Even more, if the data we want to get cross two blocks, the disk will read both of the two blocks.</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200321150356436.png" alt="image-20200321150356436" style="zoom:200%;" />

<font face="Arial" size=3>In order to avoid the above situation, we align the target data in blocks to reduce the number of block reads during disk I/O. We know the cost of I/O is very consuming, so we will think about a way to manage the data in our database to reduce the disk I/O as possible. </font>

<font face="Arial" size=3>Consider we need to find the username with user_id = 2 in my user_info table. Since we can store about 1 million data in my file, we will use about 60000-80000 blocks. In this case, the pressure on the computer to process the data will rise, and as the data increases, the complexity will increase. Then the Database Index I discussed next will solve the retrieval problem of a large amount of data.</font>

<font face="Arial" size=3>Actually, the Database Index is not something speacial. Here I list an example to show how index works. If I want to use user_id to retrieval data, we can use a data structure to locate the id.</font>

| user_id | Record the block_id |
| :-----: | :-----------------: |
|    1    |          N          |
|  10000  |         N+k         |
|  20000  |        N+2k         |
| ......  |       ......        |
| 1000000 |       N+100k        |

<font face="Arial" size=3>That is to say, we map the user_id to the block_id. For example, if we want to find user_id=50000, then from the map relation, we can predict the location is in [N+5k,N+6k]. In this way, we can reduce the operation of IO.</font>

<font face="Arial" size=3>Another data structure is binary search tree. Since we have learned this structure before, I will not give another explanation here. I just give a figure to show this work if I want to find the user which user_id is 50000.</font>

<img src="C:\Users\17124\AppData\Roaming\Typora\typora-user-images\image-20200321162515854.png" alt="image-20200321162515854" style="zoom:200%;" />

<font face="Arial" size=3>Actually, the data structure in DBMS is not binary search tree. It is a more complex tree structure -- B+ tree. It is more suitable to seach and delete something in the data. But I will not give more details here.</font>

<font face="Arial" size=3>In Postgresql, we can use the following clause to create an index:</font>

```mysql
create index index1
on user_info(user_id);
```

<font face="Arial" size=3>In fact, DBMS will automatically set the primary key as the index. That is also one of the reasons we must set at least one primary key in a table. What's more, this is also why DBMS is faster than file. Its reduce the time by logN. However, the operation of insert will also cost logN.</font>

### 4. Conclusions

<font face="Arial" size=3>Through this project, we feel the convenience of DBMS from various aspects. At the same time, we also understand the DBMS data structure, master its working principle. After this project, we can have a deeper understanding of the database and should become more proficient in the future use. However, the wheel of scientific development is forward, and the DBMS is constantly updating and iterating, so the study of database management system must not end here, there is more to be discovered.</font>

### 5. Reference and Citation

#### 5.1 Citation

[ 1 ] : I/O definition. Retrieved from: https://en.wikipedia.org/wiki/Input/output

#### 5.2 Reference

[ 1 ] :  Advantage of database manage system over file system. Retrieved from:

​          https://www.csestack.org/advantages-of-database-management-system-over-file-system/ 

[ 2 ] : Advantages of Database Management System. Retrieved from:

​		  https://www.tutorialspoint.com/Advantages-of-Database-Management-System 

[ 3 ] : Characteristics and benefits of a database. Retrieved from:

​		  https://opentextbc.ca/dbdesign01/chapter/chapter-3-characteristics-and-benefits-of-a-database/

[ 4 ] : 深入浅出数据库索引原理. Retrieved from: https://zhuanlan.zhihu.com/p/23624390

[ 5 ] : 菜鸟教程|PostgreSQL 索引. Retrieved from:

​	      https://www.runoob.com/postgresql/postgresql-index.html 

#### 5.3 Tools

[ 1 ] : 在线树状图绘制软件. Retrieved from:

​	      https://online.visual-paradigm.com/cn/diagrams/features/dendrogram-software/

