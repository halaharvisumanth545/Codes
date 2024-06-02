CREATE DATABASE IF NOT EXISTS XYZ;
USE XYZ;
CREATE TABLE Emp_Info(
   ID INT PRIMARY KEY,
   Name VARCHAR(30),
   Salary NUMERIC(10,2)
);
INSERT INTO Emp_Info 
(ID,Name,Salary)
VALUES
(1,"Adam",25000),
(2,"Bob",30000),
(3,"Casey",40000);

SELECT * FROM Emp_Info;



CREATE TABLE student
( Name VARCHAR(20),
  Marks INT,
  Grades VARCHAR(1),
  CONSTRAINT mark_check CHECK (Marks >=0 AND Marks<=100)
);

INSERT INTO student
(Name, Marks, Grades)
VALUES
("Ajay",94,"S"),
("Nikhil",96,"S"),
("Dhanush",95,"S"),
("Vinod",93,"S"),
("Sumanth",97,"S");

ALTER TABLE student
CHANGE COLUMN Name Full_Name VARCHAR(20);

SELECT * FROM student
ORDER BY Marks;

DELETE FROM student
WHERE Marks<95;

ALTER TABLE student
DROP COLUMN Grades;
