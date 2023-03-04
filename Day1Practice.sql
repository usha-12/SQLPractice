mysql> create database practice;
Query OK, 1 row affected (0.02 sec)

mysql> show databases;
+-----------------------+
| Database              |
+-----------------------+
| addressbookservice    |
| amazon                |
| customerdetails       |
| employee              |
| information_schema    |
| jdbcpractice          |
| mysql                 |
| payroll_service       |
| performance_schema    |
| practice              |
| student               |
| student2              |
| sys                   |
| university            |
| universityinformation |
+-----------------------+
15 rows in set (0.00 sec)

mysql> use practice;
Database changed
mysql> create table Customers(ID int, Name varchar(23), age int, Address varchar(23), Salary decimal, primary key(ID));
Query OK, 0 rows affected (0.04 sec)

mysql> desc  Customers;
+---------+---------------+------+-----+---------+-------+
| Field   | Type          | Null | Key | Default | Extra |
+---------+---------------+------+-----+---------+-------+
| ID      | int           | NO   | PRI | NULL    |       |
| Name    | varchar(23)   | YES  |     | NULL    |       |
| age     | int           | YES  |     | NULL    |       |
| Address | varchar(23)   | YES  |     | NULL    |       |
| Salary  | decimal(10,0) | YES  |     | NULL    |       |
+---------+---------------+------+-----+---------+-------+
5 rows in set (0.02 sec)

mysql> insert into customers(ID, Name, age, Address, Salary)Values(1,'Ramesh', 32, 'Ahmedabad', 2000.00);
Query OK, 1 row affected (0.01 sec)

mysql> insert into customers(ID, Name, age, Address, Salary)Values(2,'Khilan', 25, 'Delhi', 1500.00),(3, 'Kaushik', 23, 'Kota', 2000.00),(4,'Chaitali', 25, 'Mumbai', 6500.00),(5, 'Hardik', 27, 'Bhopal', 8500.00),(6, 'Komal', 22, 'MP', 4500.00);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from  customers;
+----+----------+------+-----------+--------+
| ID | Name     | age  | Address   | Salary |
+----+----------+------+-----------+--------+
|  1 | Ramesh   |   32 | Ahmedabad |   2000 |
|  2 | Khilan   |   25 | Delhi     |   1500 |
|  3 | Kaushik  |   23 | Kota      |   2000 |
|  4 | Chaitali |   25 | Mumbai    |   6500 |
|  5 | Hardik   |   27 | Bhopal    |   8500 |
|  6 | Komal    |   22 | MP        |   4500 |
+----+----------+------+-----------+--------+
6 rows in set (0.00 sec)

mysql> select ID, Name, Salary from  customers;
+----+----------+--------+
| ID | Name     | Salary |
+----+----------+--------+
|  1 | Ramesh   |   2000 |
|  2 | Khilan   |   1500 |
|  3 | Kaushik  |   2000 |
|  4 | Chaitali |   6500 |
|  5 | Hardik   |   8500 |
|  6 | Komal    |   4500 |
+----+----------+--------+
6 rows in set (0.00 sec)

mysql> select * from  customers;
+----+----------+------+-----------+--------+
| ID | Name     | age  | Address   | Salary |
+----+----------+------+-----------+--------+
|  1 | Ramesh   |   32 | Ahmedabad |   2000 |
|  2 | Khilan   |   25 | Delhi     |   1500 |
|  3 | Kaushik  |   23 | Kota      |   2000 |
|  4 | Chaitali |   25 | Mumbai    |   6500 |
|  5 | Hardik   |   27 | Bhopal    |   8500 |
|  6 | Komal    |   22 | MP        |   4500 |
+----+----------+------+-----------+--------+
6 rows in set (0.00 sec)

mysql> select * from  customers where Salary > 2000;
+----+----------+------+---------+--------+
| ID | Name     | age  | Address | Salary |
+----+----------+------+---------+--------+
|  4 | Chaitali |   25 | Mumbai  |   6500 |
|  5 | Hardik   |   27 | Bhopal  |   8500 |
|  6 | Komal    |   22 | MP      |   4500 |
+----+----------+------+---------+--------+
3 rows in set (0.00 sec)

mysql> select * from  customers where Name='Hardik';
+----+--------+------+---------+--------+
| ID | Name   | age  | Address | Salary |
+----+--------+------+---------+--------+
|  5 | Hardik |   27 | Bhopal  |   8500 |
+----+--------+------+---------+--------+
1 row in set (0.00 sec)

