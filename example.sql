
C:\Users\olgak>mysql -u root -p
Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 50
Server version: 8.0.26 MySQL Community Server - GPL

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sample             |
| sys                |
| world              |
+--------------------+
6 rows in set (0.00 sec)

mysql> CREATE DATABASE example;
Query OK, 1 row affected (0.01 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| example            |
| information_schema |
| mysql              |
| performance_schema |
| sample             |
| sys                |
| world              |
+--------------------+
7 rows in set (0.00 sec)

mysql> CREATE TABLE users (id SERIAL, name VARCHAR(100) NOT NULL UNIQUE);
ERROR 1046 (3D000): No database selected
mysql> USE example users (id SERIAL, name VARCHAR(100) NOT NULL UNIQUE);
Database changed
mysql> SHOW TABLES;
Empty set (0.00 sec)

mysql> CREATE TABLE users (id SERIAL, name VARCHAR(100) NOT NULL UNIQUE);
Query OK, 0 rows affected (0.05 sec)

mysql> SHOW TABLES;
+-------------------+
| Tables_in_example |
+-------------------+
| users             |
+-------------------+
1 row in set (0.00 sec)

mysql> exit
Bye

C:\Users\olgak>mysql -u root -p example
Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 51
Server version: 8.0.26 MySQL Community Server - GPL

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> user>mysqldump -u root p example >example.sql
    -> dir
    ->
    -> mysql> user>mysqldump -u root -p example > example.sql
    -> exit
    -> mysql> exit
    -> exit
    -> quit
    -> \q
Bye

C:\Users\olgak>mysql -u root -p example
Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 52
Server version: 8.0.26 MySQL Community Server - GPL

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> mysqldump -u root -p example > example.sql
    -> \q
Bye

C:\Users\olgak>mysqldump -u root -p example > example.sql
Enter password: ****

C:\Users\olgak>dir
 РўРѕРј РІ СѓСЃС‚СЂРѕР№СЃС‚РІРµ C РёРјРµРµС‚ РјРµС‚РєСѓ Windows
 РЎРµСЂРёР№РЅС‹Р№ РЅРѕРјРµСЂ С‚РѕРјР°: 2498-0874

 РЎРѕРґРµСЂР¶РёРјРѕРµ РїР°РїРєРё C:\Users\olgak

23.08.2021  00:00    <DIR>          .
23.08.2021  00:00    <DIR>          ..
21.08.2021  22:39    <DIR>          .config
21.08.2021  22:39                59 .gitconfig
21.08.2021  22:39    <DIR>          .ssh
21.08.2020  22:14    <DIR>          3D Objects
04.03.2019  22:28    <DIR>          ansel
07.06.2021  23:37    <DIR>          ARISExpress
21.08.2020  22:14    <DIR>          Contacts
22.08.2021  23:48    <DIR>          Desktop
21.08.2021  23:07    <DIR>          Documents
16.08.2021  23:45    <DIR>          Downloads
23.08.2021  00:00             1В 946 example.sql
21.08.2020  22:14    <DIR>          Favorites
22.08.2021  23:28    <DIR>          Google Р”РёСЃРє
19.08.2019  22:49    <DIR>          HP
21.08.2020  22:14    <DIR>          Links
21.08.2020  22:14    <DIR>          Music
06.08.2021  09:26    <DIR>          OneDrive
15.07.2021  20:46    <DIR>          Pictures
21.08.2020  22:14    <DIR>          Saved Games
21.08.2020  22:14    <DIR>          Searches
23.07.2021  07:53    <DIR>          Videos
               2 С„Р°Р№Р»РѕРІ          2В 005 Р±Р°Р№С‚
              21 РїР°РїРѕРє  17В 759В 461В 376 Р±Р°Р№С‚ СЃРІРѕР±РѕРґРЅРѕ

C:\Users\olgak>mysql -u root -p
Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 54
Server version: 8.0.26 MySQL Community Server - GPL

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE DATABASE sample;
ERROR 1007 (HY000): Can't create database 'sample'; database exists
mysql> DROP DATABASE sample;
Query OK, 1 row affected (0.03 sec)

mysql> CREATE DATABASE sample;
Query OK, 1 row affected (0.01 sec)

mysql> exit
Bye

C:\Users\olgak>mysql -u root -p sample < example.sql
Enter password: ****

C:\Users\olgak>mysql -u root -p
Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 56
Server version: 8.0.26 MySQL Community Server - GPL

Copyright (c) 2000, 2021, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> USE sample;
Database changed
mysql> SHOW TABLES;
+------------------+
| Tables_in_sample |
+------------------+
| users            |
+------------------+
1 row in set (0.00 sec)

mysql> exit
Bye

C:\Users\olgak>
