MariaDB [(none)]> CREATE DATABASE CSD2204S2018;
ERROR 1007 (HY000): Can't create database 'csd2204s2018'; database exists
MariaDB [(none)]> USE CSD2204S2018;
Database changed
MariaDB [CSD2204S2018]> CREATE TABLE Customer(
    -> custID VARCHAR(5) PRIMARY KEY,
    -> name VARCHAR(50),
    -> nickname VARCHAR(10),
    -> city VARCHAR(20),
    -> postalcode VARCHAR(10),
    -> age INTEGER(3));
ERROR 1050 (42S01): Table 'customer' already exists
MariaDB [CSD2204S2018]> Show tables;
+------------------------+
| Tables_in_csd2204s2018 |
+------------------------+
| customer               |
+------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Cutomer;
ERROR 1146 (42S02): Table 'csd2204s2018.cutomer' doesn't exist
MariaDB [CSD2204S2018]> SELECT * FROM Customer;
+--------+--------+----------+------+------------+------+
| custID | name   | nickname | city | postalcode | age  |
+--------+--------+----------+------+------------+------+
| C01    | ashley | ash      | WDC  | 321200     |   34 |
+--------+--------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> INSERT INTO Customer VALUES('C02', 'Bob marley', 'bm', 'Toronto', '100100',23);
Query OK, 1 row affected (0.10 sec)

MariaDB [CSD2204S2018]> INSERT INTO Customer VALUES('C03', 'cherlies theron', 'cher', 'New york', '120134',20);
Query OK, 1 row affected (0.07 sec)

MariaDB [CSD2204S2018]> INSERT INTO Customer VALUES('C04', 'Donna newman', 'new', 'Toronto', '130120',50);
Query OK, 1 row affected (0.09 sec)

MariaDB [CSD2204S2018]> INSERT INTO Customer VALUES('C04', 'Donna newman', 'new', 'Toronto', '341020',25);
ERROR 1062 (23000): Duplicate entry 'C04' for key 'PRIMARY'
MariaDB [CSD2204S2018]> INSERT INTO Customer VALUES('C05', 'Donna newman', 'new', 'Toronto', '341020',25);
Query OK, 1 row affected (0.08 sec)

MariaDB [CSD2204S2018]> INSERT INTO Customer VALUES('C06', 'eston M.', 'M.', 'Toronto', '201023',65);
Query OK, 1 row affected (0.07 sec)

MariaDB [CSD2204S2018]> INSERT INTO Customer VALUES('C07', 'Bobby Chacko', 'chac', 'new york', '320300',70);
Query OK, 1 row affected (0.08 sec)

MariaDB [CSD2204S2018]> INSERT INTO Customer VALUES('C08', 'Ashko Charles', 'AK', 'USA', '421044',72);
Query OK, 1 row affected (0.09 sec)

MariaDB [CSD2204S2018]> INSERT INTO Customer VALUES('C09', 'Tony Special', 'Specie', 'GTA', '418921',62);
Query OK, 1 row affected (0.09 sec)