mysql> select * from  customers;
+----+----------+------+-----------+--------+
| ID | Name     | age  | Address   | Salary |
+----+----------+------+-----------+--------+
|  1 | Ramesh   |   32 | Ahmedabad |   2000 |
|  2 | Khilan   |   25 | Delhi     |   1500 |
|  3 | Kaushik  |   23 | Kota      |   2000 |
|  4 | Chaitali |   25 | Mumbai    |   6500 |
|  5 | Hardik   |   27 | Bhopal    |   8500 |
|  6 | Komal    |   22 | MP        |   4500 |
+----+----------+------+-----------+--------+
6 rows in set (0.00 sec)

mysql> select * from  customers where Salary >2000 and age <25;;
+----+-------+------+---------+--------+
| ID | Name  | age  | Address | Salary |
+----+-------+------+---------+--------+
|  6 | Komal |   22 | MP      |   4500 |
+----+-------+------+---------+--------+
1 row in set (0.00 sec)

ERROR:
No query specified

mysql> select * from  customers where Salary >2000 and age <25;
+----+-------+------+---------+--------+
| ID | Name  | age  | Address | Salary |
+----+-------+------+---------+--------+
|  6 | Komal |   22 | MP      |   4500 |
+----+-------+------+---------+--------+
1 row in set (0.00 sec)

mysql> select * from  customers where Salary >= 2000 and age <25;
+----+---------+------+---------+--------+
| ID | Name    | age  | Address | Salary |
+----+---------+------+---------+--------+
|  3 | Kaushik |   23 | Kota    |   2000 |
|  6 | Komal   |   22 | MP      |   4500 |
+----+---------+------+---------+--------+
2 rows in set (0.00 sec)

mysql> update customers set Address = 'pune' where ID =6;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from  customers;
+----+----------+------+-----------+--------+
| ID | Name     | age  | Address   | Salary |
+----+----------+------+-----------+--------+
|  1 | Ramesh   |   32 | Ahmedabad |   2000 |
|  2 | Khilan   |   25 | Delhi     |   1500 |
|  3 | Kaushik  |   23 | Kota      |   2000 |
|  4 | Chaitali |   25 | Mumbai    |   6500 |
|  5 | Hardik   |   27 | Bhopal    |   8500 |
|  6 | Komal    |   22 | pune      |   4500 |
+----+----------+------+-----------+--------+
6 rows in set (0.00 sec)

mysql> update customers set Address = 'pune', Salary = 1000;
Query OK, 6 rows affected (0.01 sec)
Rows matched: 6  Changed: 6  Warnings: 0

mysql> select * from  customers;
+----+----------+------+---------+--------+
| ID | Name     | age  | Address | Salary |
+----+----------+------+---------+--------+
|  1 | Ramesh   |   32 | pune    |   1000 |
|  2 | Khilan   |   25 | pune    |   1000 |
|  3 | Kaushik  |   23 | pune    |   1000 |
|  4 | Chaitali |   25 | pune    |   1000 |
|  5 | Hardik   |   27 | pune    |   1000 |
|  6 | Komal    |   22 | pune    |   1000 |
+----+----------+------+---------+--------+
6 rows in set (0.00 sec)

mysql> update Customers Set Address='Ahemdabad', Salary=2000 where ID=1;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update Customers Set Address='Delhi', Salary=1500.00 where ID=2;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update Customers Set Address='Kota', Salary=2000.00 where ID=3;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update Customers Set Address='Mumbai', Salary=6500.00 where ID=4;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update Customers Set Address='Bhopal', Salary=8500.00 where ID=5;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update Customers Set Address='Pune', Salary=4500.00 where ID=6;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customers;
+----+----------+------+-----------+--------+
| ID | Name     | age  | Address   | Salary |
+----+----------+------+-----------+--------+
|  1 | Ramesh   |   32 | Ahemdabad |   2000 |
|  2 | Khilan   |   25 | Delhi     |   1500 |
|  3 | Kaushik  |   23 | Kota      |   2000 |
|  4 | Chaitali |   25 | Mumbai    |   6500 |
|  5 | Hardik   |   27 | Bhopal    |   8500 |
|  6 | Komal    |   22 | Pune      |   4500 |
+----+----------+------+-----------+--------+
6 rows in set (0.00 sec)

mysql> update Customers Set Address='MP' where ID=6;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customers;
+----+----------+------+-----------+--------+
| ID | Name     | age  | Address   | Salary |
+----+----------+------+-----------+--------+
|  1 | Ramesh   |   32 | Ahemdabad |   2000 |
|  2 | Khilan   |   25 | Delhi     |   1500 |
|  3 | Kaushik  |   23 | Kota      |   2000 |
|  4 | Chaitali |   25 | Mumbai    |   6500 |
|  5 | Hardik   |   27 | Bhopal    |   8500 |
|  6 | Komal    |   22 | MP        |   4500 |
+----+----------+------+-----------+--------+
6 rows in set (0.00 sec)

