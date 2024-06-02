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