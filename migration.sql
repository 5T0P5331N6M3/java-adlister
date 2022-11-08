CREATE DATABASE IF NOT EXISTS adlister_db;

SHOW DATABASES;

USE adlister_db;

CREATE USER 'Ostrich'@'localhost' IDENTIFIED BY 'OstrichEffect@Codeup.com';

SELECT * FROM mysql.user;

GRANT ALL ON adlister_db.* TO 'Ostrich'@'localhost';