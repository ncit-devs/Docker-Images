## show users and host

```
select user,host from mysql.user;
```

## view databases

```
SHOW databases;
```

## view user permissions

```
SHOW GRANTS FOR 'user_name';
```

## change host permissions

```
UPDATE mysql.user SET Host='%' WHERE Host='localhost' AND User='username';
```

## create database

```
CREATE DATABASE dbname;
```

## delete db

```
DROP DATABASE dbname;
```

## create new user MySQL 5.7 or MySQL 8 or newer:

```
CREATE USER 'username'@'allowed-ip or localhost' IDENTIFIED WITH mysql_native_password BY 'password';
```

## for older version

```
CREATE USER 'username'@'localhost' IDENTIFIED BY 'my-strong-password-here';
```

## grant permissions to database

```
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, INDEX, DROP, ALTER, CREATE TEMPORARY TABLES, LOCK TABLES ON matomo_db_name_here.* TO 'matomo'@'localhost';
```

## or

```
GRANT ALL PRIVILEGES ON database_name.* TO 'username'@'localhost';
```

```
GRANT ALL PRIVILEGES ON location_tracker.* TO 'location_tracer_web'@'%';
```

```
GRANT ALL PRIVILEGES ON *.* TO 'mysqUserName'@'%';
```
