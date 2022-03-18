CREATE USER 'mysqUserName'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
GRANT ALL PRIVILEGES ON mysqlDatabase.* TO'mysqUserName'@'localhost';
GRANT ALL ON *.* TO 'mysqUserName'@'localhost';

FLUSH PRIVILEGES;

