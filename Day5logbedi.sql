MariaDB [(none)]> USE CSD2208S2018;
ERROR 1049 (42000): Unknown database 'csd2208s2018'
MariaDB [(none)]> USE CSD2204S2018;
Database changed
MariaDB [CSD2204S2018]> CREATE TABLE Persons(
    -> ID integer(3),
    -> LastName varchar(255) NOT NULL,
    -> FirstName varchar(255) NOT NULL,
    -> Age integer(3),
    -> CONSTRAINT PK_Person PRIMARY KEY(ID)
    -> );
Query OK, 0 rows affected (0.30 sec)

MariaDB [CSD2204S2018]> DESC persons
    -> cd;
Empty set (0.07 sec)

MariaDB [CSD2204S2018]> DESC persons;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| ID        | int(3)       | NO   | PRI | NULL    |       |
| LastName  | varchar(255) | NO   |     | NULL    |       |
| FirstName | varchar(255) | NO   |     | NULL    |       |
| Age       | int(3)       | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.06 sec)

MariaDB [CSD2204S2018]> SHOW INDEX FROM PERSONS;
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table   | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| persons |          0 | PRIMARY  |            1 | ID          | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
1 row in set (0.05 sec)

MariaDB [CSD2204S2018]> CREATE TABLE Orders(
    -> OrderID integer(3) NOT NULL,
    -> OrderNumber integer(3) NOT NULL,
    -> PersonID integer(3),
    -> PRIMARY KEY(OrderID)
    -> CONSTRAINT FK_PersonOrder FORIEGN KEY (PersonID)
    -> REFERENCES Persons(ID)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'CONSTRAINT FK_PersonOrder FORIEGN KEY (PersonID)
REFERENCES Persons(ID)
)' at line 6
MariaDB [CSD2204S2018]> CREATE TABLE Orders(
    -> OrderID integer(3) NOT NULL,
    -> OrderNumber integer(3) NOT NULL,
    -> PersonID integer(3),
    -> PRIMARY KEY(OrderID),
    -> CONSTRAINT FK_PersonOrder FORIEGN KEY (PersonID)
    -> REFERENCES Persons(ID)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FORIEGN KEY (PersonID)
REFERENCES Persons(ID)
)' at line 6
MariaDB [CSD2204S2018]> CREATE TABLE Orders(
    -> OrderID integer(3) NOT NULL,
    -> OrderNumber integer(3) NOT NULL,
    -> PersonID integer(3),
    -> PRIMARY KEY(OrderID),
    -> CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID)
    -> REFERENCES Persons(ID)
    -> );
Query OK, 0 rows affected (0.30 sec)

MariaDB [CSD2204S2018]> SHOW INDEX FROM Orders;
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table  | Non_unique | Key_name       | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| orders |          0 | PRIMARY        |            1 | OrderID     | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
| orders |          1 | FK_PersonOrder |            1 | PersonID    | A         |           0 |     NULL | NULL   | YES  | BTREE      |         |               |
+--------+------------+----------------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> DESC Customer;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.08 sec)