mysql> delete from customers where ID =6;
Query OK, 1 row affected (0.00 sec)

mysql> select * from customers;
+----+----------+------+-----------+--------+
| ID | Name     | age  | Address   | Salary |
+----+----------+------+-----------+--------+
|  1 | Ramesh   |   32 | Ahemdabad |   2000 |
|  2 | Khilan   |   25 | Delhi     |   1500 |
|  3 | Kaushik  |   23 | Kota      |   2000 |
|  4 | Chaitali |   25 | Mumbai    |   6500 |
|  5 | Hardik   |   27 | Bhopal    |   8500 |
+----+----------+------+-----------+--------+
5 rows in set (0.00 sec)

mysql> select * from customers WHERE SALARY LIKE '200%';
+----+---------+------+-----------+--------+
| ID | Name    | age  | Address   | Salary |
+----+---------+------+-----------+--------+
|  1 | Ramesh  |   32 | Ahemdabad |   2000 |
|  3 | Kaushik |   23 | Kota      |   2000 |
+----+---------+------+-----------+--------+
2 rows in set (0.00 sec)

mysql> select * from customers WHERE SALARY LIKE '%200%';
+----+---------+------+-----------+--------+
| ID | Name    | age  | Address   | Salary |
+----+---------+------+-----------+--------+
|  1 | Ramesh  |   32 | Ahemdabad |   2000 |
|  3 | Kaushik |   23 | Kota      |   2000 |
+----+---------+------+-----------+--------+
2 rows in set (0.00 sec)

mysql> select * from customers WHERE SALARY LIKE '_00%';
+----+---------+------+-----------+--------+
| ID | Name    | age  | Address   | Salary |
+----+---------+------+-----------+--------+
|  1 | Ramesh  |   32 | Ahemdabad |   2000 |
|  3 | Kaushik |   23 | Kota      |   2000 |
+----+---------+------+-----------+--------+
2 rows in set (0.00 sec)

mysql> select * from customers WHERE SALARY LIKE '2_%_%';
+----+---------+------+-----------+--------+
| ID | Name    | age  | Address   | Salary |
+----+---------+------+-----------+--------+
|  1 | Ramesh  |   32 | Ahemdabad |   2000 |
|  3 | Kaushik |   23 | Kota      |   2000 |
+----+---------+------+-----------+--------+
2 rows in set (0.00 sec)

mysql> select * from customers WHERE SALARY LIKE '%2'
    -> ;
Empty set (0.00 sec)

mysql> select * from customers WHERE SALARY LIKE '%2';
Empty set (0.00 sec)

mysql> select * from customers WHERE SALARY LIKE '_2%3'
    -> ;
Empty set (0.00 sec)

mysql> select * from customers WHERE SALARY LIKE '2___3';
Empty set (0.00 sec)

mysql> select * from customers WHERE SALARY LIKE '8___0';
Empty set (0.00 sec)

mysql> select * from customers WHERE SALARY LIKE '_5%0';
+----+----------+------+---------+--------+
| ID | Name     | age  | Address | Salary |
+----+----------+------+---------+--------+
|  2 | Khilan   |   25 | Delhi   |   1500 |
|  4 | Chaitali |   25 | Mumbai  |   6500 |
|  5 | Hardik   |   27 | Bhopal  |   8500 |
+----+----------+------+---------+--------+
3 rows in set (0.00 sec)

mysql> select * from customers WHERE SALARY LIKE '8%0';
+----+--------+------+---------+--------+
| ID | Name   | age  | Address | Salary |
+----+--------+------+---------+--------+
|  5 | Hardik |   27 | Bhopal  |   8500 |
+----+--------+------+---------+--------+
1 row in set (0.00 sec)

mysql> select * from customers WHERE SALARY LIKE '1%0';
+----+--------+------+---------+--------+
| ID | Name   | age  | Address | Salary |
+----+--------+------+---------+--------+
|  2 | Khilan |   25 | Delhi   |   1500 |
+----+--------+------+---------+--------+
1 row in set (0.00 sec)

mysql> select * from customers WHERE SALARY LIKE '6%0';
+----+----------+------+---------+--------+
| ID | Name     | age  | Address | Salary |
+----+----------+------+---------+--------+
|  4 | Chaitali |   25 | Mumbai  |   6500 |
+----+----------+------+---------+--------+
1 row in set (0.00 sec)

mysql>


