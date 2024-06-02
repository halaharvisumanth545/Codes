CREATE DATABASE IF NOT EXISTS CUST_DETAILS;
USE CUST_DETAILS;
CREATE TABLE IF NOT EXISTS customers(
    Customer_ID INT NOT NULL,
    Customer_Name VARCHAR(20),
    Customer_Mode VARCHAR(20),
    City VARCHAR(20)
);
INSERT INTO customers
(Customer_ID,Customer_Name,Customer_Mode,City)
VALUES
(101,"Olivia Barrett","Net Banking","PortLand"),
(102,"Ethan Sinclair","Credit Card","Miami"),
(103,"Maya Hernandez","Credit Card","Seattle"),
(104,"Liam Donovan","Net Banking","Denver"),
(105,"Sophia Nguyen","Credit Card","New Orleans"),
(106,"Caleb Foster","Debit Card","Minneapolis"),
(107,"Ava Patel","Debit Card","Phoenix"),
(108,"Lucus Carter","Net Banking","Boston"),
(109,"Isabella Martinez","Net Banking","Nashville"),
(110,"Jackson Brooks","Credit Card","Boston");

SELECT * FROM customers;

SELECT Customer_Mode,COUNT(Customer_ID) FROM customers
GROUP BY Customer_Mode;