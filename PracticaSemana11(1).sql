CREATE DATABASE Playstation;
USE Playstation;

CREATE TABLE products(productsID INT IDENTITY(1,1) PRIMARY KEY, productname VARCHAR(30), quantity INT);

INSERT INTO products(productname, quantity)
VALUES ('TV',1500);

SELECT * FROM products;


CREATE TABLE employee(employeeID INT IDENTITY(1,1) PRIMARY KEY, fullname VARCHAR(50), country VARCHAR(20));

INSERT INTO employee(fullname, country)
VALUES ('Reina Lopez','Panama');

SELECT * FROM employee;


CREATE TABLE sale(employeeID INT IDENTITY(1,1) PRIMARY KEY, quantity INT, salesdate DATETIME);

INSERT INTO sale(quantity, salesdate)
VALUES (101,'29-march-2022');

SELECT * FROM sale;


	