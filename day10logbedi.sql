MariaDB [csd2204s2018]> show tables;
+------------------------+
| Tables_in_csd2204s2018 |
+------------------------+
| customer               |
| employees              |
+------------------------+
2 rows in set (0.00 sec)

MariaDB [csd2204s2018]> SELECT first_name, last_name, salary FROM employees WHERE salary > (SELECT salary FROM employees WHERE last_name = 'Bell') ORDER BY first_name;
Empty set (0.00 sec)

MariaDB [csd2204s2018]> INSERT INTO `employees` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE_NUMBER`, `HIRE_DATE`, `JOB_ID`, `SALARY`, `COMMISSION_PCT`, `MANAGER_ID`, `DEPARTMENT_ID`) VALUES
    -> ('100', 'Steven', 'King', 'SKING', '515.123.4567', '1987-06-17', 'AD_PRES', '24000.00', '0.00', '0', '90'),
    -> ('101', 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '1987-06-18', 'AD_VP', '17000.00', '0.00', '100', '90'),
    -> ('102', 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '1987-06-19', 'AD_VP', '17000.00', '0.00', '100', '90'),
    -> ('103', 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '1987-06-20', 'IT_PROG', '9000.00', '0.00', '102', '60'),
    -> ('104', 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '1987-06-21', 'IT_PROG', '6000.00', '0.00', '103', '60'),
    -> ('105', 'David', 'Austin', 'DAUSTIN', '590.423.4569', '1987-06-22', 'IT_PROG', '4800.00', '0.00', '103', '60'),
    -> ('106', 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', '1987-06-23', 'IT_PROG', '4800.00', '0.00', '103', '60'),
    -> ('107', 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', '1987-06-24', 'IT_PROG', '4200.00', '0.00', '103', '60'),
    -> ('108', 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', '1987-06-25', 'FI_MGR', '12000.00', '0.00', '101', '100'),
    -> ('109', 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', '1987-06-26', 'FI_ACCOUNT', '9000.00', '0.00', '108', '100'),
    -> ('110', 'John', 'Chen', 'JCHEN', '515.124.4269', '1987-06-27', 'FI_ACCOUNT', '8200.00', '0.00', '108', '100'),
    -> ('111', 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', '1987-06-28', 'FI_ACCOUNT', '7700.00', '0.00', '108', '100'),
    -> ('112', 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', '1987-06-29', 'FI_ACCOUNT', '7800.00', '0.00', '108', '100'),
    -> ('113', 'Luis', 'Popp', 'LPOPP', '515.124.4567', '1987-06-30', 'FI_ACCOUNT', '6900.00', '0.00', '108', '100'),
    -> ('114', 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', '1987-07-01', 'PU_MAN', '11000.00', '0.00', '100', '30'),
    -> ('115', 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', '1987-07-02', 'PU_CLERK', '3100.00', '0.00', '114', '30'),
    -> ('116', 'Shelli', 'Baida', 'SBAIDA', '515.127.4563', '1987-07-03', 'PU_CLERK', '2900.00', '0.00', '114', '30'),
    -> ('117', 'Sigal', 'Tobias', 'STOBIAS', '515.127.4564', '1987-07-04', 'PU_CLERK', '2800.00', '0.00', '114', '30'),
    -> ('118', 'Guy', 'Himuro', 'GHIMURO', '515.127.4565', '1987-07-05', 'PU_CLERK', '2600.00', '0.00', '114', '30'),
    -> ('119', 'Karen', 'Colmenares', 'KCOLMENA', '515.127.4566', '1987-07-06', 'PU_CLERK', '2500.00', '0.00', '114', '30'),
    -> ('120', 'Matthew', 'Weiss', 'MWEISS', '650.123.1234', '1987-07-07', 'ST_MAN', '8000.00', '0.00', '100', '50'),
    -> ('121', 'Adam', 'Fripp', 'AFRIPP', '650.123.2234', '1987-07-08', 'ST_MAN', '8200.00', '0.00', '100', '50'),
    -> ('122', 'Payam', 'Kaufling', 'PKAUFLIN', '650.123.3234', '1987-07-09', 'ST_MAN', '7900.00', '0.00', '100', '50'),
    -> ('123', 'Shanta', 'Vollman', 'SVOLLMAN', '650.123.4234', '1987-07-10', 'ST_MAN', '6500.00', '0.00', '100', '50'),
    -> ('124', 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', '1987-07-11', 'ST_MAN', '5800.00', '0.00', '100', '50'),
    -> ('125', 'Julia', 'Nayer', 'JNAYER', '650.124.1214', '1987-07-12', 'ST_CLERK', '3200.00', '0.00', '120', '50'),
    -> ('126', 'Irene', 'Mikkilineni', 'IMIKKILI', '650.124.1224', '1987-07-13', 'ST_CLERK', '2700.00', '0.00', '120', '50'),
    -> ('127', 'James', 'Landry', 'JLANDRY', '650.124.1334', '1987-07-14', 'ST_CLERK', '2400.00', '0.00', '120', '50'),
    -> ('128', 'Steven', 'Markle', 'SMARKLE', '650.124.1434', '1987-07-15', 'ST_CLERK', '2200.00', '0.00', '120', '50'),
    -> ('129', 'Laura', 'Bissot', 'LBISSOT', '650.124.5234', '1987-07-16', 'ST_CLERK', '3300.00', '0.00', '121', '50'),
    -> ('130', 'Mozhe', 'Atkinson', 'MATKINSO', '650.124.6234', '1987-07-17', 'ST_CLERK', '2800.00', '0.00', '121', '50'),
    -> ('131', 'James', 'Marlow', 'JAMRLOW', '650.124.7234', '1987-07-18', 'ST_CLERK', '2500.00', '0.00', '121', '50'),
    -> ('132', 'TJ', 'Olson', 'TJOLSON', '650.124.8234', '1987-07-19', 'ST_CLERK', '2100.00', '0.00', '121', '50'),
    -> ('133', 'Jason', 'Mallin', 'JMALLIN', '650.127.1934', '1987-07-20', 'ST_CLERK', '3300.00', '0.00', '122', '50'),
    -> ('134', 'Michael', 'Rogers', 'MROGERS', '650.127.1834', '1987-07-21', 'ST_CLERK', '2900.00', '0.00', '122', '50'),
    -> ('135', 'Ki', 'Gee', 'KGEE', '650.127.1734', '1987-07-22', 'ST_CLERK', '2400.00', '0.00', '122', '50'),
    -> ('136', 'Hazel', 'Philtanker', 'HPHILTAN', '650.127.1634', '1987-07-23', 'ST_CLERK', '2200.00', '0.00', '122', '50'),
    -> ('137', 'Renske', 'Ladwig', 'RLADWIG', '650.121.1234', '1987-07-24', 'ST_CLERK', '3600.00', '0.00', '123', '50'),
    -> ('138', 'Stephen', 'Stiles', 'SSTILES', '650.121.2034', '1987-07-25', 'ST_CLERK', '3200.00', '0.00', '123', '50'),
    -> ('139', 'John', 'Seo', 'JSEO', '650.121.2019', '1987-07-26', 'ST_CLERK', '2700.00', '0.00', '123', '50'),
    -> ('140', 'Joshua', 'Patel', 'JPATEL', '650.121.1834', '1987-07-27', 'ST_CLERK', '2500.00', '0.00', '123', '50'),
    -> ('141', 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', '1987-07-28', 'ST_CLERK', '3500.00', '0.00', '124', '50'),
    -> ('142', 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', '1987-07-29', 'ST_CLERK', '3100.00', '0.00', '124', '50'),
    -> ('143', 'Randall', 'Matos', 'RMATOS', '650.121.2874', '1987-07-30', 'ST_CLERK', '2600.00', '0.00', '124', '50'),
    -> ('144', 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', '1987-07-31', 'ST_CLERK', '2500.00', '0.00', '124', '50'),
    -> ('145', 'John', 'Russell', 'JRUSSEL', '011.44.1344.429268', '1987-08-01', 'SA_MAN', '14000.00', '0.40', '100', '80'),
    -> ('146', 'Karen', 'Partners', 'KPARTNER', '011.44.1344.467268', '1987-08-02', 'SA_MAN', '13500.00', '0.30', '100', '80'),
    -> ('147', 'Alberto', 'Errazuriz', 'AERRAZUR', '011.44.1344.429278', '1987-08-03', 'SA_MAN', '12000.00', '0.30', '100', '80'),
    -> ('148', 'Gerald', 'Cambrault', 'GCAMBRAU', '011.44.1344.619268', '1987-08-04', 'SA_MAN', '11000.00', '0.30', '100', '80'),
    -> ('149', 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', '1987-08-05', 'SA_MAN', '10500.00', '0.20', '100', '80'),
    -> ('150', 'Peter', 'Tucker', 'PTUCKER', '011.44.1344.129268', '1987-08-06', 'SA_REP', '10000.00', '0.30', '145', '80'),
    -> ('151', 'David', 'Bernstein', 'DBERNSTE', '011.44.1344.345268', '1987-08-07', 'SA_REP', '9500.00', '0.25', '145', '80'),
    -> ('152', 'Peter', 'Hall', 'PHALL', '011.44.1344.478968', '1987-08-08', 'SA_REP', '9000.00', '0.25', '145', '80'),
    -> ('153', 'Christopher', 'Olsen', 'COLSEN', '011.44.1344.498718', '1987-08-09', 'SA_REP', '8000.00', '0.20', '145', '80'),
    -> ('154', 'Nanette', 'Cambrault', 'NCAMBRAU', '011.44.1344.987668', '1987-08-10', 'SA_REP', '7500.00', '0.20', '145', '80'),
    -> ('155', 'Oliver', 'Tuvault', 'OTUVAULT', '011.44.1344.486508', '1987-08-11', 'SA_REP', '7000.00', '0.15', '145', '80'),
    -> ('156', 'Janette', 'King', 'JKING', '011.44.1345.429268', '1987-08-12', 'SA_REP', '10000.00', '0.35', '146', '80'),
    -> ('157', 'Patrick', 'Sully', 'PSULLY', '011.44.1345.929268', '1987-08-13', 'SA_REP', '9500.00', '0.35', '146', '80'),
    -> ('158', 'Allan', 'McEwen', 'AMCEWEN', '011.44.1345.829268', '1987-08-14', 'SA_REP', '9000.00', '0.35', '146', '80'),
    -> ('159', 'Lindsey', 'Smith', 'LSMITH', '011.44.1345.729268', '1987-08-15', 'SA_REP', '8000.00', '0.30', '146', '80'),
    -> ('160', 'Louise', 'Doran', 'LDORAN', '011.44.1345.629268', '1987-08-16', 'SA_REP', '7500.00', '0.30', '146', '80'),
    -> ('161', 'Sarath', 'Sewall', 'SSEWALL', '011.44.1345.529268', '1987-08-17', 'SA_REP', '7000.00', '0.25', '146', '80'),
    -> ('162', 'Clara', 'Vishney', 'CVISHNEY', '011.44.1346.129268', '1987-08-18', 'SA_REP', '10500.00', '0.25', '147', '80'),
    -> ('163', 'Danielle', 'Greene', 'DGREENE', '011.44.1346.229268', '1987-08-19', 'SA_REP', '9500.00', '0.15', '147', '80'),
    -> ('164', 'Mattea', 'Marvins', 'MMARVINS', '011.44.1346.329268', '1987-08-20', 'SA_REP', '7200.00', '0.10', '147', '80'),
    -> ('165', 'David', 'Lee', 'DLEE', '011.44.1346.529268', '1987-08-21', 'SA_REP', '6800.00', '0.10', '147', '80'),
    -> ('166', 'Sundar', 'Ande', 'SANDE', '011.44.1346.629268', '1987-08-22', 'SA_REP', '6400.00', '0.10', '147', '80'),
    -> ('167', 'Amit', 'Banda', 'ABANDA', '011.44.1346.729268', '1987-08-23', 'SA_REP', '6200.00', '0.10', '147', '80'),
    -> ('168', 'Lisa', 'Ozer', 'LOZER', '011.44.1343.929268', '1987-08-24', 'SA_REP', '11500.00', '0.25', '148', '80'),
    -> ('169', 'Harrison', 'Bloom', 'HBLOOM', '011.44.1343.829268', '1987-08-25', 'SA_REP', '10000.00', '0.20', '148', '80'),
    -> ('170', 'Tayler', 'Fox', 'TFOX', '011.44.1343.729268', '1987-08-26', 'SA_REP', '9600.00', '0.20', '148', '80'),
    -> ('171', 'William', 'Smith', 'WSMITH', '011.44.1343.629268', '1987-08-27', 'SA_REP', '7400.00', '0.15', '148', '80'),
    -> ('172', 'Elizabeth', 'Bates', 'EBATES', '011.44.1343.529268', '1987-08-28', 'SA_REP', '7300.00', '0.15', '148', '80'),
    -> ('173', 'Sundita', 'Kumar', 'SKUMAR', '011.44.1343.329268', '1987-08-29', 'SA_REP', '6100.00', '0.10', '148', '80'),
    -> ('174', 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', '1987-08-30', 'SA_REP', '11000.00', '0.30', '149', '80'),
    -> ('175', 'Alyssa', 'Hutton', 'AHUTTON', '011.44.1644.429266', '1987-08-31', 'SA_REP', '8800.00', '0.25', '149', '80'),
    -> ('176', 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', '1987-09-01', 'SA_REP', '8600.00', '0.20', '149', '80'),
    -> ('177', 'Jack', 'Livingston', 'JLIVINGS', '011.44.1644.429264', '1987-09-02', 'SA_REP', '8400.00', '0.20', '149', '80'),
    -> ('178', 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', '1987-09-03', 'SA_REP', '7000.00', '0.15', '149', '0'),
    -> ('179', 'Charles', 'Johnson', 'CJOHNSON', '011.44.1644.429262', '1987-09-04', 'SA_REP', '6200.00', '0.10', '149', '80'),
    -> ('180', 'Winston', 'Taylor', 'WTAYLOR', '650.507.9876', '1987-09-05', 'SH_CLERK', '3200.00', '0.00', '120', '50'),
    -> ('181', 'Jean', 'Fleaur', 'JFLEAUR', '650.507.9877', '1987-09-06', 'SH_CLERK', '3100.00', '0.00', '120', '50'),
    -> ('182', 'Martha', 'Sullivan', 'MSULLIVA', '650.507.9878', '1987-09-07', 'SH_CLERK', '2500.00', '0.00', '120', '50'),
    -> ('183', 'Girard', 'Geoni', 'GGEONI', '650.507.9879', '1987-09-08', 'SH_CLERK', '2800.00', '0.00', '120', '50'),
    -> ('184', 'Nandita', 'Sarchand', 'NSARCHAN', '650.509.1876', '1987-09-09', 'SH_CLERK', '4200.00', '0.00', '121', '50'),
    -> ('185', 'Alexis', 'Bull', 'ABULL', '650.509.2876', '1987-09-10', 'SH_CLERK', '4100.00', '0.00', '121', '50'),
    -> ('186', 'Julia', 'Dellinger', 'JDELLING', '650.509.3876', '1987-09-11', 'SH_CLERK', '3400.00', '0.00', '121', '50'),
    -> ('187', 'Anthony', 'Cabrio', 'ACABRIO', '650.509.4876', '1987-09-12', 'SH_CLERK', '3000.00', '0.00', '121', '50'),
    -> ('188', 'Kelly', 'Chung', 'KCHUNG', '650.505.1876', '1987-09-13', 'SH_CLERK', '3800.00', '0.00', '122', '50'),
    -> ('189', 'Jennifer', 'Dilly', 'JDILLY', '650.505.2876', '1987-09-14', 'SH_CLERK', '3600.00', '0.00', '122', '50'),
    -> ('190', 'Timothy', 'Gates', 'TGATES', '650.505.3876', '1987-09-15', 'SH_CLERK', '2900.00', '0.00', '122', '50'),
    -> ('191', 'Randall', 'Perkins', 'RPERKINS', '650.505.4876', '1987-09-16', 'SH_CLERK', '2500.00', '0.00', '122', '50'),
    -> ('192', 'Sarah', 'Bell', 'SBELL', '650.501.1876', '1987-09-17', 'SH_CLERK', '4000.00', '0.00', '123', '50'),
    -> ('193', 'Britney', 'Everett', 'BEVERETT', '650.501.2876', '1987-09-18', 'SH_CLERK', '3900.00', '0.00', '123', '50'),
    -> ('194', 'Samuel', 'McCain', 'SMCCAIN', '650.501.3876', '1987-09-19', 'SH_CLERK', '3200.00', '0.00', '123', '50'),
    -> ('195', 'Vance', 'Jones', 'VJONES', '650.501.4876', '1987-09-20', 'SH_CLERK', '2800.00', '0.00', '123', '50'),
    -> ('196', 'Alana', 'Walsh', 'AWALSH', '650.507.9811', '1987-09-21', 'SH_CLERK', '3100.00', '0.00', '124', '50'),
    -> ('197', 'Kevin', 'Feeney', 'KFEENEY', '650.507.9822', '1987-09-22', 'SH_CLERK', '3000.00', '0.00', '124', '50'),
    -> ('198', 'Donald', 'OConnell', 'DOCONNEL', '650.507.9833', '1987-09-23', 'SH_CLERK', '2600.00', '0.00', '124', '50'),
    -> ('199', 'Douglas', 'Grant', 'DGRANT', '650.507.9844', '1987-09-24', 'SH_CLERK', '2600.00', '0.00', '124', '50'),
    -> ('200', 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', '1987-09-25', 'AD_ASST', '4400.00', '0.00', '101', '10'),
    -> ('201', 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', '1987-09-26', 'MK_MAN', '13000.00', '0.00', '100', '20'),
    -> ('202', 'Pat', 'Fay', 'PFAY', '603.123.6666', '1987-09-27', 'MK_REP', '6000.00', '0.00', '201', '20'),
    -> ('203', 'Susan', 'Mavris', 'SMAVRIS', '515.123.7777', '1987-09-28', 'HR_REP', '6500.00', '0.00', '101', '40'),
    -> ('204', 'Hermann', 'Baer', 'HBAER', '515.123.8888', '1987-09-29', 'PR_REP', '10000.00', '0.00', '101', '70'),
    -> ('205', 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', '1987-09-30', 'AC_MGR', '12000.00', '0.00', '101', '110'),
    -> ('206', 'William', 'Gietz', 'WGIETZ', '515.123.8181', '1987-10-01', 'AC_ACCOUNT', '8300.00', '0.00', '205', '110');
Query OK, 107 rows affected (0.00 sec)
Records: 107  Duplicates: 0  Warnings: 0

MariaDB [csd2204s2018]> CREATE TABLE IF NOT EXISTS `job_history` (
    ->   `EMPLOYEE_ID` decimal(6,0) NOT NULL,
    ->   `START_DATE` date NOT NULL,
    ->   `END_DATE` date NOT NULL,
    ->   `JOB_ID` varchar(10) NOT NULL,
    ->   `DEPARTMENT_ID` decimal(4,0) DEFAULT NULL,
    ->   PRIMARY KEY (`EMPLOYEE_ID`,`START_DATE`),
    ->   KEY `JHIST_DEPARTMENT_IX` (`DEPARTMENT_ID`),
    ->   KEY `JHIST_EMPLOYEE_IX` (`EMPLOYEE_ID`),
    ->   KEY `JHIST_JOB_IX` (`JOB_ID`)
    -> ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
Query OK, 0 rows affected (0.08 sec)

MariaDB [csd2204s2018]> INSERT INTO `job_history` (`EMPLOYEE_ID`, `START_DATE`, `END_DATE`, `JOB_ID`, `DEPARTMENT_ID`) VALUES
    -> ('102', '1993-01-13', '1998-07-24', 'IT_PROG', '60'),
    -> ('101', '1989-09-21', '1993-10-27', 'AC_ACCOUNT', '110'),
    -> ('101', '1993-10-28', '1997-03-15', 'AC_MGR', '110'),
    -> ('201', '1996-02-17', '1999-12-19', 'MK_REP', '20'),
    -> ('114', '1998-03-24', '1999-12-31', 'ST_CLERK', '50'),
    -> ('122', '1999-01-01', '1999-12-31', 'ST_CLERK', '50'),
    -> ('200', '1987-09-17', '1993-06-17', 'AD_ASST', '90'),
    -> ('176', '1998-03-24', '1998-12-31', 'SA_REP', '80'),
    -> ('176', '1999-01-01', '1999-12-31', 'SA_MAN', '80'),
    -> ('200', '1994-07-01', '1998-12-31', 'AC_ACCOUNT', '90'),
    -> ('0', '0000-00-00', '0000-00-00', '', '0');
Query OK, 11 rows affected (0.00 sec)
Records: 11  Duplicates: 0  Warnings: 0

MariaDB [csd2204s2018]> CREATE TABLE IF NOT EXISTS `jobs` (
    ->   `JOB_ID` varchar(10) NOT NULL DEFAULT '',
    ->   `JOB_TITLE` varchar(35) NOT NULL,
    ->   `MIN_SALARY` decimal(6,0) DEFAULT NULL,
    ->   `MAX_SALARY` decimal(6,0) DEFAULT NULL,
    ->   PRIMARY KEY (`JOB_ID`)
    -> ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
Query OK, 0 rows affected (0.09 sec)

MariaDB [csd2204s2018]> INSERT INTO `jobs` (`JOB_ID`, `JOB_TITLE`, `MIN_SALARY`, `MAX_SALARY`) VALUES
    -> ('AD_PRES', 'President', '20000', '40000'),
    -> ('AD_VP', 'Administration Vice President', '15000', '30000'),
    -> ('AD_ASST', 'Administration Assistant', '3000', '6000'),
    -> ('FI_MGR', 'Finance Manager', '8200', '16000'),
    -> ('FI_ACCOUNT', 'Accountant', '4200', '9000'),
    -> ('AC_MGR', 'Accounting Manager', '8200', '16000'),
    -> ('AC_ACCOUNT', 'Public Accountant', '4200', '9000'),
    -> ('SA_MAN', 'Sales Manager', '10000', '20000'),
    -> ('SA_REP', 'Sales Representative', '6000', '12000'),
    -> ('PU_MAN', 'Purchasing Manager', '8000', '15000'),
    -> ('PU_CLERK', 'Purchasing Clerk', '2500', '5500'),
    -> ('ST_MAN', 'Stock Manager', '5500', '8500'),
    -> ('ST_CLERK', 'Stock Clerk', '2000', '5000'),
    -> ('SH_CLERK', 'Shipping Clerk', '2500', '5500'),
    -> ('IT_PROG', 'Programmer', '4000', '10000'),
    -> ('MK_MAN', 'Marketing Manager', '9000', '15000'),
    -> ('MK_REP', 'Marketing Representative', '4000', '9000'),
    -> ('HR_REP', 'Human Resources Representative', '4000', '9000'),
    -> ('PR_REP', 'Public Relations Representative', '4500', '10500');
Query OK, 19 rows affected (0.00 sec)
Records: 19  Duplicates: 0  Warnings: 0

MariaDB [csd2204s2018]> CREATE TABLE IF NOT EXISTS `locations` (
    ->   `LOCATION_ID` decimal(4,0) NOT NULL DEFAULT '0',
    ->   `STREET_ADDRESS` varchar(40) DEFAULT NULL,
    ->   `POSTAL_CODE` varchar(12) DEFAULT NULL,
    ->   `CITY` varchar(30) NOT NULL,
    ->   `STATE_PROVINCE` varchar(25) DEFAULT NULL,
    ->   `COUNTRY_ID` varchar(2) DEFAULT NULL,
    ->   PRIMARY KEY (`LOCATION_ID`),
    ->   KEY `LOC_CITY_IX` (`CITY`),
    ->   KEY `LOC_COUNTRY_IX` (`COUNTRY_ID`),
    ->   KEY `LOC_STATE_PROVINCE_IX` (`STATE_PROVINCE`)
    -> ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
Query OK, 0 rows affected (0.08 sec)

MariaDB [csd2204s2018]> INSERT INTO `locations` (`LOCATION_ID`, `STREET_ADDRESS`, `POSTAL_CODE`, `CITY`, `STATE_PROVINCE`, `COUNTRY_ID`) VALUES
    -> ('1000', '1297 Via Cola di Rie', '989', 'Roma', '', 'IT'),
    -> ('1100', '93091 Calle della Testa', '10934', 'Venice', '', 'IT'),
    -> ('1200', '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 'JP'),
    -> ('1300', '9450 Kamiya-cho', '6823', 'Hiroshima', '', 'JP'),
    -> ('1400', '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US'),
    -> ('1500', '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US'),
    -> ('1600', '2007 Zagora St', '50090', 'South Brunswick', 'New Jersey', 'US'),
    -> ('1700', '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US'),
    -> ('1800', '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA'),
    -> ('1900', '6092 Boxwood St', 'YSW 9T2', 'Whitehorse', 'Yukon', 'CA'),
    -> ('2000', '40-5-12 Laogianggen', '190518', 'Beijing', '', 'CN'),
    -> ('2100', '1298 Vileparle (E)', '490231', 'Bombay', 'Maharashtra', 'IN'),
    -> ('2200', '12-98 Victoria Street', '2901', 'Sydney', 'New South Wales', 'AU'),
    -> ('2300', '198 Clementi North', '540198', 'Singapore', '', 'SG'),
    -> ('2400', '8204 Arthur St', '', 'London', '', 'UK'),
    -> ('2500', '"Magdalen Centre', ' The Oxford ', 'OX9 9ZB', 'Oxford', 'Ox'),
    -> ('2600', '9702 Chester Road', '9629850293', 'Stretford', 'Manchester', 'UK'),
    -> ('2700', 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE'),
    -> ('2800', 'Rua Frei Caneca 1360', '01307-002', 'Sao Paulo', 'Sao Paulo', 'BR'),
    -> ('2900', '20 Rue des Corps-Saints', '1730', 'Geneva', 'Geneve', 'CH'),
    -> ('3000', 'Murtenstrasse 921', '3095', 'Bern', 'BE', 'CH'),
    -> ('3100', 'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht', 'NL'),
    -> ('3200', 'Mariano Escobedo 9991', '11932', 'Mexico City', '"Distrito Federal', '"');
Query OK, 23 rows affected (0.00 sec)
Records: 23  Duplicates: 0  Warnings: 0

MariaDB [csd2204s2018]> CREATE TABLE IF NOT EXISTS `regions` (
    ->   `REGION_ID` decimal(5,0) NOT NULL,
    ->   `REGION_NAME` varchar(25) DEFAULT NULL,
    ->   PRIMARY KEY (`REGION_ID`),
    ->   UNIQUE KEY `sss` (`REGION_NAME`)
    -> ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
Query OK, 0 rows affected (0.08 sec)

MariaDB [csd2204s2018]> INSERT INTO `regions` (`REGION_ID`, `REGION_NAME`) VALUES
    -> ('1', 'Europe\r'),
    -> ('2', 'Americas\r'),
    -> ('3', 'Asia\r'),
    -> ('4', 'Middle East and Africa\r');
Query OK, 4 rows affected (0.00 sec)
Records: 4  Duplicates: 0  Warnings: 0

MariaDB [csd2204s2018]> 
MariaDB [csd2204s2018]> CREATE TABLE IF NOT EXISTS `departments` (
    ->   `DEPARTMENT_ID` decimal(4,0) NOT NULL DEFAULT '0',
    ->   `DEPARTMENT_NAME` varchar(30) NOT NULL,
    ->   `MANAGER_ID` decimal(6,0) DEFAULT NULL,
    ->   `LOCATION_ID` decimal(4,0) DEFAULT NULL,
    ->   PRIMARY KEY (`DEPARTMENT_ID`),
    ->   KEY `DEPT_MGR_FK` (`MANAGER_ID`),
    ->   KEY `DEPT_LOCATION_IX` (`LOCATION_ID`)
    -> ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
Query OK, 0 rows affected (0.08 sec)

MariaDB [csd2204s2018]> INSERT INTO `departments` (`DEPARTMENT_ID`, `DEPARTMENT_NAME`, `MANAGER_ID`, `LOCATION_ID`) VALUES
    -> ('10', 'Administration', '200', '1700'),
    -> ('20', 'Marketing', '201', '1800'),
    -> ('30', 'Purchasing', '114', '1700'),
    -> ('40', 'Human Resources', '203', '2400'),
    -> ('50', 'Shipping', '121', '1500'),
    -> ('60', 'IT', '103', '1400'),
    -> ('70', 'Public Relations', '204', '2700'),
    -> ('80', 'Sales', '145', '2500'),
    -> ('90', 'Executive', '100', '1700'),
    -> ('100', 'Finance', '108', '1700'),
    -> ('110', 'Accounting', '205', '1700'),
    -> ('120', 'Treasury', '0', '1700'),
    -> ('130', 'Corporate Tax', '0', '1700'),
    -> ('140', 'Control And Credit', '0', '1700'),
    -> ('150', 'Shareholder Services', '0', '1700'),
    -> ('160', 'Benefits', '0', '1700'),
    -> ('170', 'Manufacturing', '0', '1700'),
    -> ('180', 'Construction', '0', '1700'),
    -> ('190', 'Contracting', '0', '1700'),
    -> ('200', 'Operations', '0', '1700'),
    -> ('210', 'IT Support', '0', '1700'),
    -> ('220', 'NOC', '0', '1700'),
    -> ('230', 'IT Helpdesk', '0', '1700'),
    -> ('240', 'Government Sales', '0', '1700'),
    -> ('250', 'Retail Sales', '0', '1700'),
    -> ('260', 'Recruiting', '0', '1700'),
    -> ('270', 'Payroll', '0', '1700');
Query OK, 27 rows affected (0.00 sec)
Records: 27  Duplicates: 0  Warnings: 0

MariaDB [csd2204s2018]> CREATE TABLE IF NOT EXISTS `countries` (
    ->   `COUNTRY_ID` varchar(2) NOT NULL,
    ->   `COUNTRY_NAME` varchar(40) DEFAULT NULL,
    ->   `REGION_ID` decimal(10,0) DEFAULT NULL,
    ->   PRIMARY KEY (`COUNTRY_ID`),
    ->   KEY `COUNTR_REG_FK` (`REGION_ID`)
    -> ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
Query OK, 0 rows affected (0.03 sec)

MariaDB [csd2204s2018]> INSERT INTO `countries` (`COUNTRY_ID`, `COUNTRY_NAME`, `REGION_ID`) VALUES
    -> ('AR', 'Argentina', '2'),
    -> ('AU', 'Australia', '3'),
    -> ('BE', 'Belgium', '1'),
    -> ('BR', 'Brazil', '2'),
    -> ('CA', 'Canada', '2'),
    -> ('CH', 'Switzerland', '1'),
    -> ('CN', 'China', '3'),
    -> ('DE', 'Germany', '1'),
    -> ('DK', 'Denmark', '1'),
    -> ('EG', 'Egypt', '4'),
    -> ('FR', 'France', '1'),
    -> ('HK', 'HongKong', '3'),
    -> ('IL', 'Israel', '4'),
    -> ('IN', 'India', '3'),
    -> ('IT', 'Italy', '1'),
    -> ('JP', 'Japan', '3'),
    -> ('KW', 'Kuwait', '4'),
    -> ('MX', 'Mexico', '2'),
    -> ('NG', 'Nigeria', '4'),
    -> ('NL', 'Netherlands', '1'),
    -> ('SG', 'Singapore', '3'),
    -> ('UK', 'United Kingdom', '1'),
    -> ('US', 'United States of America', '2'),
    -> ('ZM', 'Zambia', '4'),
    -> ('ZW', 'Zimbabwe', '4');
Query OK, 25 rows affected (0.00 sec)
Records: 25  Duplicates: 0  Warnings: 0

MariaDB [csd2204s2018]> SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
Query OK, 0 rows affected (0.00 sec)

MariaDB [csd2204s2018]> SET time_zone = "+00:00";
Query OK, 0 rows affected (0.00 sec)

MariaDB [csd2204s2018]> SELECT first_name, last_name, salary FROM employees WHERE salary > (SELECT salary FROM employees WHERE last_name = 'Bell') ORDER BY first_name;
+-------------+------------+----------+
| first_name  | last_name  | salary   |
+-------------+------------+----------+
| Adam        | Fripp      |  8200.00 |
| Alberto     | Errazuriz  | 12000.00 |
| Alexander   | Hunold     |  9000.00 |
| Alexis      | Bull       |  4100.00 |
| Allan       | McEwen     |  9000.00 |
| Alyssa      | Hutton     |  8800.00 |
| Amit        | Banda      |  6200.00 |
| Bruce       | Ernst      |  6000.00 |
| Charles     | Johnson    |  6200.00 |
| Christopher | Olsen      |  8000.00 |
| Clara       | Vishney    | 10500.00 |
| Daniel      | Faviet     |  9000.00 |
| Danielle    | Greene     |  9500.00 |
| David       | Lee        |  6800.00 |
| David       | Austin     |  4800.00 |
| David       | Bernstein  |  9500.00 |
| Den         | Raphaely   | 11000.00 |
| Diana       | Lorentz    |  4200.00 |
| Eleni       | Zlotkey    | 10500.00 |
| Elizabeth   | Bates      |  7300.00 |
| Ellen       | Abel       | 11000.00 |
| Gerald      | Cambrault  | 11000.00 |
| Harrison    | Bloom      | 10000.00 |
| Hermann     | Baer       | 10000.00 |
| Ismael      | Sciarra    |  7700.00 |
| Jack        | Livingston |  8400.00 |
| Janette     | King       | 10000.00 |
| Jennifer    | Whalen     |  4400.00 |
| John        | Russell    | 14000.00 |
| John        | Chen       |  8200.00 |
| Jonathon    | Taylor     |  8600.00 |
| Jose Manuel | Urman      |  7800.00 |
| Karen       | Partners   | 13500.00 |
| Kevin       | Mourgos    |  5800.00 |
| Kimberely   | Grant      |  7000.00 |
| Lex         | De Haan    | 17000.00 |
| Lindsey     | Smith      |  8000.00 |
| Lisa        | Ozer       | 11500.00 |
| Louise      | Doran      |  7500.00 |
| Luis        | Popp       |  6900.00 |
| Mattea      | Marvins    |  7200.00 |
| Matthew     | Weiss      |  8000.00 |
| Michael     | Hartstein  | 13000.00 |
| Nancy       | Greenberg  | 12000.00 |
| Nandita     | Sarchand   |  4200.00 |
| Nanette     | Cambrault  |  7500.00 |
| Neena       | Kochhar    | 17000.00 |
| Oliver      | Tuvault    |  7000.00 |
| Pat         | Fay        |  6000.00 |
| Patrick     | Sully      |  9500.00 |
| Payam       | Kaufling   |  7900.00 |
| Peter       | Hall       |  9000.00 |
| Peter       | Tucker     | 10000.00 |
| Sarath      | Sewall     |  7000.00 |
| Shanta      | Vollman    |  6500.00 |
| Shelley     | Higgins    | 12000.00 |
| Steven      | King       | 24000.00 |
| Sundar      | Ande       |  6400.00 |
| Sundita     | Kumar      |  6100.00 |
| Susan       | Mavris     |  6500.00 |
| Tayler      | Fox        |  9600.00 |
| Valli       | Pataballa  |  4800.00 |
| William     | Smith      |  7400.00 |
| William     | Gietz      |  8300.00 |
+-------------+------------+----------+
64 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select first_name, last_name, salary FROM employees where salary =(SELECT MIN(min_salary)+1000 FROM jobs;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [csd2204s2018]> select first_name, last_name, salary FROM employees where salary =(SELECT MIN(min_salary)+1000) FROM jobs;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM jobs' at line 1
MariaDB [csd2204s2018]> select first_name, last_name, salary FROM employees where salary =(SELECT MIN(min_salary)+1000 FROM jobs);
+------------+-----------+---------+
| first_name | last_name | salary  |
+------------+-----------+---------+
| Anthony    | Cabrio    | 3000.00 |
| Kevin      | Feeney    | 3000.00 |
+------------+-----------+---------+
2 rows in set (0.00 sec)

MariaDB [csd2204s2018]> SELECT * FROM employees WHERE salary > ALL(SELECT avg(salary) FROM employees GROUP BY department_id);
+-------------+------------+-----------+-------+--------------+------------+---------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL | PHONE_NUMBER | HIRE_DATE  | JOB_ID  | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+-------+--------------+------------+---------+----------+----------------+------------+---------------+
|         100 | Steven     | King      | SKING | 515.123.4567 | 1987-06-17 | AD_PRES | 24000.00 |           0.00 |          0 |            90 |
+-------------+------------+-----------+-------+--------------+------------+---------+----------+----------------+------------+---------------+
1 row in set (0.00 sec)

MariaDB [csd2204s2018]> SELECT first_name, Last_name, salary FROM employees WHERE salary > ALL(SELECT avg(salary) FROM employees GROUP BY department_id);
+------------+-----------+----------+
| first_name | Last_name | salary   |
+------------+-----------+----------+
| Steven     | King      | 24000.00 |
+------------+-----------+----------+
1 row in set (0.00 sec)

MariaDB [csd2204s2018]> SELECT first_name,last_name, job_id, salary FROM employees WHERE salary > ALL (SELECT salary FROM employees WHERE job_id = 'SH_CLERK') ORDER BY salary ;
+-------------+------------+------------+----------+
| first_name  | last_name  | job_id     | salary   |
+-------------+------------+------------+----------+
| Jennifer    | Whalen     | AD_ASST    |  4400.00 |
| David       | Austin     | IT_PROG    |  4800.00 |
| Valli       | Pataballa  | IT_PROG    |  4800.00 |
| Kevin       | Mourgos    | ST_MAN     |  5800.00 |
| Bruce       | Ernst      | IT_PROG    |  6000.00 |
| Pat         | Fay        | MK_REP     |  6000.00 |
| Sundita     | Kumar      | SA_REP     |  6100.00 |
| Amit        | Banda      | SA_REP     |  6200.00 |
| Charles     | Johnson    | SA_REP     |  6200.00 |
| Sundar      | Ande       | SA_REP     |  6400.00 |
| Susan       | Mavris     | HR_REP     |  6500.00 |
| Shanta      | Vollman    | ST_MAN     |  6500.00 |
| David       | Lee        | SA_REP     |  6800.00 |
| Luis        | Popp       | FI_ACCOUNT |  6900.00 |
| Sarath      | Sewall     | SA_REP     |  7000.00 |
| Oliver      | Tuvault    | SA_REP     |  7000.00 |
| Kimberely   | Grant      | SA_REP     |  7000.00 |
| Mattea      | Marvins    | SA_REP     |  7200.00 |
| Elizabeth   | Bates      | SA_REP     |  7300.00 |
| William     | Smith      | SA_REP     |  7400.00 |
| Nanette     | Cambrault  | SA_REP     |  7500.00 |
| Louise      | Doran      | SA_REP     |  7500.00 |
| Ismael      | Sciarra    | FI_ACCOUNT |  7700.00 |
| Jose Manuel | Urman      | FI_ACCOUNT |  7800.00 |
| Payam       | Kaufling   | ST_MAN     |  7900.00 |
| Lindsey     | Smith      | SA_REP     |  8000.00 |
| Matthew     | Weiss      | ST_MAN     |  8000.00 |
| Christopher | Olsen      | SA_REP     |  8000.00 |
| Adam        | Fripp      | ST_MAN     |  8200.00 |
| John        | Chen       | FI_ACCOUNT |  8200.00 |
| William     | Gietz      | AC_ACCOUNT |  8300.00 |
| Jack        | Livingston | SA_REP     |  8400.00 |
| Jonathon    | Taylor     | SA_REP     |  8600.00 |
| Alyssa      | Hutton     | SA_REP     |  8800.00 |
| Allan       | McEwen     | SA_REP     |  9000.00 |
| Peter       | Hall       | SA_REP     |  9000.00 |
| Alexander   | Hunold     | IT_PROG    |  9000.00 |
| Daniel      | Faviet     | FI_ACCOUNT |  9000.00 |
| Patrick     | Sully      | SA_REP     |  9500.00 |
| Danielle    | Greene     | SA_REP     |  9500.00 |
| David       | Bernstein  | SA_REP     |  9500.00 |
| Tayler      | Fox        | SA_REP     |  9600.00 |
| Hermann     | Baer       | PR_REP     | 10000.00 |
| Harrison    | Bloom      | SA_REP     | 10000.00 |
| Janette     | King       | SA_REP     | 10000.00 |
| Peter       | Tucker     | SA_REP     | 10000.00 |
| Eleni       | Zlotkey    | SA_MAN     | 10500.00 |
| Clara       | Vishney    | SA_REP     | 10500.00 |
| Gerald      | Cambrault  | SA_MAN     | 11000.00 |
| Ellen       | Abel       | SA_REP     | 11000.00 |
| Den         | Raphaely   | PU_MAN     | 11000.00 |
| Lisa        | Ozer       | SA_REP     | 11500.00 |
| Alberto     | Errazuriz  | SA_MAN     | 12000.00 |
| Shelley     | Higgins    | AC_MGR     | 12000.00 |
| Nancy       | Greenberg  | FI_MGR     | 12000.00 |
| Michael     | Hartstein  | MK_MAN     | 13000.00 |
| Karen       | Partners   | SA_MAN     | 13500.00 |
| John        | Russell    | SA_MAN     | 14000.00 |
| Lex         | De Haan    | AD_VP      | 17000.00 |
| Neena       | Kochhar    | AD_VP      | 17000.00 |
| Steven      | King       | AD_PRES    | 24000.00 |
+-------------+------------+------------+----------+
61 rows in set (0.00 sec)

MariaDB [csd2204s2018]> SELECT max(salary)  FROM employees WHERE job_id='SH_CLERK';
+-------------+
| max(salary) |
+-------------+
|     4200.00 |
+-------------+
1 row in set (0.00 sec)

MariaDB [csd2204s2018]> SELECT first_name,last_name, job_id, salary FROM employees WHERE salary > (SELECT max(salary) FROM employees WHERE job_id = 'SH_CLERK') ORDER BY salary ;
+-------------+------------+------------+----------+
| first_name  | last_name  | job_id     | salary   |
+-------------+------------+------------+----------+
| Jennifer    | Whalen     | AD_ASST    |  4400.00 |
| David       | Austin     | IT_PROG    |  4800.00 |
| Valli       | Pataballa  | IT_PROG    |  4800.00 |
| Kevin       | Mourgos    | ST_MAN     |  5800.00 |
| Bruce       | Ernst      | IT_PROG    |  6000.00 |
| Pat         | Fay        | MK_REP     |  6000.00 |
| Sundita     | Kumar      | SA_REP     |  6100.00 |
| Amit        | Banda      | SA_REP     |  6200.00 |
| Charles     | Johnson    | SA_REP     |  6200.00 |
| Sundar      | Ande       | SA_REP     |  6400.00 |
| Susan       | Mavris     | HR_REP     |  6500.00 |
| Shanta      | Vollman    | ST_MAN     |  6500.00 |
| David       | Lee        | SA_REP     |  6800.00 |
| Luis        | Popp       | FI_ACCOUNT |  6900.00 |
| Sarath      | Sewall     | SA_REP     |  7000.00 |
| Oliver      | Tuvault    | SA_REP     |  7000.00 |
| Kimberely   | Grant      | SA_REP     |  7000.00 |
| Mattea      | Marvins    | SA_REP     |  7200.00 |
| Elizabeth   | Bates      | SA_REP     |  7300.00 |
| William     | Smith      | SA_REP     |  7400.00 |
| Nanette     | Cambrault  | SA_REP     |  7500.00 |
| Louise      | Doran      | SA_REP     |  7500.00 |
| Ismael      | Sciarra    | FI_ACCOUNT |  7700.00 |
| Jose Manuel | Urman      | FI_ACCOUNT |  7800.00 |
| Payam       | Kaufling   | ST_MAN     |  7900.00 |
| Lindsey     | Smith      | SA_REP     |  8000.00 |
| Matthew     | Weiss      | ST_MAN     |  8000.00 |
| Christopher | Olsen      | SA_REP     |  8000.00 |
| Adam        | Fripp      | ST_MAN     |  8200.00 |
| John        | Chen       | FI_ACCOUNT |  8200.00 |
| William     | Gietz      | AC_ACCOUNT |  8300.00 |
| Jack        | Livingston | SA_REP     |  8400.00 |
| Jonathon    | Taylor     | SA_REP     |  8600.00 |
| Alyssa      | Hutton     | SA_REP     |  8800.00 |
| Allan       | McEwen     | SA_REP     |  9000.00 |
| Peter       | Hall       | SA_REP     |  9000.00 |
| Alexander   | Hunold     | IT_PROG    |  9000.00 |
| Daniel      | Faviet     | FI_ACCOUNT |  9000.00 |
| Patrick     | Sully      | SA_REP     |  9500.00 |
| Danielle    | Greene     | SA_REP     |  9500.00 |
| David       | Bernstein  | SA_REP     |  9500.00 |
| Tayler      | Fox        | SA_REP     |  9600.00 |
| Hermann     | Baer       | PR_REP     | 10000.00 |
| Harrison    | Bloom      | SA_REP     | 10000.00 |
| Janette     | King       | SA_REP     | 10000.00 |
| Peter       | Tucker     | SA_REP     | 10000.00 |
| Eleni       | Zlotkey    | SA_MAN     | 10500.00 |
| Clara       | Vishney    | SA_REP     | 10500.00 |
| Gerald      | Cambrault  | SA_MAN     | 11000.00 |
| Ellen       | Abel       | SA_REP     | 11000.00 |
| Den         | Raphaely   | PU_MAN     | 11000.00 |
| Lisa        | Ozer       | SA_REP     | 11500.00 |
| Alberto     | Errazuriz  | SA_MAN     | 12000.00 |
| Shelley     | Higgins    | AC_MGR     | 12000.00 |
| Nancy       | Greenberg  | FI_MGR     | 12000.00 |
| Michael     | Hartstein  | MK_MAN     | 13000.00 |
| Karen       | Partners   | SA_MAN     | 13500.00 |
| John        | Russell    | SA_MAN     | 14000.00 |
| Lex         | De Haan    | AD_VP      | 17000.00 |
| Neena       | Kochhar    | AD_VP      | 17000.00 |
| Steven      | King       | AD_PRES    | 24000.00 |
+-------------+------------+------------+----------+
61 rows in set (0.00 sec)

MariaDB [csd2204s2018]> SELECT first_name,last_name, job_id, salary FROM employees WHERE salary =(SELECT max(salary) FROM employees WHERE job_id = 'SH_CLERK') ORDER BY salary ;
+------------+-----------+----------+---------+
| first_name | last_name | job_id   | salary  |
+------------+-----------+----------+---------+
| Diana      | Lorentz   | IT_PROG  | 4200.00 |
| Nandita    | Sarchand  | SH_CLERK | 4200.00 |
+------------+-----------+----------+---------+
2 rows in set (0.00 sec)

MariaDB [csd2204s2018]> SELECT first_name,last_name, job_id, salary FROM employees WHERE salary <ANY (SELECT salary FROM employees WHERE job_id = 'SH_CLERK') ORDER BY salary ;
+------------+-------------+----------+---------+
| first_name | last_name   | job_id   | salary  |
+------------+-------------+----------+---------+
| TJ         | Olson       | ST_CLERK | 2100.00 |
| Hazel      | Philtanker  | ST_CLERK | 2200.00 |
| Steven     | Markle      | ST_CLERK | 2200.00 |
| Ki         | Gee         | ST_CLERK | 2400.00 |
| James      | Landry      | ST_CLERK | 2400.00 |
| Martha     | Sullivan    | SH_CLERK | 2500.00 |
| James      | Marlow      | ST_CLERK | 2500.00 |
| Randall    | Perkins     | SH_CLERK | 2500.00 |
| Karen      | Colmenares  | PU_CLERK | 2500.00 |
| Peter      | Vargas      | ST_CLERK | 2500.00 |
| Joshua     | Patel       | ST_CLERK | 2500.00 |
| Douglas    | Grant       | SH_CLERK | 2600.00 |
| Donald     | OConnell    | SH_CLERK | 2600.00 |
| Guy        | Himuro      | PU_CLERK | 2600.00 |
| Randall    | Matos       | ST_CLERK | 2600.00 |
| Irene      | Mikkilineni | ST_CLERK | 2700.00 |
| John       | Seo         | ST_CLERK | 2700.00 |
| Mozhe      | Atkinson    | ST_CLERK | 2800.00 |
| Vance      | Jones       | SH_CLERK | 2800.00 |
| Sigal      | Tobias      | PU_CLERK | 2800.00 |
| Girard     | Geoni       | SH_CLERK | 2800.00 |
| Michael    | Rogers      | ST_CLERK | 2900.00 |
| Timothy    | Gates       | SH_CLERK | 2900.00 |
| Shelli     | Baida       | PU_CLERK | 2900.00 |
| Kevin      | Feeney      | SH_CLERK | 3000.00 |
| Anthony    | Cabrio      | SH_CLERK | 3000.00 |
| Alana      | Walsh       | SH_CLERK | 3100.00 |
| Jean       | Fleaur      | SH_CLERK | 3100.00 |
| Alexander  | Khoo        | PU_CLERK | 3100.00 |
| Curtis     | Davies      | ST_CLERK | 3100.00 |
| Stephen    | Stiles      | ST_CLERK | 3200.00 |
| Julia      | Nayer       | ST_CLERK | 3200.00 |
| Samuel     | McCain      | SH_CLERK | 3200.00 |
| Winston    | Taylor      | SH_CLERK | 3200.00 |
| Jason      | Mallin      | ST_CLERK | 3300.00 |
| Laura      | Bissot      | ST_CLERK | 3300.00 |
| Julia      | Dellinger   | SH_CLERK | 3400.00 |
| Trenna     | Rajs        | ST_CLERK | 3500.00 |
| Renske     | Ladwig      | ST_CLERK | 3600.00 |
| Jennifer   | Dilly       | SH_CLERK | 3600.00 |
| Kelly      | Chung       | SH_CLERK | 3800.00 |
| Britney    | Everett     | SH_CLERK | 3900.00 |
| Sarah      | Bell        | SH_CLERK | 4000.00 |
| Alexis     | Bull        | SH_CLERK | 4100.00 |
+------------+-------------+----------+---------+
44 rows in set (0.00 sec)

MariaDB [csd2204s2018]> Select manager_id fom epmloyess where manager_id !=0;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'epmloyess where manager_id !=0' at line 1
MariaDB [csd2204s2018]> Select manager_id from epmloyess where manager_id !=0;
ERROR 1146 (42S02): Table 'csd2204s2018.epmloyess' doesn't exist
MariaDB [csd2204s2018]> Select manager_id from epmloyees where manager_id !=0;
ERROR 1146 (42S02): Table 'csd2204s2018.epmloyees' doesn't exist
MariaDB [csd2204s2018]> Select manager_id from epmloyee where manager_id !=0;
ERROR 1146 (42S02): Table 'csd2204s2018.epmloyee' doesn't exist
MariaDB [csd2204s2018]> Select manager_id from employees where manager_id !=0;
+------------+
| manager_id |
+------------+
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        100 |
|        101 |
|        101 |
|        101 |
|        101 |
|        101 |
|        102 |
|        103 |
|        103 |
|        103 |
|        103 |
|        108 |
|        108 |
|        108 |
|        108 |
|        108 |
|        114 |
|        114 |
|        114 |
|        114 |
|        114 |
|        120 |
|        120 |
|        120 |
|        120 |
|        120 |
|        120 |
|        120 |
|        120 |
|        121 |
|        121 |
|        121 |
|        121 |
|        121 |
|        121 |
|        121 |
|        121 |
|        122 |
|        122 |
|        122 |
|        122 |
|        122 |
|        122 |
|        122 |
|        122 |
|        123 |
|        123 |
|        123 |
|        123 |
|        123 |
|        123 |
|        123 |
|        123 |
|        124 |
|        124 |
|        124 |
|        124 |
|        124 |
|        124 |
|        124 |
|        124 |
|        145 |
|        145 |
|        145 |
|        145 |
|        145 |
|        145 |
|        146 |
|        146 |
|        146 |
|        146 |
|        146 |
|        146 |
|        147 |
|        147 |
|        147 |
|        147 |
|        147 |
|        147 |
|        148 |
|        148 |
|        148 |
|        148 |
|        148 |
|        148 |
|        149 |
|        149 |
|        149 |
|        149 |
|        149 |
|        149 |
|        201 |
|        205 |
+------------+
106 rows in set (0.00 sec)

MariaDB [csd2204s2018]> Select distinct(manager_id) from employees where manager_id !=0;
+------------+
| manager_id |
+------------+
|        100 |
|        101 |
|        102 |
|        103 |
|        108 |
|        114 |
|        120 |
|        121 |
|        122 |
|        123 |
|        124 |
|        145 |
|        146 |
|        147 |
|        148 |
|        149 |
|        201 |
|        205 |
+------------+
18 rows in set (0.00 sec)

MariaDB [csd2204s2018]> Select first_name, last_name from employees where employee_id NOT IN(Select distinct(manager_id) from employees where manager_id !=0);
+-------------+-------------+
| first_name  | last_name   |
+-------------+-------------+
| Bruce       | Ernst       |
| David       | Austin      |
| Valli       | Pataballa   |
| Diana       | Lorentz     |
| Daniel      | Faviet      |
| John        | Chen        |
| Ismael      | Sciarra     |
| Jose Manuel | Urman       |
| Luis        | Popp        |
| Alexander   | Khoo        |
| Shelli      | Baida       |
| Sigal       | Tobias      |
| Guy         | Himuro      |
| Karen       | Colmenares  |
| Julia       | Nayer       |
| Irene       | Mikkilineni |
| James       | Landry      |
| Steven      | Markle      |
| Laura       | Bissot      |
| Mozhe       | Atkinson    |
| James       | Marlow      |
| TJ          | Olson       |
| Jason       | Mallin      |
| Michael     | Rogers      |
| Ki          | Gee         |
| Hazel       | Philtanker  |
| Renske      | Ladwig      |
| Stephen     | Stiles      |
| John        | Seo         |
| Joshua      | Patel       |
| Trenna      | Rajs        |
| Curtis      | Davies      |
| Randall     | Matos       |
| Peter       | Vargas      |
| Peter       | Tucker      |
| David       | Bernstein   |
| Peter       | Hall        |
| Christopher | Olsen       |
| Nanette     | Cambrault   |
| Oliver      | Tuvault     |
| Janette     | King        |
| Patrick     | Sully       |
| Allan       | McEwen      |
| Lindsey     | Smith       |
| Louise      | Doran       |
| Sarath      | Sewall      |
| Clara       | Vishney     |
| Danielle    | Greene      |
| Mattea      | Marvins     |
| David       | Lee         |
| Sundar      | Ande        |
| Amit        | Banda       |
| Lisa        | Ozer        |
| Harrison    | Bloom       |
| Tayler      | Fox         |
| William     | Smith       |
| Elizabeth   | Bates       |
| Sundita     | Kumar       |
| Ellen       | Abel        |
| Alyssa      | Hutton      |
| Jonathon    | Taylor      |
| Jack        | Livingston  |
| Kimberely   | Grant       |
| Charles     | Johnson     |
| Winston     | Taylor      |
| Jean        | Fleaur      |
| Martha      | Sullivan    |
| Girard      | Geoni       |
| Nandita     | Sarchand    |
| Alexis      | Bull        |
| Julia       | Dellinger   |
| Anthony     | Cabrio      |
| Kelly       | Chung       |
| Jennifer    | Dilly       |
| Timothy     | Gates       |
| Randall     | Perkins     |
| Sarah       | Bell        |
| Britney     | Everett     |
| Samuel      | McCain      |
| Vance       | Jones       |
| Alana       | Walsh       |
| Kevin       | Feeney      |
| Donald      | OConnell    |
| Douglas     | Grant       |
| Jennifer    | Whalen      |
| Pat         | Fay         |
| Susan       | Mavris      |
| Hermann     | Baer        |
| William     | Gietz       |
+-------------+-------------+
89 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select b.first_name, b.last_name
    -> from eployees b where not exists
    -> (select 'x' from employees a where a.manager_id = b.employee_id);
ERROR 1146 (42S02): Table 'csd2204s2018.eployees' doesn't exist
MariaDB [csd2204s2018]> select b.first_name, b.last_name
    -> from employees b where not exists
    -> (select 'x' from employees a where a.manager_id = b.employee_id);
+-------------+-------------+
| first_name  | last_name   |
+-------------+-------------+
| Bruce       | Ernst       |
| David       | Austin      |
| Valli       | Pataballa   |
| Diana       | Lorentz     |
| Daniel      | Faviet      |
| John        | Chen        |
| Ismael      | Sciarra     |
| Jose Manuel | Urman       |
| Luis        | Popp        |
| Alexander   | Khoo        |
| Shelli      | Baida       |
| Sigal       | Tobias      |
| Guy         | Himuro      |
| Karen       | Colmenares  |
| Julia       | Nayer       |
| Irene       | Mikkilineni |
| James       | Landry      |
| Steven      | Markle      |
| Laura       | Bissot      |
| Mozhe       | Atkinson    |
| James       | Marlow      |
| TJ          | Olson       |
| Jason       | Mallin      |
| Michael     | Rogers      |
| Ki          | Gee         |
| Hazel       | Philtanker  |
| Renske      | Ladwig      |
| Stephen     | Stiles      |
| John        | Seo         |
| Joshua      | Patel       |
| Trenna      | Rajs        |
| Curtis      | Davies      |
| Randall     | Matos       |
| Peter       | Vargas      |
| Peter       | Tucker      |
| David       | Bernstein   |
| Peter       | Hall        |
| Christopher | Olsen       |
| Nanette     | Cambrault   |
| Oliver      | Tuvault     |
| Janette     | King        |
| Patrick     | Sully       |
| Allan       | McEwen      |
| Lindsey     | Smith       |
| Louise      | Doran       |
| Sarath      | Sewall      |
| Clara       | Vishney     |
| Danielle    | Greene      |
| Mattea      | Marvins     |
| David       | Lee         |
| Sundar      | Ande        |
| Amit        | Banda       |
| Lisa        | Ozer        |
| Harrison    | Bloom       |
| Tayler      | Fox         |
| William     | Smith       |
| Elizabeth   | Bates       |
| Sundita     | Kumar       |
| Ellen       | Abel        |
| Alyssa      | Hutton      |
| Jonathon    | Taylor      |
| Jack        | Livingston  |
| Kimberely   | Grant       |
| Charles     | Johnson     |
| Winston     | Taylor      |
| Jean        | Fleaur      |
| Martha      | Sullivan    |
| Girard      | Geoni       |
| Nandita     | Sarchand    |
| Alexis      | Bull        |
| Julia       | Dellinger   |
| Anthony     | Cabrio      |
| Kelly       | Chung       |
| Jennifer    | Dilly       |
| Timothy     | Gates       |
| Randall     | Perkins     |
| Sarah       | Bell        |
| Britney     | Everett     |
| Samuel      | McCain      |
| Vance       | Jones       |
| Alana       | Walsh       |
| Kevin       | Feeney      |
| Donald      | OConnell    |
| Douglas     | Grant       |
| Jennifer    | Whalen      |
| Pat         | Fay         |
| Susan       | Mavris      |
| Hermann     | Baer        |
| William     | Gietz       |
+-------------+-------------+
89 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select employee_id, first_name, last_name, (select department_name from departments d where e.department_id = d.department_id) from employees;
ERROR 1054 (42S22): Unknown column 'e.department_id' in 'where clause'
MariaDB [csd2204s2018]> select employee_id, first_name, last_name, (select department_name from departments d where e.department_id = d.department_id) department from employees;
ERROR 1054 (42S22): Unknown column 'e.department_id' in 'where clause'
MariaDB [csd2204s2018]> select * from employees;
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME  | LAST_NAME   | EMAIL    | PHONE_NUMBER       | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
|         100 | Steven      | King        | SKING    | 515.123.4567       | 1987-06-17 | AD_PRES    | 24000.00 |           0.00 |          0 |            90 |
|         101 | Neena       | Kochhar     | NKOCHHAR | 515.123.4568       | 1987-06-18 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         102 | Lex         | De Haan     | LDEHAAN  | 515.123.4569       | 1987-06-19 | AD_VP      | 17000.00 |           0.00 |        100 |            90 |
|         103 | Alexander   | Hunold      | AHUNOLD  | 590.423.4567       | 1987-06-20 | IT_PROG    |  9000.00 |           0.00 |        102 |            60 |
|         104 | Bruce       | Ernst       | BERNST   | 590.423.4568       | 1987-06-21 | IT_PROG    |  6000.00 |           0.00 |        103 |            60 |
|         105 | David       | Austin      | DAUSTIN  | 590.423.4569       | 1987-06-22 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         106 | Valli       | Pataballa   | VPATABAL | 590.423.4560       | 1987-06-23 | IT_PROG    |  4800.00 |           0.00 |        103 |            60 |
|         107 | Diana       | Lorentz     | DLORENTZ | 590.423.5567       | 1987-06-24 | IT_PROG    |  4200.00 |           0.00 |        103 |            60 |
|         108 | Nancy       | Greenberg   | NGREENBE | 515.124.4569       | 1987-06-25 | FI_MGR     | 12000.00 |           0.00 |        101 |           100 |
|         109 | Daniel      | Faviet      | DFAVIET  | 515.124.4169       | 1987-06-26 | FI_ACCOUNT |  9000.00 |           0.00 |        108 |           100 |
|         110 | John        | Chen        | JCHEN    | 515.124.4269       | 1987-06-27 | FI_ACCOUNT |  8200.00 |           0.00 |        108 |           100 |
|         111 | Ismael      | Sciarra     | ISCIARRA | 515.124.4369       | 1987-06-28 | FI_ACCOUNT |  7700.00 |           0.00 |        108 |           100 |
|         112 | Jose Manuel | Urman       | JMURMAN  | 515.124.4469       | 1987-06-29 | FI_ACCOUNT |  7800.00 |           0.00 |        108 |           100 |
|         113 | Luis        | Popp        | LPOPP    | 515.124.4567       | 1987-06-30 | FI_ACCOUNT |  6900.00 |           0.00 |        108 |           100 |
|         114 | Den         | Raphaely    | DRAPHEAL | 515.127.4561       | 1987-07-01 | PU_MAN     | 11000.00 |           0.00 |        100 |            30 |
|         115 | Alexander   | Khoo        | AKHOO    | 515.127.4562       | 1987-07-02 | PU_CLERK   |  3100.00 |           0.00 |        114 |            30 |
|         116 | Shelli      | Baida       | SBAIDA   | 515.127.4563       | 1987-07-03 | PU_CLERK   |  2900.00 |           0.00 |        114 |            30 |
|         117 | Sigal       | Tobias      | STOBIAS  | 515.127.4564       | 1987-07-04 | PU_CLERK   |  2800.00 |           0.00 |        114 |            30 |
|         118 | Guy         | Himuro      | GHIMURO  | 515.127.4565       | 1987-07-05 | PU_CLERK   |  2600.00 |           0.00 |        114 |            30 |
|         119 | Karen       | Colmenares  | KCOLMENA | 515.127.4566       | 1987-07-06 | PU_CLERK   |  2500.00 |           0.00 |        114 |            30 |
|         120 | Matthew     | Weiss       | MWEISS   | 650.123.1234       | 1987-07-07 | ST_MAN     |  8000.00 |           0.00 |        100 |            50 |
|         121 | Adam        | Fripp       | AFRIPP   | 650.123.2234       | 1987-07-08 | ST_MAN     |  8200.00 |           0.00 |        100 |            50 |
|         122 | Payam       | Kaufling    | PKAUFLIN | 650.123.3234       | 1987-07-09 | ST_MAN     |  7900.00 |           0.00 |        100 |            50 |
|         123 | Shanta      | Vollman     | SVOLLMAN | 650.123.4234       | 1987-07-10 | ST_MAN     |  6500.00 |           0.00 |        100 |            50 |
|         124 | Kevin       | Mourgos     | KMOURGOS | 650.123.5234       | 1987-07-11 | ST_MAN     |  5800.00 |           0.00 |        100 |            50 |
|         125 | Julia       | Nayer       | JNAYER   | 650.124.1214       | 1987-07-12 | ST_CLERK   |  3200.00 |           0.00 |        120 |            50 |
|         126 | Irene       | Mikkilineni | IMIKKILI | 650.124.1224       | 1987-07-13 | ST_CLERK   |  2700.00 |           0.00 |        120 |            50 |
|         127 | James       | Landry      | JLANDRY  | 650.124.1334       | 1987-07-14 | ST_CLERK   |  2400.00 |           0.00 |        120 |            50 |
|         128 | Steven      | Markle      | SMARKLE  | 650.124.1434       | 1987-07-15 | ST_CLERK   |  2200.00 |           0.00 |        120 |            50 |
|         129 | Laura       | Bissot      | LBISSOT  | 650.124.5234       | 1987-07-16 | ST_CLERK   |  3300.00 |           0.00 |        121 |            50 |
|         130 | Mozhe       | Atkinson    | MATKINSO | 650.124.6234       | 1987-07-17 | ST_CLERK   |  2800.00 |           0.00 |        121 |            50 |
|         131 | James       | Marlow      | JAMRLOW  | 650.124.7234       | 1987-07-18 | ST_CLERK   |  2500.00 |           0.00 |        121 |            50 |
|         132 | TJ          | Olson       | TJOLSON  | 650.124.8234       | 1987-07-19 | ST_CLERK   |  2100.00 |           0.00 |        121 |            50 |
|         133 | Jason       | Mallin      | JMALLIN  | 650.127.1934       | 1987-07-20 | ST_CLERK   |  3300.00 |           0.00 |        122 |            50 |
|         134 | Michael     | Rogers      | MROGERS  | 650.127.1834       | 1987-07-21 | ST_CLERK   |  2900.00 |           0.00 |        122 |            50 |
|         135 | Ki          | Gee         | KGEE     | 650.127.1734       | 1987-07-22 | ST_CLERK   |  2400.00 |           0.00 |        122 |            50 |
|         136 | Hazel       | Philtanker  | HPHILTAN | 650.127.1634       | 1987-07-23 | ST_CLERK   |  2200.00 |           0.00 |        122 |            50 |
|         137 | Renske      | Ladwig      | RLADWIG  | 650.121.1234       | 1987-07-24 | ST_CLERK   |  3600.00 |           0.00 |        123 |            50 |
|         138 | Stephen     | Stiles      | SSTILES  | 650.121.2034       | 1987-07-25 | ST_CLERK   |  3200.00 |           0.00 |        123 |            50 |
|         139 | John        | Seo         | JSEO     | 650.121.2019       | 1987-07-26 | ST_CLERK   |  2700.00 |           0.00 |        123 |            50 |
|         140 | Joshua      | Patel       | JPATEL   | 650.121.1834       | 1987-07-27 | ST_CLERK   |  2500.00 |           0.00 |        123 |            50 |
|         141 | Trenna      | Rajs        | TRAJS    | 650.121.8009       | 1987-07-28 | ST_CLERK   |  3500.00 |           0.00 |        124 |            50 |
|         142 | Curtis      | Davies      | CDAVIES  | 650.121.2994       | 1987-07-29 | ST_CLERK   |  3100.00 |           0.00 |        124 |            50 |
|         143 | Randall     | Matos       | RMATOS   | 650.121.2874       | 1987-07-30 | ST_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         144 | Peter       | Vargas      | PVARGAS  | 650.121.2004       | 1987-07-31 | ST_CLERK   |  2500.00 |           0.00 |        124 |            50 |
|         145 | John        | Russell     | JRUSSEL  | 011.44.1344.429268 | 1987-08-01 | SA_MAN     | 14000.00 |           0.40 |        100 |            80 |
|         146 | Karen       | Partners    | KPARTNER | 011.44.1344.467268 | 1987-08-02 | SA_MAN     | 13500.00 |           0.30 |        100 |            80 |
|         147 | Alberto     | Errazuriz   | AERRAZUR | 011.44.1344.429278 | 1987-08-03 | SA_MAN     | 12000.00 |           0.30 |        100 |            80 |
|         148 | Gerald      | Cambrault   | GCAMBRAU | 011.44.1344.619268 | 1987-08-04 | SA_MAN     | 11000.00 |           0.30 |        100 |            80 |
|         149 | Eleni       | Zlotkey     | EZLOTKEY | 011.44.1344.429018 | 1987-08-05 | SA_MAN     | 10500.00 |           0.20 |        100 |            80 |
|         150 | Peter       | Tucker      | PTUCKER  | 011.44.1344.129268 | 1987-08-06 | SA_REP     | 10000.00 |           0.30 |        145 |            80 |
|         151 | David       | Bernstein   | DBERNSTE | 011.44.1344.345268 | 1987-08-07 | SA_REP     |  9500.00 |           0.25 |        145 |            80 |
|         152 | Peter       | Hall        | PHALL    | 011.44.1344.478968 | 1987-08-08 | SA_REP     |  9000.00 |           0.25 |        145 |            80 |
|         153 | Christopher | Olsen       | COLSEN   | 011.44.1344.498718 | 1987-08-09 | SA_REP     |  8000.00 |           0.20 |        145 |            80 |
|         154 | Nanette     | Cambrault   | NCAMBRAU | 011.44.1344.987668 | 1987-08-10 | SA_REP     |  7500.00 |           0.20 |        145 |            80 |
|         155 | Oliver      | Tuvault     | OTUVAULT | 011.44.1344.486508 | 1987-08-11 | SA_REP     |  7000.00 |           0.15 |        145 |            80 |
|         156 | Janette     | King        | JKING    | 011.44.1345.429268 | 1987-08-12 | SA_REP     | 10000.00 |           0.35 |        146 |            80 |
|         157 | Patrick     | Sully       | PSULLY   | 011.44.1345.929268 | 1987-08-13 | SA_REP     |  9500.00 |           0.35 |        146 |            80 |
|         158 | Allan       | McEwen      | AMCEWEN  | 011.44.1345.829268 | 1987-08-14 | SA_REP     |  9000.00 |           0.35 |        146 |            80 |
|         159 | Lindsey     | Smith       | LSMITH   | 011.44.1345.729268 | 1987-08-15 | SA_REP     |  8000.00 |           0.30 |        146 |            80 |
|         160 | Louise      | Doran       | LDORAN   | 011.44.1345.629268 | 1987-08-16 | SA_REP     |  7500.00 |           0.30 |        146 |            80 |
|         161 | Sarath      | Sewall      | SSEWALL  | 011.44.1345.529268 | 1987-08-17 | SA_REP     |  7000.00 |           0.25 |        146 |            80 |
|         162 | Clara       | Vishney     | CVISHNEY | 011.44.1346.129268 | 1987-08-18 | SA_REP     | 10500.00 |           0.25 |        147 |            80 |
|         163 | Danielle    | Greene      | DGREENE  | 011.44.1346.229268 | 1987-08-19 | SA_REP     |  9500.00 |           0.15 |        147 |            80 |
|         164 | Mattea      | Marvins     | MMARVINS | 011.44.1346.329268 | 1987-08-20 | SA_REP     |  7200.00 |           0.10 |        147 |            80 |
|         165 | David       | Lee         | DLEE     | 011.44.1346.529268 | 1987-08-21 | SA_REP     |  6800.00 |           0.10 |        147 |            80 |
|         166 | Sundar      | Ande        | SANDE    | 011.44.1346.629268 | 1987-08-22 | SA_REP     |  6400.00 |           0.10 |        147 |            80 |
|         167 | Amit        | Banda       | ABANDA   | 011.44.1346.729268 | 1987-08-23 | SA_REP     |  6200.00 |           0.10 |        147 |            80 |
|         168 | Lisa        | Ozer        | LOZER    | 011.44.1343.929268 | 1987-08-24 | SA_REP     | 11500.00 |           0.25 |        148 |            80 |
|         169 | Harrison    | Bloom       | HBLOOM   | 011.44.1343.829268 | 1987-08-25 | SA_REP     | 10000.00 |           0.20 |        148 |            80 |
|         170 | Tayler      | Fox         | TFOX     | 011.44.1343.729268 | 1987-08-26 | SA_REP     |  9600.00 |           0.20 |        148 |            80 |
|         171 | William     | Smith       | WSMITH   | 011.44.1343.629268 | 1987-08-27 | SA_REP     |  7400.00 |           0.15 |        148 |            80 |
|         172 | Elizabeth   | Bates       | EBATES   | 011.44.1343.529268 | 1987-08-28 | SA_REP     |  7300.00 |           0.15 |        148 |            80 |
|         173 | Sundita     | Kumar       | SKUMAR   | 011.44.1343.329268 | 1987-08-29 | SA_REP     |  6100.00 |           0.10 |        148 |            80 |
|         174 | Ellen       | Abel        | EABEL    | 011.44.1644.429267 | 1987-08-30 | SA_REP     | 11000.00 |           0.30 |        149 |            80 |
|         175 | Alyssa      | Hutton      | AHUTTON  | 011.44.1644.429266 | 1987-08-31 | SA_REP     |  8800.00 |           0.25 |        149 |            80 |
|         176 | Jonathon    | Taylor      | JTAYLOR  | 011.44.1644.429265 | 1987-09-01 | SA_REP     |  8600.00 |           0.20 |        149 |            80 |
|         177 | Jack        | Livingston  | JLIVINGS | 011.44.1644.429264 | 1987-09-02 | SA_REP     |  8400.00 |           0.20 |        149 |            80 |
|         178 | Kimberely   | Grant       | KGRANT   | 011.44.1644.429263 | 1987-09-03 | SA_REP     |  7000.00 |           0.15 |        149 |             0 |
|         179 | Charles     | Johnson     | CJOHNSON | 011.44.1644.429262 | 1987-09-04 | SA_REP     |  6200.00 |           0.10 |        149 |            80 |
|         180 | Winston     | Taylor      | WTAYLOR  | 650.507.9876       | 1987-09-05 | SH_CLERK   |  3200.00 |           0.00 |        120 |            50 |
|         181 | Jean        | Fleaur      | JFLEAUR  | 650.507.9877       | 1987-09-06 | SH_CLERK   |  3100.00 |           0.00 |        120 |            50 |
|         182 | Martha      | Sullivan    | MSULLIVA | 650.507.9878       | 1987-09-07 | SH_CLERK   |  2500.00 |           0.00 |        120 |            50 |
|         183 | Girard      | Geoni       | GGEONI   | 650.507.9879       | 1987-09-08 | SH_CLERK   |  2800.00 |           0.00 |        120 |            50 |
|         184 | Nandita     | Sarchand    | NSARCHAN | 650.509.1876       | 1987-09-09 | SH_CLERK   |  4200.00 |           0.00 |        121 |            50 |
|         185 | Alexis      | Bull        | ABULL    | 650.509.2876       | 1987-09-10 | SH_CLERK   |  4100.00 |           0.00 |        121 |            50 |
|         186 | Julia       | Dellinger   | JDELLING | 650.509.3876       | 1987-09-11 | SH_CLERK   |  3400.00 |           0.00 |        121 |            50 |
|         187 | Anthony     | Cabrio      | ACABRIO  | 650.509.4876       | 1987-09-12 | SH_CLERK   |  3000.00 |           0.00 |        121 |            50 |
|         188 | Kelly       | Chung       | KCHUNG   | 650.505.1876       | 1987-09-13 | SH_CLERK   |  3800.00 |           0.00 |        122 |            50 |
|         189 | Jennifer    | Dilly       | JDILLY   | 650.505.2876       | 1987-09-14 | SH_CLERK   |  3600.00 |           0.00 |        122 |            50 |
|         190 | Timothy     | Gates       | TGATES   | 650.505.3876       | 1987-09-15 | SH_CLERK   |  2900.00 |           0.00 |        122 |            50 |
|         191 | Randall     | Perkins     | RPERKINS | 650.505.4876       | 1987-09-16 | SH_CLERK   |  2500.00 |           0.00 |        122 |            50 |
|         192 | Sarah       | Bell        | SBELL    | 650.501.1876       | 1987-09-17 | SH_CLERK   |  4000.00 |           0.00 |        123 |            50 |
|         193 | Britney     | Everett     | BEVERETT | 650.501.2876       | 1987-09-18 | SH_CLERK   |  3900.00 |           0.00 |        123 |            50 |
|         194 | Samuel      | McCain      | SMCCAIN  | 650.501.3876       | 1987-09-19 | SH_CLERK   |  3200.00 |           0.00 |        123 |            50 |
|         195 | Vance       | Jones       | VJONES   | 650.501.4876       | 1987-09-20 | SH_CLERK   |  2800.00 |           0.00 |        123 |            50 |
|         196 | Alana       | Walsh       | AWALSH   | 650.507.9811       | 1987-09-21 | SH_CLERK   |  3100.00 |           0.00 |        124 |            50 |
|         197 | Kevin       | Feeney      | KFEENEY  | 650.507.9822       | 1987-09-22 | SH_CLERK   |  3000.00 |           0.00 |        124 |            50 |
|         198 | Donald      | OConnell    | DOCONNEL | 650.507.9833       | 1987-09-23 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         199 | Douglas     | Grant       | DGRANT   | 650.507.9844       | 1987-09-24 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         200 | Jennifer    | Whalen      | JWHALEN  | 515.123.4444       | 1987-09-25 | AD_ASST    |  4400.00 |           0.00 |        101 |            10 |
|         201 | Michael     | Hartstein   | MHARTSTE | 515.123.5555       | 1987-09-26 | MK_MAN     | 13000.00 |           0.00 |        100 |            20 |
|         202 | Pat         | Fay         | PFAY     | 603.123.6666       | 1987-09-27 | MK_REP     |  6000.00 |           0.00 |        201 |            20 |
|         203 | Susan       | Mavris      | SMAVRIS  | 515.123.7777       | 1987-09-28 | HR_REP     |  6500.00 |           0.00 |        101 |            40 |
|         204 | Hermann     | Baer        | HBAER    | 515.123.8888       | 1987-09-29 | PR_REP     | 10000.00 |           0.00 |        101 |            70 |
|         205 | Shelley     | Higgins     | SHIGGINS | 515.123.8080       | 1987-09-30 | AC_MGR     | 12000.00 |           0.00 |        101 |           110 |
|         206 | William     | Gietz       | WGIETZ   | 515.123.8181       | 1987-10-01 | AC_ACCOUNT |  8300.00 |           0.00 |        205 |           110 |
+-------------+-------------+-------------+----------+--------------------+------------+------------+----------+----------------+------------+---------------+
107 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select employee_id, first_name, last_name, (select department_name from departments d where e.department_id = d.department_id) departments from employees;
ERROR 1054 (42S22): Unknown column 'e.department_id' in 'where clause'
MariaDB [csd2204s2018]> select * from department;
ERROR 1146 (42S02): Table 'csd2204s2018.department' doesn't exist
MariaDB [csd2204s2018]> select * from departments;
+---------------+----------------------+------------+-------------+
| DEPARTMENT_ID | DEPARTMENT_NAME      | MANAGER_ID | LOCATION_ID |
+---------------+----------------------+------------+-------------+
|            10 | Administration       |        200 |        1700 |
|            20 | Marketing            |        201 |        1800 |
|            30 | Purchasing           |        114 |        1700 |
|            40 | Human Resources      |        203 |        2400 |
|            50 | Shipping             |        121 |        1500 |
|            60 | IT                   |        103 |        1400 |
|            70 | Public Relations     |        204 |        2700 |
|            80 | Sales                |        145 |        2500 |
|            90 | Executive            |        100 |        1700 |
|           100 | Finance              |        108 |        1700 |
|           110 | Accounting           |        205 |        1700 |
|           120 | Treasury             |          0 |        1700 |
|           130 | Corporate Tax        |          0 |        1700 |
|           140 | Control And Credit   |          0 |        1700 |
|           150 | Shareholder Services |          0 |        1700 |
|           160 | Benefits             |          0 |        1700 |
|           170 | Manufacturing        |          0 |        1700 |
|           180 | Construction         |          0 |        1700 |
|           190 | Contracting          |          0 |        1700 |
|           200 | Operations           |          0 |        1700 |
|           210 | IT Support           |          0 |        1700 |
|           220 | NOC                  |          0 |        1700 |
|           230 | IT Helpdesk          |          0 |        1700 |
|           240 | Government Sales     |          0 |        1700 |
|           250 | Retail Sales         |          0 |        1700 |
|           260 | Recruiting           |          0 |        1700 |
|           270 | Payroll              |          0 |        1700 |
+---------------+----------------------+------------+-------------+
27 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select employee_id, first_name, last_name, (select department_name from departments d where e.department_id = d.department_id) department from employees e;
+-------------+-------------+-------------+------------------+
| employee_id | first_name  | last_name   | department       |
+-------------+-------------+-------------+------------------+
|         100 | Steven      | King        | Executive        |
|         101 | Neena       | Kochhar     | Executive        |
|         102 | Lex         | De Haan     | Executive        |
|         103 | Alexander   | Hunold      | IT               |
|         104 | Bruce       | Ernst       | IT               |
|         105 | David       | Austin      | IT               |
|         106 | Valli       | Pataballa   | IT               |
|         107 | Diana       | Lorentz     | IT               |
|         108 | Nancy       | Greenberg   | Finance          |
|         109 | Daniel      | Faviet      | Finance          |
|         110 | John        | Chen        | Finance          |
|         111 | Ismael      | Sciarra     | Finance          |
|         112 | Jose Manuel | Urman       | Finance          |
|         113 | Luis        | Popp        | Finance          |
|         114 | Den         | Raphaely    | Purchasing       |
|         115 | Alexander   | Khoo        | Purchasing       |
|         116 | Shelli      | Baida       | Purchasing       |
|         117 | Sigal       | Tobias      | Purchasing       |
|         118 | Guy         | Himuro      | Purchasing       |
|         119 | Karen       | Colmenares  | Purchasing       |
|         120 | Matthew     | Weiss       | Shipping         |
|         121 | Adam        | Fripp       | Shipping         |
|         122 | Payam       | Kaufling    | Shipping         |
|         123 | Shanta      | Vollman     | Shipping         |
|         124 | Kevin       | Mourgos     | Shipping         |
|         125 | Julia       | Nayer       | Shipping         |
|         126 | Irene       | Mikkilineni | Shipping         |
|         127 | James       | Landry      | Shipping         |
|         128 | Steven      | Markle      | Shipping         |
|         129 | Laura       | Bissot      | Shipping         |
|         130 | Mozhe       | Atkinson    | Shipping         |
|         131 | James       | Marlow      | Shipping         |
|         132 | TJ          | Olson       | Shipping         |
|         133 | Jason       | Mallin      | Shipping         |
|         134 | Michael     | Rogers      | Shipping         |
|         135 | Ki          | Gee         | Shipping         |
|         136 | Hazel       | Philtanker  | Shipping         |
|         137 | Renske      | Ladwig      | Shipping         |
|         138 | Stephen     | Stiles      | Shipping         |
|         139 | John        | Seo         | Shipping         |
|         140 | Joshua      | Patel       | Shipping         |
|         141 | Trenna      | Rajs        | Shipping         |
|         142 | Curtis      | Davies      | Shipping         |
|         143 | Randall     | Matos       | Shipping         |
|         144 | Peter       | Vargas      | Shipping         |
|         145 | John        | Russell     | Sales            |
|         146 | Karen       | Partners    | Sales            |
|         147 | Alberto     | Errazuriz   | Sales            |
|         148 | Gerald      | Cambrault   | Sales            |
|         149 | Eleni       | Zlotkey     | Sales            |
|         150 | Peter       | Tucker      | Sales            |
|         151 | David       | Bernstein   | Sales            |
|         152 | Peter       | Hall        | Sales            |
|         153 | Christopher | Olsen       | Sales            |
|         154 | Nanette     | Cambrault   | Sales            |
|         155 | Oliver      | Tuvault     | Sales            |
|         156 | Janette     | King        | Sales            |
|         157 | Patrick     | Sully       | Sales            |
|         158 | Allan       | McEwen      | Sales            |
|         159 | Lindsey     | Smith       | Sales            |
|         160 | Louise      | Doran       | Sales            |
|         161 | Sarath      | Sewall      | Sales            |
|         162 | Clara       | Vishney     | Sales            |
|         163 | Danielle    | Greene      | Sales            |
|         164 | Mattea      | Marvins     | Sales            |
|         165 | David       | Lee         | Sales            |
|         166 | Sundar      | Ande        | Sales            |
|         167 | Amit        | Banda       | Sales            |
|         168 | Lisa        | Ozer        | Sales            |
|         169 | Harrison    | Bloom       | Sales            |
|         170 | Tayler      | Fox         | Sales            |
|         171 | William     | Smith       | Sales            |
|         172 | Elizabeth   | Bates       | Sales            |
|         173 | Sundita     | Kumar       | Sales            |
|         174 | Ellen       | Abel        | Sales            |
|         175 | Alyssa      | Hutton      | Sales            |
|         176 | Jonathon    | Taylor      | Sales            |
|         177 | Jack        | Livingston  | Sales            |
|         178 | Kimberely   | Grant       | NULL             |
|         179 | Charles     | Johnson     | Sales            |
|         180 | Winston     | Taylor      | Shipping         |
|         181 | Jean        | Fleaur      | Shipping         |
|         182 | Martha      | Sullivan    | Shipping         |
|         183 | Girard      | Geoni       | Shipping         |
|         184 | Nandita     | Sarchand    | Shipping         |
|         185 | Alexis      | Bull        | Shipping         |
|         186 | Julia       | Dellinger   | Shipping         |
|         187 | Anthony     | Cabrio      | Shipping         |
|         188 | Kelly       | Chung       | Shipping         |
|         189 | Jennifer    | Dilly       | Shipping         |
|         190 | Timothy     | Gates       | Shipping         |
|         191 | Randall     | Perkins     | Shipping         |
|         192 | Sarah       | Bell        | Shipping         |
|         193 | Britney     | Everett     | Shipping         |
|         194 | Samuel      | McCain      | Shipping         |
|         195 | Vance       | Jones       | Shipping         |
|         196 | Alana       | Walsh       | Shipping         |
|         197 | Kevin       | Feeney      | Shipping         |
|         198 | Donald      | OConnell    | Shipping         |
|         199 | Douglas     | Grant       | Shipping         |
|         200 | Jennifer    | Whalen      | Administration   |
|         201 | Michael     | Hartstein   | Marketing        |
|         202 | Pat         | Fay         | Marketing        |
|         203 | Susan       | Mavris      | Human Resources  |
|         204 | Hermann     | Baer        | Public Relations |
|         205 | Shelley     | Higgins     | Accounting       |
|         206 | William     | Gietz       | Accounting       |
+-------------+-------------+-------------+------------------+
107 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select employee_id, first_name, last_name, (select department_name from departments d where e.department_id = d.department_id) "department name" from employees e;
+-------------+-------------+-------------+------------------+
| employee_id | first_name  | last_name   | department name  |
+-------------+-------------+-------------+------------------+
|         100 | Steven      | King        | Executive        |
|         101 | Neena       | Kochhar     | Executive        |
|         102 | Lex         | De Haan     | Executive        |
|         103 | Alexander   | Hunold      | IT               |
|         104 | Bruce       | Ernst       | IT               |
|         105 | David       | Austin      | IT               |
|         106 | Valli       | Pataballa   | IT               |
|         107 | Diana       | Lorentz     | IT               |
|         108 | Nancy       | Greenberg   | Finance          |
|         109 | Daniel      | Faviet      | Finance          |
|         110 | John        | Chen        | Finance          |
|         111 | Ismael      | Sciarra     | Finance          |
|         112 | Jose Manuel | Urman       | Finance          |
|         113 | Luis        | Popp        | Finance          |
|         114 | Den         | Raphaely    | Purchasing       |
|         115 | Alexander   | Khoo        | Purchasing       |
|         116 | Shelli      | Baida       | Purchasing       |
|         117 | Sigal       | Tobias      | Purchasing       |
|         118 | Guy         | Himuro      | Purchasing       |
|         119 | Karen       | Colmenares  | Purchasing       |
|         120 | Matthew     | Weiss       | Shipping         |
|         121 | Adam        | Fripp       | Shipping         |
|         122 | Payam       | Kaufling    | Shipping         |
|         123 | Shanta      | Vollman     | Shipping         |
|         124 | Kevin       | Mourgos     | Shipping         |
|         125 | Julia       | Nayer       | Shipping         |
|         126 | Irene       | Mikkilineni | Shipping         |
|         127 | James       | Landry      | Shipping         |
|         128 | Steven      | Markle      | Shipping         |
|         129 | Laura       | Bissot      | Shipping         |
|         130 | Mozhe       | Atkinson    | Shipping         |
|         131 | James       | Marlow      | Shipping         |
|         132 | TJ          | Olson       | Shipping         |
|         133 | Jason       | Mallin      | Shipping         |
|         134 | Michael     | Rogers      | Shipping         |
|         135 | Ki          | Gee         | Shipping         |
|         136 | Hazel       | Philtanker  | Shipping         |
|         137 | Renske      | Ladwig      | Shipping         |
|         138 | Stephen     | Stiles      | Shipping         |
|         139 | John        | Seo         | Shipping         |
|         140 | Joshua      | Patel       | Shipping         |
|         141 | Trenna      | Rajs        | Shipping         |
|         142 | Curtis      | Davies      | Shipping         |
|         143 | Randall     | Matos       | Shipping         |
|         144 | Peter       | Vargas      | Shipping         |
|         145 | John        | Russell     | Sales            |
|         146 | Karen       | Partners    | Sales            |
|         147 | Alberto     | Errazuriz   | Sales            |
|         148 | Gerald      | Cambrault   | Sales            |
|         149 | Eleni       | Zlotkey     | Sales            |
|         150 | Peter       | Tucker      | Sales            |
|         151 | David       | Bernstein   | Sales            |
|         152 | Peter       | Hall        | Sales            |
|         153 | Christopher | Olsen       | Sales            |
|         154 | Nanette     | Cambrault   | Sales            |
|         155 | Oliver      | Tuvault     | Sales            |
|         156 | Janette     | King        | Sales            |
|         157 | Patrick     | Sully       | Sales            |
|         158 | Allan       | McEwen      | Sales            |
|         159 | Lindsey     | Smith       | Sales            |
|         160 | Louise      | Doran       | Sales            |
|         161 | Sarath      | Sewall      | Sales            |
|         162 | Clara       | Vishney     | Sales            |
|         163 | Danielle    | Greene      | Sales            |
|         164 | Mattea      | Marvins     | Sales            |
|         165 | David       | Lee         | Sales            |
|         166 | Sundar      | Ande        | Sales            |
|         167 | Amit        | Banda       | Sales            |
|         168 | Lisa        | Ozer        | Sales            |
|         169 | Harrison    | Bloom       | Sales            |
|         170 | Tayler      | Fox         | Sales            |
|         171 | William     | Smith       | Sales            |
|         172 | Elizabeth   | Bates       | Sales            |
|         173 | Sundita     | Kumar       | Sales            |
|         174 | Ellen       | Abel        | Sales            |
|         175 | Alyssa      | Hutton      | Sales            |
|         176 | Jonathon    | Taylor      | Sales            |
|         177 | Jack        | Livingston  | Sales            |
|         178 | Kimberely   | Grant       | NULL             |
|         179 | Charles     | Johnson     | Sales            |
|         180 | Winston     | Taylor      | Shipping         |
|         181 | Jean        | Fleaur      | Shipping         |
|         182 | Martha      | Sullivan    | Shipping         |
|         183 | Girard      | Geoni       | Shipping         |
|         184 | Nandita     | Sarchand    | Shipping         |
|         185 | Alexis      | Bull        | Shipping         |
|         186 | Julia       | Dellinger   | Shipping         |
|         187 | Anthony     | Cabrio      | Shipping         |
|         188 | Kelly       | Chung       | Shipping         |
|         189 | Jennifer    | Dilly       | Shipping         |
|         190 | Timothy     | Gates       | Shipping         |
|         191 | Randall     | Perkins     | Shipping         |
|         192 | Sarah       | Bell        | Shipping         |
|         193 | Britney     | Everett     | Shipping         |
|         194 | Samuel      | McCain      | Shipping         |
|         195 | Vance       | Jones       | Shipping         |
|         196 | Alana       | Walsh       | Shipping         |
|         197 | Kevin       | Feeney      | Shipping         |
|         198 | Donald      | OConnell    | Shipping         |
|         199 | Douglas     | Grant       | Shipping         |
|         200 | Jennifer    | Whalen      | Administration   |
|         201 | Michael     | Hartstein   | Marketing        |
|         202 | Pat         | Fay         | Marketing        |
|         203 | Susan       | Mavris      | Human Resources  |
|         204 | Hermann     | Baer        | Public Relations |
|         205 | Shelley     | Higgins     | Accounting       |
|         206 | William     | Gietz       | Accounting       |
+-------------+-------------+-------------+------------------+
107 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select employee_id, First_name, last_name, salary (select avg(salary) from departments) from employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'select avg(salary) from departments) from employees' at line 1
MariaDB [csd2204s2018]> select employee_id, First_name, last_name, salary from employees as e where salary > (select avg(salary) from employees where department_id = e.department_id );
+-------------+------------+-----------+----------+
| employee_id | First_name | last_name | salary   |
+-------------+------------+-----------+----------+
|         100 | Steven     | King      | 24000.00 |
|         103 | Alexander  | Hunold    |  9000.00 |
|         104 | Bruce      | Ernst     |  6000.00 |
|         108 | Nancy      | Greenberg | 12000.00 |
|         109 | Daniel     | Faviet    |  9000.00 |
|         114 | Den        | Raphaely  | 11000.00 |
|         120 | Matthew    | Weiss     |  8000.00 |
|         121 | Adam       | Fripp     |  8200.00 |
|         122 | Payam      | Kaufling  |  7900.00 |
|         123 | Shanta     | Vollman   |  6500.00 |
|         124 | Kevin      | Mourgos   |  5800.00 |
|         137 | Renske     | Ladwig    |  3600.00 |
|         141 | Trenna     | Rajs      |  3500.00 |
|         145 | John       | Russell   | 14000.00 |
|         146 | Karen      | Partners  | 13500.00 |
|         147 | Alberto    | Errazuriz | 12000.00 |
|         148 | Gerald     | Cambrault | 11000.00 |
|         149 | Eleni      | Zlotkey   | 10500.00 |
|         150 | Peter      | Tucker    | 10000.00 |
|         151 | David      | Bernstein |  9500.00 |
|         152 | Peter      | Hall      |  9000.00 |
|         156 | Janette    | King      | 10000.00 |
|         157 | Patrick    | Sully     |  9500.00 |
|         158 | Allan      | McEwen    |  9000.00 |
|         162 | Clara      | Vishney   | 10500.00 |
|         163 | Danielle   | Greene    |  9500.00 |
|         168 | Lisa       | Ozer      | 11500.00 |
|         169 | Harrison   | Bloom     | 10000.00 |
|         170 | Tayler     | Fox       |  9600.00 |
|         174 | Ellen      | Abel      | 11000.00 |
|         184 | Nandita    | Sarchand  |  4200.00 |
|         185 | Alexis     | Bull      |  4100.00 |
|         188 | Kelly      | Chung     |  3800.00 |
|         189 | Jennifer   | Dilly     |  3600.00 |
|         192 | Sarah      | Bell      |  4000.00 |
|         193 | Britney    | Everett   |  3900.00 |
|         201 | Michael    | Hartstein | 13000.00 |
|         205 | Shelley    | Higgins   | 12000.00 |
+-------------+------------+-----------+----------+
38 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select employee_id, First_name, last_name from departments as d where salary > (select avg(salary) from employees where department_id = d.department_id );
ERROR 1054 (42S22): Unknown column 'employee_id' in 'field list'
MariaDB [csd2204s2018]> select salary, First_name, last_name from departments as d where salary > (select avg(salary) from employees where department_id = d.department_id );
ERROR 1054 (42S22): Unknown column 'salary' in 'field list'
MariaDB [csd2204s2018]> select First_name, last_name from departments as d where salary > (select avg(salary) from employees where department_id = d.department_id );
ERROR 1054 (42S22): Unknown column 'First_name' in 'field list'
MariaDB [csd2204s2018]> select department_name, department_id from departments as d where salary > (select avg(salary) from employees where department_id = d.department_id );
ERROR 1054 (42S22): Unknown column 'salary' in 'where clause'
MariaDB [csd2204s2018]> select first_name, department_id from employees as e where salary > (select avg(salary) from employees group by deparment_id where department_id = e.department_id );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'where department_id = e.department_id )' at line 1
MariaDB [csd2204s2018]> select first_name, department_id from employees as e where salary > (select avg(salary) from employees group by department_id where department_id = e.department_id );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'where department_id = e.department_id )' at line 1
MariaDB [csd2204s2018]> 
MariaDB [csd2204s2018]> select first_name, department_id from employees as e where salary > (select avg(salary) from employees group by department_id having department_id = e.department_id );
+------------+---------------+
| first_name | department_id |
+------------+---------------+
| Steven     |            90 |
| Alexander  |            60 |
| Bruce      |            60 |
| Nancy      |           100 |
| Daniel     |           100 |
| Den        |            30 |
| Matthew    |            50 |
| Adam       |            50 |
| Payam      |            50 |
| Shanta     |            50 |
| Kevin      |            50 |
| Renske     |            50 |
| Trenna     |            50 |
| John       |            80 |
| Karen      |            80 |
| Alberto    |            80 |
| Gerald     |            80 |
| Eleni      |            80 |
| Peter      |            80 |
| David      |            80 |
| Peter      |            80 |
| Janette    |            80 |
| Patrick    |            80 |
| Allan      |            80 |
| Clara      |            80 |
| Danielle   |            80 |
| Lisa       |            80 |
| Harrison   |            80 |
| Tayler     |            80 |
| Ellen      |            80 |
| Nandita    |            50 |
| Alexis     |            50 |
| Kelly      |            50 |
| Jennifer   |            50 |
| Sarah      |            50 |
| Britney    |            50 |
| Michael    |            20 |
| Shelley    |           110 |
+------------+---------------+
38 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select first_name, department_id, salary from employees as e where salary > (select avg(salary) from employees group by department_id having department_id = e.department_id );
+------------+---------------+----------+
| first_name | department_id | salary   |
+------------+---------------+----------+
| Steven     |            90 | 24000.00 |
| Alexander  |            60 |  9000.00 |
| Bruce      |            60 |  6000.00 |
| Nancy      |           100 | 12000.00 |
| Daniel     |           100 |  9000.00 |
| Den        |            30 | 11000.00 |
| Matthew    |            50 |  8000.00 |
| Adam       |            50 |  8200.00 |
| Payam      |            50 |  7900.00 |
| Shanta     |            50 |  6500.00 |
| Kevin      |            50 |  5800.00 |
| Renske     |            50 |  3600.00 |
| Trenna     |            50 |  3500.00 |
| John       |            80 | 14000.00 |
| Karen      |            80 | 13500.00 |
| Alberto    |            80 | 12000.00 |
| Gerald     |            80 | 11000.00 |
| Eleni      |            80 | 10500.00 |
| Peter      |            80 | 10000.00 |
| David      |            80 |  9500.00 |
| Peter      |            80 |  9000.00 |
| Janette    |            80 | 10000.00 |
| Patrick    |            80 |  9500.00 |
| Allan      |            80 |  9000.00 |
| Clara      |            80 | 10500.00 |
| Danielle   |            80 |  9500.00 |
| Lisa       |            80 | 11500.00 |
| Harrison   |            80 | 10000.00 |
| Tayler     |            80 |  9600.00 |
| Ellen      |            80 | 11000.00 |
| Nandita    |            50 |  4200.00 |
| Alexis     |            50 |  4100.00 |
| Kelly      |            50 |  3800.00 |
| Jennifer   |            50 |  3600.00 |
| Sarah      |            50 |  4000.00 |
| Britney    |            50 |  3900.00 |
| Michael    |            20 | 13000.00 |
| Shelley    |           110 | 12000.00 |
+------------+---------------+----------+
38 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select avg(salary) from employees group by departments; 
ERROR 1054 (42S22): Unknown column 'departments' in 'group statement'
MariaDB [csd2204s2018]> select avg(salary) from employees group by department_id; 
+--------------+
| avg(salary)  |
+--------------+
|  7000.000000 |
|  4400.000000 |
|  9500.000000 |
|  4150.000000 |
|  6500.000000 |
|  3475.555556 |
|  5760.000000 |
| 10000.000000 |
|  8955.882353 |
| 19333.333333 |
|  8600.000000 |
| 10150.000000 |
+--------------+
12 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select avg(salary),department_id from employees group by department_id; 
+--------------+---------------+
| avg(salary)  | department_id |
+--------------+---------------+
|  7000.000000 |             0 |
|  4400.000000 |            10 |
|  9500.000000 |            20 |
|  4150.000000 |            30 |
|  6500.000000 |            40 |
|  3475.555556 |            50 |
|  5760.000000 |            60 |
| 10000.000000 |            70 |
|  8955.882353 |            80 |
| 19333.333333 |            90 |
|  8600.000000 |           100 |
| 10150.000000 |           110 |
+--------------+---------------+
12 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select first_name, Last_name, Salary from employees e where salary > (select avg(salary) from employees group by department_id having department_id= e.department_id); 
+------------+-----------+----------+
| first_name | Last_name | Salary   |
+------------+-----------+----------+
| Steven     | King      | 24000.00 |
| Alexander  | Hunold    |  9000.00 |
| Bruce      | Ernst     |  6000.00 |
| Nancy      | Greenberg | 12000.00 |
| Daniel     | Faviet    |  9000.00 |
| Den        | Raphaely  | 11000.00 |
| Matthew    | Weiss     |  8000.00 |
| Adam       | Fripp     |  8200.00 |
| Payam      | Kaufling  |  7900.00 |
| Shanta     | Vollman   |  6500.00 |
| Kevin      | Mourgos   |  5800.00 |
| Renske     | Ladwig    |  3600.00 |
| Trenna     | Rajs      |  3500.00 |
| John       | Russell   | 14000.00 |
| Karen      | Partners  | 13500.00 |
| Alberto    | Errazuriz | 12000.00 |
| Gerald     | Cambrault | 11000.00 |
| Eleni      | Zlotkey   | 10500.00 |
| Peter      | Tucker    | 10000.00 |
| David      | Bernstein |  9500.00 |
| Peter      | Hall      |  9000.00 |
| Janette    | King      | 10000.00 |
| Patrick    | Sully     |  9500.00 |
| Allan      | McEwen    |  9000.00 |
| Clara      | Vishney   | 10500.00 |
| Danielle   | Greene    |  9500.00 |
| Lisa       | Ozer      | 11500.00 |
| Harrison   | Bloom     | 10000.00 |
| Tayler     | Fox       |  9600.00 |
| Ellen      | Abel      | 11000.00 |
| Nandita    | Sarchand  |  4200.00 |
| Alexis     | Bull      |  4100.00 |
| Kelly      | Chung     |  3800.00 |
| Jennifer   | Dilly     |  3600.00 |
| Sarah      | Bell      |  4000.00 |
| Britney    | Everett   |  3900.00 |
| Michael    | Hartstein | 13000.00 |
| Shelley    | Higgins   | 12000.00 |
+------------+-----------+----------+
38 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select distinct(salary) from employees e1 where 5 = (select count(distinct salary) from employees e2 where e2.salary = e1.salary);
Empty set (0.01 sec)

MariaDB [csd2204s2018]> select distinct(salary) from employees e1 where 5 = (select count(distinct salary) from employees e2 where e2.salary >= e1.salary);
+----------+
| salary   |
+----------+
| 13000.00 |
+----------+
1 row in set (0.00 sec)

MariaDB [csd2204s2018]> select distinct(salary) from employees e1 where 3 = (select count(distinct salary) from employees e2 where e2.salary <= e1.salary);
+---------+
| salary  |
+---------+
| 2400.00 |
+---------+
1 row in set (0.02 sec)

MariaDB [csd2204s2018]> select * from (select * from employees order by employee_id Desc LIMIT 10) e1 order by employee_id asc;
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
| EMPLOYEE_ID | FIRST_NAME | LAST_NAME | EMAIL    | PHONE_NUMBER | HIRE_DATE  | JOB_ID     | SALARY   | COMMISSION_PCT | MANAGER_ID | DEPARTMENT_ID |
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
|         197 | Kevin      | Feeney    | KFEENEY  | 650.507.9822 | 1987-09-22 | SH_CLERK   |  3000.00 |           0.00 |        124 |            50 |
|         198 | Donald     | OConnell  | DOCONNEL | 650.507.9833 | 1987-09-23 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         199 | Douglas    | Grant     | DGRANT   | 650.507.9844 | 1987-09-24 | SH_CLERK   |  2600.00 |           0.00 |        124 |            50 |
|         200 | Jennifer   | Whalen    | JWHALEN  | 515.123.4444 | 1987-09-25 | AD_ASST    |  4400.00 |           0.00 |        101 |            10 |
|         201 | Michael    | Hartstein | MHARTSTE | 515.123.5555 | 1987-09-26 | MK_MAN     | 13000.00 |           0.00 |        100 |            20 |
|         202 | Pat        | Fay       | PFAY     | 603.123.6666 | 1987-09-27 | MK_REP     |  6000.00 |           0.00 |        201 |            20 |
|         203 | Susan      | Mavris    | SMAVRIS  | 515.123.7777 | 1987-09-28 | HR_REP     |  6500.00 |           0.00 |        101 |            40 |
|         204 | Hermann    | Baer      | HBAER    | 515.123.8888 | 1987-09-29 | PR_REP     | 10000.00 |           0.00 |        101 |            70 |
|         205 | Shelley    | Higgins   | SHIGGINS | 515.123.8080 | 1987-09-30 | AC_MGR     | 12000.00 |           0.00 |        101 |           110 |
|         206 | William    | Gietz     | WGIETZ   | 515.123.8181 | 1987-10-01 | AC_ACCOUNT |  8300.00 |           0.00 |        205 |           110 |
+-------------+------------+-----------+----------+--------------+------------+------------+----------+----------------+------------+---------------+
10 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select department_id from employees where department_id!=employee_id;
+---------------+
| department_id |
+---------------+
|            90 |
|            90 |
|            90 |
|            60 |
|            60 |
|            60 |
|            60 |
|            60 |
|           100 |
|           100 |
|           100 |
|           100 |
|           100 |
|           100 |
|            30 |
|            30 |
|            30 |
|            30 |
|            30 |
|            30 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|            80 |
|             0 |
|            80 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            50 |
|            10 |
|            20 |
|            20 |
|            40 |
|            70 |
|           110 |
|           110 |
+---------------+
107 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select distinct(department_id),employee_name from employees where department_id!=employee_id;
ERROR 1054 (42S22): Unknown column 'employee_name' in 'field list'
MariaDB [csd2204s2018]> select distinct(department_id), department_name from deparments where department_id NOT IN (select distinct(department_id) from employees;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '' at line 1
MariaDB [csd2204s2018]> select distinct(department_id), department_name from deparments where department_id NOT IN (select distinct(department_id) from employees);
ERROR 1146 (42S02): Table 'csd2204s2018.deparments' doesn't exist
MariaDB [csd2204s2018]> select distinct(department_id), department_name from departments where department_id NOT IN (select distinct(department_id) from employees);
+---------------+----------------------+
| department_id | department_name      |
+---------------+----------------------+
|           120 | Treasury             |
|           130 | Corporate Tax        |
|           140 | Control And Credit   |
|           150 | Shareholder Services |
|           160 | Benefits             |
|           170 | Manufacturing        |
|           180 | Construction         |
|           190 | Contracting          |
|           200 | Operations           |
|           210 | IT Support           |
|           220 | NOC                  |
|           230 | IT Helpdesk          |
|           240 | Government Sales     |
|           250 | Retail Sales         |
|           260 | Recruiting           |
|           270 | Payroll              |
+---------------+----------------------+
16 rows in set (0.02 sec)

MariaDB [csd2204s2018]> select distinct(department_id),employee_name from employees where department_id!=employee_id;
ERROR 1054 (42S22): Unknown column 'employee_name' in 'field list'
MariaDB [csd2204s2018]> select distinct(department_id) from employees where department_id!=employee_id;
+---------------+
| department_id |
+---------------+
|            90 |
|            60 |
|           100 |
|            30 |
|            50 |
|            80 |
|             0 |
|            10 |
|            20 |
|            40 |
|            70 |
|           110 |
+---------------+
12 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select salary from employees order by salary DESC;
+----------+
| salary   |
+----------+
| 24000.00 |
| 17000.00 |
| 17000.00 |
| 14000.00 |
| 13500.00 |
| 13000.00 |
| 12000.00 |
| 12000.00 |
| 12000.00 |
| 11500.00 |
| 11000.00 |
| 11000.00 |
| 11000.00 |
| 10500.00 |
| 10500.00 |
| 10000.00 |
| 10000.00 |
| 10000.00 |
| 10000.00 |
|  9600.00 |
|  9500.00 |
|  9500.00 |
|  9500.00 |
|  9000.00 |
|  9000.00 |
|  9000.00 |
|  9000.00 |
|  8800.00 |
|  8600.00 |
|  8400.00 |
|  8300.00 |
|  8200.00 |
|  8200.00 |
|  8000.00 |
|  8000.00 |
|  8000.00 |
|  7900.00 |
|  7800.00 |
|  7700.00 |
|  7500.00 |
|  7500.00 |
|  7400.00 |
|  7300.00 |
|  7200.00 |
|  7000.00 |
|  7000.00 |
|  7000.00 |
|  6900.00 |
|  6800.00 |
|  6500.00 |
|  6500.00 |
|  6400.00 |
|  6200.00 |
|  6200.00 |
|  6100.00 |
|  6000.00 |
|  6000.00 |
|  5800.00 |
|  4800.00 |
|  4800.00 |
|  4400.00 |
|  4200.00 |
|  4200.00 |
|  4100.00 |
|  4000.00 |
|  3900.00 |
|  3800.00 |
|  3600.00 |
|  3600.00 |
|  3500.00 |
|  3400.00 |
|  3300.00 |
|  3300.00 |
|  3200.00 |
|  3200.00 |
|  3200.00 |
|  3200.00 |
|  3100.00 |
|  3100.00 |
|  3100.00 |
|  3100.00 |
|  3000.00 |
|  3000.00 |
|  2900.00 |
|  2900.00 |
|  2900.00 |
|  2800.00 |
|  2800.00 |
|  2800.00 |
|  2800.00 |
|  2700.00 |
|  2700.00 |
|  2600.00 |
|  2600.00 |
|  2600.00 |
|  2600.00 |
|  2500.00 |
|  2500.00 |
|  2500.00 |
|  2500.00 |
|  2500.00 |
|  2500.00 |
|  2400.00 |
|  2400.00 |
|  2200.00 |
|  2200.00 |
|  2100.00 |
+----------+
107 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select distinct(salary) from employees order by salary DESC limit 3;
+----------+
| salary   |
+----------+
| 24000.00 |
| 17000.00 |
| 14000.00 |
+----------+
3 rows in set (0.00 sec)

MariaDB [csd2204s2018]> select employee_id, distinct(department_id) from employees where department_id!=employee_id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'distinct(department_id) from employees where department_id!=employee_id' at line 1
MariaDB [csd2204s2018]> select distinct(department_id, employee_id) from employees where department_id!=employee_id;
ERROR 1241 (21000): Operand should contain 1 column(s)
MariaDB [csd2204s2018]> exit
