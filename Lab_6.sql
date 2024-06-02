CREATE DATABASE obs_6;
USE obs_6;
-- 1
CREATE TABLE cust(
  ID INT,
  Name VARCHAR(20),
  Age INT,
  Address VARCHAR(300),
  Salary NUMERIC(10,2)
);

INSERT INTO cust
(ID,Name,Age,Address,Salary)
VALUES
(1,"Alive",24,"khammam",2000),
(2,"Bob",27,"Kadapa",3000),
(3,"Catri",25,"Guntur",4000),
(4,"Dena",28,"Hyderabad",5000),
(5,"Eshwar",27,"Kurnool",6000),
(6,"Farooq",28,"Nellore",7000),
(7,"Lilly",19,"Assam",300000),
(8,"Swetha",20,"Bhopal",300000);

CREATE TABLE difference(
 Name VARCHAR(20),
 New_Salary INT,
 Old_Salary INT,
 Difference INT
);
DROP TABLE difference;

DELIMITER //
CREATE TRIGGER displayed
AFTER
UPDATE
ON cust
FOR EACH ROW
BEGIN
  INSERT INTO difference VALUES(NEW.Name,NEW.Salary,OLD.Salary,NEW.Salary-OLD.Salary);
END;
//
DELIMITER ;
DROP TRIGGER Displayed;
DELETE FROM difference;

UPDATE cust 
SET Salary=4800000
WHERE Name="Swetha";

UPDATE cust 
SET Salary=4800000
WHERE Name="Lilly";

SELECT * FROM difference;
SELECT * FROM cust;

-- 2
CREATE TABLE Passenger(
  Passport_ID INT PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,Age INT NOT NULL,
  Gender CHAR,
  Address VARCHAR(50) NOT NULL
);
-- 2a
CREATE TABLE Messages(
  Message VARCHAR(50)
);

DELIMITER //
CREATE TRIGGER checking_trigger
AFTER 
INSERT
ON Passenger
FOR EACH ROW
BEGIN
  IF LENGTH(CAST(NEW.Passport_ID AS CHAR))=6 THEN
    INSERT INTO Messages VALUES ("Passport_ID consists of 6 digits"); 
  ELSE IF LENGTH(CAST(NEW.Passport_ID AS CHAR)<6) THEN
    INSERT INTO Messages VALUES ("Passport ID contains less than 6 digits");
  ELSE
    INSERT INTO Messages VALUES ("Passport ID contains more than 6 digits");
  END IF;
  END IF;
END;
//
DELIMITER ;
  
DROP TRIGGER check_trigger;

INSERT INTO Passenger
(Passport_ID,Name,Age,Gender,Address)
VALUES
(123456,"Sammy",19,"M","3rd Road"),
(12345,"Samhitha",19,"F","3rd Road");

DELETE FROM Passenger;
SET SQL_SAFE_UPDATES=0;


DELETE FROM Messages;
SELECT * FROM Messages;
-- 2b

CREATE TABLE Message(
  Message VARCHAR(20)
);
CREATE TRIGGER inserted_1
BEFORE
INSERT 
ON Passenger
FOR EACH ROW
INSERT INTO Message VALUES("1 record inserted");

CREATE TRIGGER updated_1
AFTER
UPDATE
ON Passenger
FOR EACH ROW
INSERT INTO Message VALUES("1 record updated");

CREATE TRIGGER deleted_1
AFTER
DELETE
ON Passenger
FOR EACH ROW
INSERT INTO Message VALUES("1 record deleted");

INSERT INTO Passenger
(Passport_ID,Name,Age,Gender,Address)
VALUES
(12343,"Sam",19,"M","3rd Road"),
(12342,"Mahitha",19,"F","4th Road");

SELECT * FROM Message;

DELETE FROM Passenger
WHERE Name="Mahitha";

SELECT * FROM Message;

UPDATE Passenger
SET Name="Sumanth Raj"
WHERE Passport_ID=123456;

SELECT * FROM Message;

-- 3
CREATE TABLE table3(
  Name VARCHAR(20),
  ID INT,
  Class VARCHAR(20)
);
CREATE TABLE table4(
  Name VARCHAR(20),
  ID INT,
  Class VARCHAR(20)
);
DROP TRIGGER table3;
CREATE TRIGGER table3
BEFORE
INSERT
ON table3
FOR EACH ROW
INSERT INTO table4 (Name,ID,Class) VALUES ("Sumanth",545,"CSE"),("Ajay",576,"CSE"),("Nikhil",572,"CSE");

SELECT * FROM table3;
INSERT INTO table3 VALUE ("Prabhas",533,"CSE");
SELECT * FROM table4;

-- 4
SELECT * FROM Employee;
CREATE TRIGGER upper_case
BEFORE 
INSERT
ON Employee
FOR EACH ROW
SET NEW.Name=UPPER(NEW.Name);

CREATE TRIGGER upper_case1
BEFORE
UPDATE
ON Employee
FOR EACH ROW
SET NEW.Name=UPPER(NEW.Name);

UPDATE Employee
SET Emp_No=134
WHERE Emp_No=545;

SELECT * FROM Employee;


-- 5
CREATE TABLE del_details(
  Name VARCHAR(20),
  Job VARCHAR(20),
  Mgr INT,
  Sal INT,
  Commission INT,
  Emp_No int
);

CREATE TABLE log_details(
  User VARCHAR(30),
  Date_Time DATETIME,
  Name VARCHAR(20),
  Job VARCHAR(20),
  Mgr INT,
  Sal INT,
  Commission INT,
  Emp_No INT
);
DROP TRIGGER dele;

DELIMITER //
CREATE TRIGGER dele
AFTER
DELETE 
ON Employee
FOR EACH ROW
BEGIN
  INSERT INTO del_details (Name,Job,Mgr,Sal,Commission,Emp_No) VALUES (OLD.Name,OLD.Job,OLD.Mgr,OLD.Sal,OLD.Commision,OLD.Emp_No);
  INSERT INTO log_details (User,Date_Time,Name,Job,Mgr,Sal,Commission,Emp_No) VALUES (CURRENT_USER(),NOW(),OLD.Name,OLD.Job,OLD.Mgr,OLD.Sal,OLD.Commision,OLD.Emp_No);
END;
//
DELIMITER ;
SELECT * FROM Employee;
DELETE FROM Employee
WHERE Name="AKHIL";

SELECT * FROM log_details;
SELECT * FROM del_details;
-- 6
USE obs_1;
SELECT * FROM CustomerTable;

CREATE TABLE updated_details(  
  Old_Name VARCHAR(30),
  New_Name VARCHAR(30),
  Old_Street VARCHAR(20),
  New_street VARCHAR(20),
  Old_City VARCHAR(20),
  New_City VARCHAR(20)
);
CREATE TRIGGER updates
AFTER
UPDATE
ON CustomerTable
FOR EACH ROW
INSERT INTO updated_details VALUES(OLD.Cust_Name,NEW.Cust_Name,OLD.Cust_Street,NEW.Cust_Street,OLD.Cust_City,NEW.Cust_City);

INSERT INTO CustomerTable
(Cust_Name,Cust_Street,Cust_City)
VALUES
("Nikhil","Vidyut Nagar","Anantapur");

SET SQL_SAFE_UPDATES=0;

UPDATE CustomerTable
SET Cust_Name="Y Nikhil Souri"
WHERE Cust_Name="Nikhil";

SELECT * FROM updated_details;