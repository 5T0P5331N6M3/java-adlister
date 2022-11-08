CREATE DATABASE IF NOT EXISTS adlister_db;

SHOW DATABASES;

USE adlister_db;

CREATE USER 'Ostrich'@'localhost' IDENTIFIED BY 'OstrichEffect@Codeup.com';

SELECT * FROM mysql.user;

GRANT ALL ON adlister_db.* TO 'Ostrich'@'localhost';

CREATE TABLE users
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);

SHOW TABLES;
DESCRIBE users;

CREATE TABLE ads
(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT UNSIGNED NULL,
    title VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

SHOW TABLES;
DESCRIBE ads;