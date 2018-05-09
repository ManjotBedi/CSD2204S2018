MariaDB [(none)]> CREATE DATABASE CSD2204S2018;
ERROR 1007 (HY000): Can't create database 'csd2204s2018'; database exists
MariaDB [(none)]> SHOW DATABASE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'DATABASE' at line 1
MariaDB [(none)]> SHOW DATABASEs;
+--------------------+
| Database           |
+--------------------+
| csd2204s2018       |
| information_schema |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
+--------------------+
6 rows in set (0.00 sec)

MariaDB [(none)]> USE CSD2204S2018;
Database changed
MariaDB [CSD2204S2018]> CREATE TABLE customer(
    -> custID VARCHAR(50) PRIMARY KEY,
    -> name VARCHAR(50),
    -> nickname VARCHAR(10),
    -> city VARCHAR(20),
    -> postalcode VARCHAR(10),
    -> age INTEGER(3));
Query OK, 0 rows affected (0.20 sec)

MariaDB [CSD2204S2018]> SHOW TABLE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [CSD2204S2018]> SHOW TABLES;
+------------------------+
| Tables_in_csd2204s2018 |
+------------------------+
| customer               |
+------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> EXIT;