MariaDB [CSD2204S2018]> INSERT INTO Customer VALUES('C10', 'Jack sp', 'Sparrow', 'New Jersy', '102301',62);
Query OK, 1 row affected (0.07 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer;
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

MariaDB [CSD2204S2018]> SELECT name,nickname FROM Customer;
+-----------------+----------+
| name            | nickname |
+-----------------+----------+
| ashley          | ash      |
| Bob marley      | bm       |
| cherlies theron | cher     |
| Donna newman    | new      |
| Donna newman    | new      |
| eston M.        | M.       |
| Bobby Chacko    | chac     |
| Ashko Charles   | AK       |
| Tony Special    | Specie   |
| Jack sp         | Sparrow  |
+-----------------+----------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT city,postalcode FROM Customer;
+-----------+------------+
| city      | postalcode |
+-----------+------------+
| WDC       | 321200     |
| Toronto   | 100100     |
| New york  | 120134     |
| Toronto   | 130120     |
| Toronto   | 341020     |
| Toronto   | 201023     |
| new york  | 320300     |
| USA       | 421044     |
| GTA       | 418921     |
| New Jersy | 102301     |
+-----------+------------+
10 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE name='ashley';
+--------+--------+----------+------+------------+------+
| custID | name   | nickname | city | postalcode | age  |
+--------+--------+----------+------+------------+------+
| C01    | ashley | ash      | WDC  | 321200     |   34 |
+--------+--------+----------+------+------------+------+
1 row in set (0.06 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE nickname='AK';
+--------+---------------+----------+------+------------+------+
| custID | name          | nickname | city | postalcode | age  |
+--------+---------------+----------+------+------------+------+
| C08    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE name='eston M.';
+--------+----------+----------+---------+------------+------+
| custID | name     | nickname | city    | postalcode | age  |
+--------+----------+----------+---------+------------+------+
| C06    | eston M. | M.       | Toronto | 201023     |   65 |
+--------+----------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE city!='Toronto';
+--------+-----------------+----------+-----------+------------+------+
| custID | name            | nickname | city      | postalcode | age  |
+--------+-----------------+----------+-----------+------------+------+
| C01    | ashley          | ash      | WDC       | 321200     |   34 |
| C03    | cherlies theron | cher     | New york  | 120134     |   20 |
| C07    | Bobby Chacko    | chac     | new york  | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA       | 421044     |   72 |
| C09    | Tony Special    | Specie   | GTA       | 418921     |   62 |
| C10    | Jack sp         | Sparrow  | New Jersy | 102301     |   62 |
+--------+-----------------+----------+-----------+------------+------+
6 rows in set (0.06 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE age <50;
+--------+-----------------+----------+----------+------------+------+
| custID | name            | nickname | city     | postalcode | age  |
+--------+-----------------+----------+----------+------------+------+
| C01    | ashley          | ash      | WDC      | 321200     |   34 |
| C02    | Bob marley      | bm       | Toronto  | 100100     |   23 |
| C03    | cherlies theron | cher     | New york | 120134     |   20 |
| C05    | Donna newman    | new      | Toronto  | 341020     |   25 |
+--------+-----------------+----------+----------+------------+------+
4 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE name>'ashley';
+--------+-----------------+----------+-----------+------------+------+
| custID | name            | nickname | city      | postalcode | age  |
+--------+-----------------+----------+-----------+------------+------+
| C02    | Bob marley      | bm       | Toronto   | 100100     |   23 |
| C03    | cherlies theron | cher     | New york  | 120134     |   20 |
| C04    | Donna newman    | new      | Toronto   | 130120     |   50 |
| C05    | Donna newman    | new      | Toronto   | 341020     |   25 |
| C06    | eston M.        | M.       | Toronto   | 201023     |   65 |
| C07    | Bobby Chacko    | chac     | new york  | 320300     |   70 |
| C09    | Tony Special    | Specie   | GTA       | 418921     |   62 |
| C10    | Jack sp         | Sparrow  | New Jersy | 102301     |   62 |
+--------+-----------------+----------+-----------+------------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE name<'donna';
+--------+-----------------+----------+----------+------------+------+
| custID | name            | nickname | city     | postalcode | age  |
+--------+-----------------+----------+----------+------------+------+
| C01    | ashley          | ash      | WDC      | 321200     |   34 |
| C02    | Bob marley      | bm       | Toronto  | 100100     |   23 |
| C03    | cherlies theron | cher     | New york | 120134     |   20 |
| C07    | Bobby Chacko    | chac     | new york | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA      | 421044     |   72 |
+--------+-----------------+----------+----------+------------+------+
5 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE name='ashley' OR city+'toronto;
    '> cd;
    '> back
    '> exit
    '> cd c:/
    '> SELECT * FROM Customer WHERE name='ashley' OR city'toronto';
    '> \c
    '> 'c
    -> \c
MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE name='ashley' OR city'toronto';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near ''toronto'' at line 1
MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE name='ashley' OR city='toronto';
+--------+--------------+----------+---------+------------+------+
| custID | name         | nickname | city    | postalcode | age  |
+--------+--------------+----------+---------+------------+------+
| C01    | ashley       | ash      | WDC     | 321200     |   34 |
| C02    | Bob marley   | bm       | Toronto | 100100     |   23 |
| C04    | Donna newman | new      | Toronto | 130120     |   50 |
| C05    | Donna newman | new      | Toronto | 341020     |   25 |
| C06    | eston M.     | M.       | Toronto | 201023     |   65 |
+--------+--------------+----------+---------+------------+------+
5 rows in set (0.06 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE city='New york' ||'toronto';
+--------+-----------------+----------+----------+------------+------+
| custID | name            | nickname | city     | postalcode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | cherlies theron | cher     | New york | 120134     |   20 |
| C07    | Bobby Chacko    | chac     | new york | 320300     |   70 |
+--------+-----------------+----------+----------+------------+------+
2 rows in set, 4 warnings (0.00 sec)

MariaDB [CSD2204S2018]> SELECT name,city FROM Customer WHERE city='New york' ||'toronto';
+-----------------+----------+
| name            | city     |
+-----------------+----------+
| cherlies theron | New york |
| Bobby Chacko    | new york |
+-----------------+----------+
2 rows in set, 4 warnings (0.00 sec)

MariaDB [CSD2204S2018]> SELECT name,city FROM Customer WHERE city='New york' ||city='toronto';
+-----------------+----------+
| name            | city     |
+-----------------+----------+
| Bob marley      | Toronto  |
| cherlies theron | New york |
| Donna newman    | Toronto  |
| Donna newman    | Toronto  |
| eston M.        | Toronto  |
| Bobby Chacko    | new york |
+-----------------+----------+
6 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT name,city FROM Customer WHERE city='toronto'|| age>50;
+---------------+-----------+
| name          | city      |
+---------------+-----------+
| Bob marley    | Toronto   |
| Donna newman  | Toronto   |
| Donna newman  | Toronto   |
| eston M.      | Toronto   |
| Bobby Chacko  | new york  |
| Ashko Charles | USA       |
| Tony Special  | GTA       |
| Jack sp       | New Jersy |
+---------------+-----------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT COUNT(*) FROM Customer WHERE city='toronto';
+----------+
| COUNT(*) |
+----------+
|        4 |
+----------+
1 row in set (0.08 sec)

MariaDB [CSD2204S2018]> SELECT COUNT(*) "No of Cutomers in Toronto" FROM Customer WHERE city='toronto';
+---------------------------+
| No of Cutomers in Toronto |
+---------------------------+
|                         4 |
+---------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT COUNT(*) "No of Cutomers with age more than 50" FROM Customer WHERE age>50;
+--------------------------------------+
| No of Cutomers with age more than 50 |
+--------------------------------------+
|                                    5 |
+--------------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT COUNT(*) FROM Customer WHERE age BETWEEN 30 AND 50;
+----------+
| COUNT(*) |
+----------+
|        2 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE age BETWEEN 30 AND 50;
+--------+--------------+----------+---------+------------+------+
| custID | name         | nickname | city    | postalcode | age  |
+--------+--------------+----------+---------+------------+------+
| C01    | ashley       | ash      | WDC     | 321200     |   34 |
| C04    | Donna newman | new      | Toronto | 130120     |   50 |
+--------+--------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE NOT age BETWEEN 30 AND 50;
+--------+-----------------+----------+-----------+------------+------+
| custID | name            | nickname | city      | postalcode | age  |
+--------+-----------------+----------+-----------+------------+------+
| C02    | Bob marley      | bm       | Toronto   | 100100     |   23 |
| C03    | cherlies theron | cher     | New york  | 120134     |   20 |
| C05    | Donna newman    | new      | Toronto   | 341020     |   25 |
| C06    | eston M.        | M.       | Toronto   | 201023     |   65 |
| C07    | Bobby Chacko    | chac     | new york  | 320300     |   70 |
| C08    | Ashko Charles   | AK       | USA       | 421044     |   72 |
| C09    | Tony Special    | Specie   | GTA       | 418921     |   62 |
| C10    | Jack sp         | Sparrow  | New Jersy | 102301     |   62 |
+--------+-----------------+----------+-----------+------------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT max(age) FROM Customer;
+----------+
| max(age) |
+----------+
|       72 |
+----------+
1 row in set (0.06 sec)

MariaDB [CSD2204S2018]> SELECT name,max(age) FROM Customer;
+--------+----------+
| name   | max(age) |
+--------+----------+
| ashley |       72 |
+--------+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT min(age) FROM Customer;
+----------+
| min(age) |
+----------+
|       20 |
+----------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT avg(age) FROM Customer;
+----------+
| avg(age) |
+----------+
|  48.3000 |
+----------+
1 row in set (0.05 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE name LIKE '%n';
+--------+-----------------+----------+----------+------------+------+
| custID | name            | nickname | city     | postalcode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | cherlies theron | cher     | New york | 120134     |   20 |
| C04    | Donna newman    | new      | Toronto  | 130120     |   50 |
| C05    | Donna newman    | new      | Toronto  | 341020     |   25 |
+--------+-----------------+----------+----------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer LIMIT 2;
+--------+------------+----------+---------+------------+------+
| custID | name       | nickname | city    | postalcode | age  |
+--------+------------+----------+---------+------------+------+
| C01    | ashley     | ash      | WDC     | 321200     |   34 |
| C02    | Bob marley | bm       | Toronto | 100100     |   23 |
+--------+------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE age IN (20,25,30,40);
+--------+-----------------+----------+----------+------------+------+
| custID | name            | nickname | city     | postalcode | age  |
+--------+-----------------+----------+----------+------------+------+
| C03    | cherlies theron | cher     | New york | 120134     |   20 |
| C05    | Donna newman    | new      | Toronto  | 341020     |   25 |
+--------+-----------------+----------+----------+------------+------+
2 rows in set (0.05 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE age NOT IN (20,25,30,40);
+--------+---------------+----------+-----------+------------+------+
| custID | name          | nickname | city      | postalcode | age  |
+--------+---------------+----------+-----------+------------+------+
| C01    | ashley        | ash      | WDC       | 321200     |   34 |
| C02    | Bob marley    | bm       | Toronto   | 100100     |   23 |
| C04    | Donna newman  | new      | Toronto   | 130120     |   50 |
| C06    | eston M.      | M.       | Toronto   | 201023     |   65 |
| C07    | Bobby Chacko  | chac     | new york  | 320300     |   70 |
| C08    | Ashko Charles | AK       | USA       | 421044     |   72 |
| C09    | Tony Special  | Specie   | GTA       | 418921     |   62 |
| C10    | Jack sp       | Sparrow  | New Jersy | 102301     |   62 |
+--------+---------------+----------+-----------+------------+------+
8 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE city IN ('Toronto', 'GTA', 'USA', 'WDC');
+--------+---------------+----------+---------+------------+------+
| custID | name          | nickname | city    | postalcode | age  |
+--------+---------------+----------+---------+------------+------+
| C01    | ashley        | ash      | WDC     | 321200     |   34 |
| C02    | Bob marley    | bm       | Toronto | 100100     |   23 |
| C04    | Donna newman  | new      | Toronto | 130120     |   50 |
| C05    | Donna newman  | new      | Toronto | 341020     |   25 |
| C06    | eston M.      | M.       | Toronto | 201023     |   65 |
| C08    | Ashko Charles | AK       | USA     | 421044     |   72 |
| C09    | Tony Special  | Specie   | GTA     | 418921     |   62 |
+--------+---------------+----------+---------+------------+------+
7 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE city IN ('G%', 'T%', 'N%');
Empty set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE name LIKE '__n_a%';
+--------+--------------+----------+---------+------------+------+
| custID | name         | nickname | city    | postalcode | age  |
+--------+--------------+----------+---------+------------+------+
| C04    | Donna newman | new      | Toronto | 130120     |   50 |
| C05    | Donna newman | new      | Toronto | 341020     |   25 |
+--------+--------------+----------+---------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer WHERE name LIKE '__n%';
+--------+--------------+----------+---------+------------+------+
| custID | name         | nickname | city    | postalcode | age  |
+--------+--------------+----------+---------+------------+------+
| C04    | Donna newman | new      | Toronto | 130120     |   50 |
| C05    | Donna newman | new      | Toronto | 341020     |   25 |
| C09    | Tony Special | Specie   | GTA     | 418921     |   62 |
+--------+--------------+----------+---------+------------+------+
3 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT 'List of unique cities';
+-----------------------+
| List of unique cities |
+-----------------------+
| List of unique cities |
+-----------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT DISTINCT(city) AS 'unique cities' FROM Customer;
+---------------+
| unique cities |
+---------------+
| WDC           |
| Toronto       |
| New york      |
| USA           |
| GTA           |
| New Jersy     |
+---------------+
6 rows in set (0.06 sec)

MariaDB [CSD2204S2018]> SELECT COUNT(DISTINCT(city)) AS 'unique cities' FROM Customer;
+---------------+
| unique cities |
+---------------+
|             6 |
+---------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT 'List customers in increasing order of name';
+--------------------------------------------+
| List customers in increasing order of name |
+--------------------------------------------+
| List customers in increasing order of name |
+--------------------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer ORDER BY name DESC;
+--------+-----------------+----------+-----------+------------+------+
| custID | name            | nickname | city      | postalcode | age  |
+--------+-----------------+----------+-----------+------------+------+
| C09    | Tony Special    | Specie   | GTA       | 418921     |   62 |
| C10    | Jack sp         | Sparrow  | New Jersy | 102301     |   62 |
| C06    | eston M.        | M.       | Toronto   | 201023     |   65 |
| C04    | Donna newman    | new      | Toronto   | 130120     |   50 |
| C05    | Donna newman    | new      | Toronto   | 341020     |   25 |
| C03    | cherlies theron | cher     | New york  | 120134     |   20 |
| C07    | Bobby Chacko    | chac     | new york  | 320300     |   70 |
| C02    | Bob marley      | bm       | Toronto   | 100100     |   23 |
| C01    | ashley          | ash      | WDC       | 321200     |   34 |
| C08    | Ashko Charles   | AK       | USA       | 421044     |   72 |
+--------+-----------------+----------+-----------+------------+------+
10 rows in set (0.07 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer ORDER BY name DESC LIMIT 1;
+--------+--------------+----------+------+------------+------+
| custID | name         | nickname | city | postalcode | age  |
+--------+--------------+----------+------+------------+------+
| C09    | Tony Special | Specie   | GTA  | 418921     |   62 |
+--------+--------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT 'List customer by second highest age';
+-------------------------------------+
| List customer by second highest age |
+-------------------------------------+
| List customer by second highest age |
+-------------------------------------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM Customer ORDER BY name DESC LIMIT 2;
+--------+--------------+----------+-----------+------------+------+
| custID | name         | nickname | city      | postalcode | age  |
+--------+--------------+----------+-----------+------------+------+
| C09    | Tony Special | Specie   | GTA       | 418921     |   62 |
| C10    | Jack sp      | Sparrow  | New Jersy | 102301     |   62 |
+--------+--------------+----------+-----------+------------+------+
2 rows in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM (SELECT * FROM Customer ORDER BY age DESC LIMIT 2) AS t ORDER BY age ASC LIMIT 1;
+--------+--------------+----------+----------+------------+------+
| custID | name         | nickname | city     | postalcode | age  |
+--------+--------------+----------+----------+------------+------+
| C07    | Bobby Chacko | chac     | new york | 320300     |   70 |
+--------+--------------+----------+----------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM (SELECT * FROM Customer ORDER BY age DESC LIMIT 3) AS t ORDER BY age ASC LIMIT 1;
+--------+----------+----------+---------+------------+------+
| custID | name     | nickname | city    | postalcode | age  |
+--------+----------+----------+---------+------------+------+
| C06    | eston M. | M.       | Toronto | 201023     |   65 |
+--------+----------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM (SELECT * FROM Customer ORDER BY age DESC LIMIT 3) AS t ORDER BY age DESC LIMIT 1;
+--------+---------------+----------+------+------------+------+
| custID | name          | nickname | city | postalcode | age  |
+--------+---------------+----------+------+------------+------+
| C08    | Ashko Charles | AK       | USA  | 421044     |   72 |
+--------+---------------+----------+------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM (SELECT * FROM Customer ORDER BY age ASC LIMIT 3) AS t ORDER BY age DESC LIMIT 1;
+--------+--------------+----------+---------+------------+------+
| custID | name         | nickname | city    | postalcode | age  |
+--------+--------------+----------+---------+------------+------+
| C05    | Donna newman | new      | Toronto | 341020     |   25 |
+--------+--------------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT * FROM (SELECT * FROM Customer ORDER BY age ASC LIMIT 2) AS t ORDER BY age DESC LIMIT 1;
+--------+------------+----------+---------+------------+------+
| custID | name       | nickname | city    | postalcode | age  |
+--------+------------+----------+---------+------------+------+
| C02    | Bob marley | bm       | Toronto | 100100     |   23 |
+--------+------------+----------+---------+------------+------+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> SELECT max(age)+10*20/2 FROM Customer;
+------------------+
| max(age)+10*20/2 |
+------------------+
|         172.0000 |
+------------------+
1 row in set (0.07 sec)

MariaDB [CSD2204S2018]> SELECT 10*30 AS t;
+-----+
| t   |
+-----+
| 300 |
+-----+
1 row in set (0.00 sec)

MariaDB [CSD2204S2018]> exit