MariaDB [CSD2204S2018]> CREATE TABLE C1 AS SELECT * FROM Customer;
Query OK, 10 rows affected (0.28 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> CREATE TABLE C2 AS SELECT name,postalCode FROM Customer WHERE city="Toronto";;
Query OK, 4 rows affected (0.34 sec)
Records: 4  Duplicates: 0  Warnings: 0

ERROR: No query specified

MariaDB [CSD2204S2018]> DESC C2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> Desc C1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> Select * from C1;
+--------+-----------------+----------+-----------+------------+------+
| custID | name            | nickname | city      | postalcode | age  |
+--------+-----------------+----------+-----------+------------+------+
| C01    | ashley          | ash      | WDC       | 321200     |   34 |
| C02    | Bob marley      | bm       | Toronto   | 100100     |   23 |
| C03    | cherlies theron | cher     | New york  | 120134     |   20 |
| C04    | Donna newman    | new      | Toronto   | 130120     |   50 |
| C05    | Donna newman    | new      | Toronto   | 341020     |   25 |
| C06    | eston M.        | M.       | Toronto   | 201023     |   65 |
| C07    | Bobby Chacko    | chac     | new york  | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA       | 421044     |   72 |
| C09    | Tony Special    | Specie   | GTA       | 418921     |   62 |
| C10    | Jack sp         | Sparrow  | New Jersy | 102301     |   62 |
+--------+-----------------+----------+-----------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> DESC C2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SHOW CREATE TABLE C2;
+-------+---------------------------------------------------------------------------------------------------------------------------------------+
| Table | Create Table                                                                                                                          |
+-------+---------------------------------------------------------------------------------------------------------------------------------------+
| C2    | CREATE TABLE `c2` (
  `name` varchar(50) DEFAULT NULL,
  `postalCode` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 |
+-------+---------------------------------------------------------------------------------------------------------------------------------------+
1 row in set (0.01 sec)

MariaDB [CSD2204S2018]> SHOW TABLES;
+------------------------+
| Tables_in_csd2204s2018 |
+------------------------+
| c1                     |
| c2                     |
| customer               |
| orders                 |
| persons                |
+------------------------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> CREATE TABLE C3 LIKE Customer;
Query OK, 0 rows affected (0.12 sec)

MariaDB [CSD2204S2018]> DESC C3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> SELECT * FROM C3;
Empty set (0.00 sec)

MariaDB [CSD2204S2018]> INSERT INTO C3 SELECT * FROM Customer;
Query OK, 10 rows affected (0.09 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> SELECT * FROM C3;
+--------+-----------------+----------+-----------+------------+------+
| custID | name            | nickname | city      | postalcode | age  |
+--------+-----------------+----------+-----------+------------+------+
| C01    | ashley          | ash      | WDC       | 321200     |   34 |
| C02    | Bob marley      | bm       | Toronto   | 100100     |   23 |
| C03    | cherlies theron | cher     | New york  | 120134     |   20 |
| C04    | Donna newman    | new      | Toronto   | 130120     |   50 |
| C05    | Donna newman    | new      | Toronto   | 341020     |   25 |
| C06    | eston M.        | M.       | Toronto   | 201023     |   65 |
| C07    | Bobby Chacko    | chac     | new york  | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA       | 421044     |   72 |
| C09    | Tony Special    | Specie   | GTA       | 418921     |   62 |
| C10    | Jack sp         | Sparrow  | New Jersy | 102301     |   62 |
+--------+-----------------+----------+-----------+------------+------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> ALTER TABLE C3 ADD COLUMN Country VARCHAR(100);
Query OK, 0 rows affected (0.39 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> Desc c3;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| custID     | varchar(5)   | NO   | PRI | NULL    |       |
| name       | varchar(50)  | YES  |     | NULL    |       |
| nickname   | varchar(10)  | YES  |     | NULL    |       |
| city       | varchar(20)  | YES  |     | NULL    |       |
| postalcode | varchar(10)  | YES  |     | NULL    |       |
| age        | int(3)       | YES  |     | NULL    |       |
| Country    | varchar(100) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> ALTER TABLE C3 MODIFY COLUMN Country VARCHAR(40);
Query OK, 10 rows affected (0.73 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> Desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| Country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> ALTER TABLE C3 MODIFY COLUMN country VARCHAR(40);
Query OK, 0 rows affected (0.00 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> Desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> ALTER TABLE C3 CHANGE custID customerID VARCHAR(5);
Query OK, 0 rows affected (0.07 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> Desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
7 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> ALTER TABLE C3 DROP COLUMN nickname;
Query OK, 0 rows affected (0.35 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> Desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> ALTER TABLE C3 MODIFY name VARCHAR(50) NOT NULL;
Query OK, 10 rows affected (1.05 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> Desc c3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | NO   |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> Desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> Desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   |     | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> ALTER TABLE C1 ADD PRIMARY KEY(custID);N
Query OK, 0 rows affected (0.30 sec)
Records: 0  Duplicates: 0  Warnings: 0

    -> cd;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'N
cd' at line 1
MariaDB [CSD2204S2018]> ALTER TABLE C1 ADD PRIMARY KEY(custID);
ERROR 1068 (42000): Multiple primary key defined
MariaDB [CSD2204S2018]> Desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| custID     | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> ALTER TABLE C1 DROP INDEX custID;
ERROR 1091 (42000): Can't DROP 'custID'; check that column/key exists
MariaDB [CSD2204S2018]> ALTER TABLE C1 DROP custID;
Query OK, 10 rows affected (0.77 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> Desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> ALTER TABLE C1 ADD COLUMN custID VARCHAR(5) PRIMARY KEY;
ERROR 1062 (23000): Duplicate entry '' for key 'PRIMARY'
MariaDB [CSD2204S2018]> Desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> ALTER TABLE C1 ADD COLUMN custID VARCHAR(5);
Query OK, 0 rows affected (0.43 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> Desc c1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| custID     | varchar(5)  | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> Desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> ALTER TABLE C2 ADD PRIMARY KEY(name);
ERROR 1062 (23000): Duplicate entry 'Donna newman' for key 'PRIMARY'
MariaDB [CSD2204S2018]> Desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.05 sec)

MariaDB [CSD2204S2018]> ALTER TABLE C2 DROP INDEX name;
ERROR 1091 (42000): Can't DROP 'name'; check that column/key exists
MariaDB [CSD2204S2018]> ALTER TABLE C2 MODIFY COLUMN name varchar(50);
Query OK, 0 rows affected (0.00 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> Desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| postalCode | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> ALTER TABLE C2 DROP PRIMARY KEY;
ERROR 1091 (42000): Can't DROP 'PRIMARY'; check that column/key exists
MariaDB [CSD2204S2018]> ALTER TABLE C2 ADD PRIMARY KEY(postalcode);
Query OK, 4 rows affected (0.80 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> Desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| postalCode | varchar(10) | NO   | PRI | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> ALTER TABLE C2 MODIFY COLUMN postalCode varchar(15);
Query OK, 4 rows affected (0.70 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> Desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| postalCode | varchar(15) | NO   | PRI | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> ALTER TABLE C2 DROP PRIMARY KEY;
Query OK, 4 rows affected (0.63 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [CSD2204S2018]> Desc c2;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| postalCode | varchar(15) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> DESC Persons;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| ID        | int(3)       | NO   | PRI | NULL    |       |
| LastName  | varchar(255) | NO   |     | NULL    |       |
| FirstName | varchar(255) | NO   |     | NULL    |       |
| Age       | int(3)       | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> SHOW INDEX FROM Persons;
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| Table   | Non_unique | Key_name | Seq_in_index | Column_name | Collation | Cardinality | Sub_part | Packed | Null | Index_type | Comment | Index_comment |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
| persons |          0 | PRIMARY  |            1 | ID          | A         |           0 |     NULL | NULL   |      | BTREE      |         |               |
+---------+------------+----------+--------------+-------------+-----------+-------------+----------+--------+------+------------+---------+---------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> DESC C3;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| customerID | varchar(5)  | NO   | PRI | NULL    |       |
| name       | varchar(50) | NO   |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| country    | varchar(40) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

MariaDB [CSD2204S2018]> SELECT * FROM C3;
+------------+-----------------+-----------+------------+------+---------+
| customerID | name            | city      | postalcode | age  | country |
+------------+-----------------+-----------+------------+------+---------+
| C01        | ashley          | WDC       | 321200     |   34 | NULL    |
| C02        | Bob marley      | Toronto   | 100100     |   23 | NULL    |
| C03        | cherlies theron | New york  | 120134     |   20 | NULL    |
| C04        | Donna newman    | Toronto   | 130120     |   50 | NULL    |
| C05        | Donna newman    | Toronto   | 341020     |   25 | NULL    |
| C06        | eston M.        | Toronto   | 201023     |   65 | NULL    |
| C07        | Bobby Chacko    | new york  | 320300     |   70 | NULL    |
| C08        | Ashko Charles   | USA       | 421044     |   72 | NULL    |
| C09        | Tony Special    | GTA       | 418921     |   62 | NULL    |
| C10        | Jack sp         | New Jersy | 102301     |   62 | NULL    |
+------------+-----------------+-----------+------------+------+---------+
10 rows in set (0.07 sec)

MariaDB [CSD2204S2018]> UPDATE C3 SET country='USA';
Query OK, 10 rows affected (0.07 sec)
Rows matched: 10  Changed: 10  Warnings: 0

MariaDB [CSD2204S2018]> SELECT * FROM C3;
+------------+-----------------+-----------+------------+------+---------+
| customerID | name            | city      | postalcode | age  | country |
+------------+-----------------+-----------+------------+------+---------+
| C01        | ashley          | WDC       | 321200     |   34 | USA     |
| C02        | Bob marley      | Toronto   | 100100     |   23 | USA     |
| C03        | cherlies theron | New york  | 120134     |   20 | USA     |
| C04        | Donna newman    | Toronto   | 130120     |   50 | USA     |
| C05        | Donna newman    | Toronto   | 341020     |   25 | USA     |
| C06        | eston M.        | Toronto   | 201023     |   65 | USA     |
| C07        | Bobby Chacko    | new york  | 320300     |   70 | USA     |
| C08        | Ashko Charles   | USA       | 421044     |   72 | USA     |
| C09        | Tony Special    | GTA       | 418921     |   62 | USA     |
| C10        | Jack sp         | New Jersy | 102301     |   62 | USA     |
+------------+-----------------+-----------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> UPDATE C3 SET country='CANADA' WHERE city IN('Toronto','GTA');
Query OK, 5 rows affected (0.05 sec)
Rows matched: 5  Changed: 5  Warnings: 0

MariaDB [CSD2204S2018]> SELECT * FROM C3;
+------------+-----------------+-----------+------------+------+---------+
| customerID | name            | city      | postalcode | age  | country |
+------------+-----------------+-----------+------------+------+---------+
| C01        | ashley          | WDC       | 321200     |   34 | USA     |
| C02        | Bob marley      | Toronto   | 100100     |   23 | CANADA  |
| C03        | cherlies theron | New york  | 120134     |   20 | USA     |
| C04        | Donna newman    | Toronto   | 130120     |   50 | CANADA  |
| C05        | Donna newman    | Toronto   | 341020     |   25 | CANADA  |
| C06        | eston M.        | Toronto   | 201023     |   65 | CANADA  |
| C07        | Bobby Chacko    | new york  | 320300     |   70 | USA     |
| C08        | Ashko Charles   | USA       | 421044     |   72 | USA     |
| C09        | Tony Special    | GTA       | 418921     |   62 | CANADA  |
| C10        | Jack sp         | New Jersy | 102301     |   62 | USA     |
+------------+-----------------+-----------+------------+------+---------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM C2;
+--------------+------------+
| name         | postalCode |
+--------------+------------+
| Bob marley   | 100100     |
| Donna newman | 130120     |
| eston M.     | 201023     |
| Donna newman | 341020     |
+--------------+------------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> DROP FROM C2 WHERE name LIKE'Bob';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM C2 WHERE name LIKE'Bob'' at line 1
MariaDB [CSD2204S2018]> DELETE FROM C2 WHERE name LIKE'Bob';
Query OK, 0 rows affected (0.06 sec)

MariaDB [CSD2204S2018]> SELECT * FROM C2;
+--------------+------------+
| name         | postalCode |
+--------------+------------+
| Bob marley   | 100100     |
| Donna newman | 130120     |
| eston M.     | 201023     |
| Donna newman | 341020     |
+--------------+------------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> DELETE FROM C2 WHERE name LIKE'Bob%';
Query OK, 1 row affected (0.11 sec)

MariaDB [CSD2204S2018]> SELECT * FROM C2;
+--------------+------------+
| name         | postalCode |
+--------------+------------+
| Donna newman | 130120     |
| eston M.     | 201023     |
| Donna newman | 341020     |
+--------------+------------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> DELETE FROM C2;
Query OK, 3 rows affected (0.10 sec)

MariaDB [CSD2204S2018]> SELECT * FROM C2;
Empty set (0.00 sec)

MariaDB [CSD2204S2018]> DROP TABLE C2;
Query OK, 0 rows affected (0.19 sec)

MariaDB [CSD2204S2018]> SHOW TABLES;
+------------------------+
| Tables_in_csd2204s2018 |
+------------------------+
| c1                     |
| c3                     |
| customer               |
| orders                 |
| persons                |
+------------------------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM C1;
+-----------------+----------+-----------+------------+------+--------+
| name            | nickname | city      | postalcode | age  | custID |
+-----------------+----------+-----------+------------+------+--------+
| ashley          | ash      | WDC       | 321200     |   34 | NULL   |
| Bob marley      | bm       | Toronto   | 100100     |   23 | NULL   |
| cherlies theron | cher     | New york  | 120134     |   20 | NULL   |
| Donna newman    | new      | Toronto   | 130120     |   50 | NULL   |
| Donna newman    | new      | Toronto   | 341020     |   25 | NULL   |
| eston M.        | M.       | Toronto   | 201023     |   65 | NULL   |
| Bobby Chacko    | chac     | new york  | 320300     |   70 | NULL   |
| Ashko Charles   | AK       | USA       | 421044     |   72 | NULL   |
| Tony Special    | Specie   | GTA       | 418921     |   62 | NULL   |
| Jack sp         | Sparrow  | New Jersy | 102301     |   62 | NULL   |
+-----------------+----------+-----------+------------+------+--------+
10 rows in set (0.05 sec)

MariaDB [CSD2204S2018]> DESC C1;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| name       | varchar(50) | YES  |     | NULL    |       |
| nickname   | varchar(10) | YES  |     | NULL    |       |
| city       | varchar(20) | YES  |     | NULL    |       |
| postalcode | varchar(10) | YES  |     | NULL    |       |
| age        | int(3)      | YES  |     | NULL    |       |
| custID     | varchar(5)  | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.06 sec)

MariaDB [CSD2204S2018]> UPDATE C1 SET custid=1 Where age>=50;
Query OK, 6 rows affected (0.06 sec)
Rows matched: 6  Changed: 6  Warnings: 0

MariaDB [CSD2204S2018]> SELECT * FROM C1;
+-----------------+----------+-----------+------------+------+--------+
| name            | nickname | city      | postalcode | age  | custID |
+-----------------+----------+-----------+------------+------+--------+
| ashley          | ash      | WDC       | 321200     |   34 | NULL   |
| Bob marley      | bm       | Toronto   | 100100     |   23 | NULL   |
| cherlies theron | cher     | New york  | 120134     |   20 | NULL   |
| Donna newman    | new      | Toronto   | 130120     |   50 | 1      |
| Donna newman    | new      | Toronto   | 341020     |   25 | NULL   |
| eston M.        | M.       | Toronto   | 201023     |   65 | 1      |
| Bobby Chacko    | chac     | new york  | 320300     |   70 | 1      |
| Ashko Charles   | AK       | USA       | 421044     |   72 | 1      |
| Tony Special    | Specie   | GTA       | 418921     |   62 | 1      |
| Jack sp         | Sparrow  | New Jersy | 102301     |   62 | 1      |
+-----------------+----------+-----------+------------+------+--------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM C1 WHERE custid IS NULL;
+-----------------+----------+----------+------------+------+--------+
| name            | nickname | city     | postalcode | age  | custID |
+-----------------+----------+----------+------------+------+--------+
| ashley          | ash      | WDC      | 321200     |   34 | NULL   |
| Bob marley      | bm       | Toronto  | 100100     |   23 | NULL   |
| cherlies theron | cher     | New york | 120134     |   20 | NULL   |
| Donna newman    | new      | Toronto  | 341020     |   25 | NULL   |
+-----------------+----------+----------+------------+------+--------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM C1 WHERE custid IS NOT NULL;
+---------------+----------+-----------+------------+------+--------+
| name          | nickname | city      | postalcode | age  | custID |
+---------------+----------+-----------+------------+------+--------+
| Donna newman  | new      | Toronto   | 130120     |   50 | 1      |
| eston M.      | M.       | Toronto   | 201023     |   65 | 1      |
| Bobby Chacko  | chac     | new york  | 320300     |   70 | 1      |
| Ashko Charles | AK       | USA       | 421044     |   72 | 1      |
| Tony Special  | Specie   | GTA       | 418921     |   62 | 1      |
| Jack sp       | Sparrow  | New Jersy | 102301     |   62 | 1      |
+---------------+----------+-----------+------------+------+--------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM C1 WHERE custid=NULL;
Empty set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM C1 WHERE custid IS NOT NULL;
+---------------+----------+-----------+------------+------+--------+
| name          | nickname | city      | postalcode | age  | custID |
+---------------+----------+-----------+------------+------+--------+
| Donna newman  | new      | Toronto   | 130120     |   50 | 1      |
| eston M.      | M.       | Toronto   | 201023     |   65 | 1      |
| Bobby Chacko  | chac     | new york  | 320300     |   70 | 1      |
| Ashko Charles | AK       | USA       | 421044     |   72 | 1      |
| Tony Special  | Specie   | GTA       | 418921     |   62 | 1      |
| Jack sp       | Sparrow  | New Jersy | 102301     |   62 | 1      |
+---------------+----------+-----------+------------+------+--------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> EXIT
