CREATE DATABASE morning_practice;
USE morning_practice;

CREATE TABLE Student(
  ID INT NOT NULL,
  Name VARCHAR(20) NOT NULL,
  Ad_No CHAR(10),
  Dept INT NOT NULL,
  FOREIGN KEY (Dept) REFERENCES Dept(Dept_ID)
);

CREATE TABLE Dept(
  Dept_ID INT PRIMARY KEY,
  Dept_Name VARCHAR(20)
);

INSERT INTO Student
(ID,Name,Ad_No,Dept)
VALUES
(545,"Sumanth","22001A0545",5),
(572,"Nikhil","22001A0572",5),
(509,"Rishitha","22001A0509",5),
(576,"Ajay","22001A0576",5),
(544,"Lilly","22001A0544",5),
(541,"Swetha","22001A0541",5),
(510,"Manogna","22001A0510",5),
(504,"Jyothi","22001A0504",5);

INSERT INTO Dept
(Dept_ID,Dept_Name)
VALUES
(5,"CSE"),
(4,"ECE"),
(1,"Civil"),
(2,"Mechanical"),
(3,"Chemical");

SELECT Student.ID,Student.Name,Dept.Dept_ID FROM Student
INNER JOIN Dept
ON Student.Dept=Dept.Dept_ID
ORDER BY Student.ID;

SELECT Ad_No,Student.Name,Dept.Dept_ID FROM Student
INNER JOIN Dept
ON Student.Dept=Dept.Dept_ID
ORDER BY Student.ID;


INSERT INTO Student
(ID,Name,Ad_No,Dept)
VALUES
(432,"Bhavana","22001A0432",4),
(443,"Bhavanaishwarya","22001A0443",4),
(354,"Bhuvana","22001A0454",3);

SET SQL_SAFE_UPDATES=0;
UPDATE Student
SET Ad_No="22001A0354"
WHERE ID=354;

CREATE TABLE test(
  Value NUMERIC(3,2)
);
INSERT INTO test
VALUES (3.32);
SELECT * FROM test;
DROP TABLE test;
