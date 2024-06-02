USE obs_1;
CREATE TABLE lillyyy(
  Name VARCHAR(20),
  Marks INT DEFAULT 0
);

CREATE TRIGGER Add_Marks
BEFORE
INSERT
ON lillyyy
FOR EACH ROW
SET new.Marks=new.Marks+100;

INSERT INTO lillyyy
(Name,Marks)
VALUES
("Lilly",97),
("Swetha",97),
("Sumanth",97);

INSERT INTO lillyyy VALUES("Ajay",23);
INSERT INTO lillyyy VALUES("Jaya",22);

SELECT * FROM lillyyy;

CREATE TRIGGER dbms
BEFORE 
UPDATE
ON lillyyy
FOR EACH ROW
SET new.Name="lalluu";

SET SQL_SAFE_UPDATES=0;
UPDATE lillyyy
SET Marks=97
WHERE Name="Jaya";

SELECT * FROM lillyyy;

CREATE TABLE DELETED(
  Name VARCHAR(20),
  Marks INT
);

DELIMITER //
CREATE TRIGGER Revoke_marks
AFTER 
DELETE
ON lillyyy
FOR EACH ROW
BEGIN
  INSERT INTO DELETED VALUES (OLD.Name,OLD.Marks);
END;
//
DELIMITER ;

SELECT * FROM lillyyy;

SELECT * FROM DELETED;

DELETE FROM lillyyy
WHERE Marks>100;

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
CREATE TRIGGER display
AFTER
UPDATE
ON cust
FOR EACH ROW
BEGIN
  INSERT INTO difference VALUES(NEW.Name,NEW.Salary,OLD.Salary,NEW.Salary-OLD.Salary);
END;
//
DELIMITER ;
DROP TRIGGER Display;
DELETE FROM difference;

UPDATE cust 
SET Salary=4800000
WHERE Name="Swetha";

UPDATE cust 
SET Salary=4800000
WHERE Name="Lilly";

SELECT * FROM difference;
SELECT * FROM cust; 

USE new1;
CREATE TABLE Passenger(
  Passport_ID INT PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,Age INT NOT NULL,
  Gender CHAR,
  Address VARCHAR(50) NOT NULL
);

CREATE TABLE Messages(
  Message VARCHAR(50)
);

DELIMITER //
CREATE TRIGGER check_trigger
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

CREATE TABLE Message(
  Message VARCHAR(20)
);
CREATE TRIGGER inserted
BEFORE
INSERT 
ON Passenger
FOR EACH ROW
INSERT INTO Message VALUES("1 record inserted");

CREATE TRIGGER updated
AFTER
UPDATE
ON Passenger
FOR EACH ROW
INSERT INTO Message VALUES("1 record updated");

CREATE TRIGGER deleted
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








