CREATE DATABASE OBS_1;
USE OBS_1;

-- Employee
CREATE TABLE Employee(
  Empno NUMERIC PRIMARY KEY,
  Ename VARCHAR(20),
   Job VARCHAR(20),
  Mgr NUMERIC,
  Sal NUMERIC
);
-- 1a
ALTER TABLE Employee
ADD COLUMN Commision NUMERIC;
SELECT * FROM Employee;

-- 1b
INSERT INTO Employee
(Empno,Ename,Job,Mgr,Sal,Commision)
VALUES
(15,"Sumanth","CEO",12,12000000,0),
(16,"Nikhil","MD",12,12000000,0),
(17,"Ajay","Chairman",12,12000000,0),
(18,"Ramu","Manager",8,1200000,10000),
(19,"Shyamu","Manager",8,1200000,10000);
SELECT * FROM Employee;

-- 1c
SET SQL_SAFE_UPDATES=0;
UPDATE Employee
SET Sal=1000000
WHERE Sal=1200000;
SELECT * FROM Employee;

-- 1d
ALTER TABLE Employee
CHANGE COLUMN Ename Name VARCHAR(20);
SELECT * FROM Employee;

-- 1e
DELETE FROM Employee
WHERE Empno=19;
SELECT * FROM Employee;


-- Department
CREATE TABLE department(
  Deptno NUMERIC PRIMARY KEY,
  Deptname VARCHAR(20),
  Location VARCHAR(20)
);
SELECT * FROM department;

-- 2a
ALTER TABLE department
ADD COLUMN Designation VARCHAR(20);
SELECT * FROM department;

-- 2b
INSERT INTO department
(Deptno,Deptname,Location,Designation)
VALUES
(3,"Management","IT Park","Main Branch"),
(5,"Administration","IT Park","Head Office"),
(9,"Human Resource","Tech Park","Branch");

-- 2c
SELECT Deptno,Deptname FROM department
GROUP BY Deptno
ORDER BY Deptno;

-- 2d
UPDATE department
SET Location="Anantapur"
WHERE Location="Tech Park" AND Deptno=9;
SELECT * FROM department;

-- 2e
ALTER TABLE department
DROP COLUMN Designation;
SELECT * FROM department;


CREATE TABLE CustomerTable(
  Cust_Name VARCHAR(20),
  Cust_Street VARCHAR(20),
  Cust_City VARCHAR(20)
);

-- 3a
INSERT INTO CustomerTable
(Cust_Name,Cust_Street,Cust_City)
VALUES
("Sumanth","3rd Road","Anantapur"),
("Nikhil","Vidyut Nagar Road","Anantapur"),
("Ajay","Thapovanam","Anantapur");

UPDATE CustomerTable
SET Cust_city="Hyderabad"
WHERE Cust_Name="Nikhil";

-- 3b
ALTER TABLE CustomerTable
ADD COLUMN Salary NUMERIC(10,2);

-- 3c
UPDATE CustomerTable
SET Salary=2000000;
SELECT * FROM CustomerTable;

-- 3d
ALTER TABLE CustomerTable
DROP COLUMN Salary;
SELECT * FROM CustomerTable;

-- 3e
DELETE FROM CustomerTable
WHERE Cust_city="Hyderabad";
SELECT * FROM CustomerTable;

-- 3f
CREATE TABLE BranchTable(
  Branch_Name VARCHAR(30),
  Branch_City VARCHAR(30),
  Asserts NUMERIC
);
SELECT * FROM BranchTable;

-- 4a
-- Addition of column
ALTER TABLE BranchTable
ADD COLUMN Area NUMERIC;
SELECT * FROM BranchTable;

-- Removal of cloumn
ALTER TABLE BranchTable
DROP COLUMN Area;
SELECT * FROM BranchTable;

-- 4b
-- Inserting values to the table
INSERT INTO BranchTable
(Branch_Name,Branch_City,Asserts)
VALUES
("Vasavi Nagar Main Branch","Hyderabad",20000),
("Kanaka Raja Puram Branch","Anantapur",30000),
("Ram Nagar Main Branch","Hyderabad",15000),
("KR Nagar Main Branch","Anantapur",30000),
("Anantha Nagar Main Branch","Jharkand",40000);
SELECT * FROM BranchTable;
SET SQL_SAFE_UPDATES=0;
-- 4c
UPDATE BranchTable 
SET Branch_Name="Ravi Shastri Nagar"
WHERE Branch_City="Anantapur";
SELECT * FROM BranchTable;

-- 4d 
ALTER TABLE BranchTable 
DROP COLUMN Asserts;
ALTER TABLE BranchTable
DROP COLUMN Branch_City;
SELECT * FROM BranchTable;

DROP TABLE BranchTable;

-- 5a
CREATE TABLE Sailor(
  Sid NUMERIC PRIMARY KEY,
  Sname VARCHAR(20),
  Rating NUMERIC (8,1)
);
SELECT * FROM Sailor;
-- adding age column to the table 
ALTER TABLE Sailor 
ADD COLUMN Age NUMERIC NOT NULL;
SELECT * FROM Sailor;

-- 5b
INSERT INTO Sailor
(Sid,Sname,Rating,Age)
VALUES
(101,"Pullaiah",8,43),
(102,"Renu Singh",9,39),
(103,"Sid Thakur",9.5,46),
(104,"Ramaiah",7,44),
(105,"Mallaiah",8.5,45);
SELECT * FROM Sailor;

-- 5c
DELETE FROM Sailor
WHERE Rating<8;
SELECT * FROM Sailor;

-- 5d
UPDATE Sailor
SET Sname="Rushi"
WHERE Sname="Sid Thakur";
SELECT * FROM Sailor;

DROP TABLE Sailor;

-- 5e
UPDATE Sailor
SET Rating=NULL
WHERE Sname="Mallaiah";
SELECT * FROM Sailor;

SELECT * FROM Sailor
ORDER BY Sid ASC;

CREATE TABLE Reserves(
  BoatID INT PRIMARY KEY,
  Sid INT,
  Day int
);

-- 6a
INSERT INTO Reserves
(BoatID,Sid,Day)
VALUES
(22001,221,3),
(22002,222,4),
(22003,223,5),
(22004,225,6),
(22005,226,7);

-- 6b
ALTER TABLE Reserves
ADD COLUMN Time INT;

UPDATE Reserves
SET Time=24
WHERE Sid>0;

SELECT * FROM Reserves;

-- 6c
ALTER TABLE Reserves
DROP COLUMN Day;

ALTER TABLE Reserves
ADD COLUMN Day DATE;
SELECT * FROM Reserves;

UPDATE Reserves
SET Day='2004-07-27'
WHERE Sid>223;

UPDATE Reserves
SET Day='2005-08-26'
WHERE Sid<=223;

SELECT * FROM Reserves;

-- 6d 
ALTER TABLE Reserves
DROP COLUMN Time;

SELECT * FROM Reserves;

-- 6e
DELETE FROM Reserves
WHERE Sid=225;

SELECT * FROM Reserves;