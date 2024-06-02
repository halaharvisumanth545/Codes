CREATE DATABASE Practice;
USE Practice;
CREATE TABLE Students(
  ID INT NOT NULL,
  Name VARCHAR(20) NOT NULL,
  Dept_ID INT NOT NULL,
  FOREIGN KEY (Dept_ID) REFERENCES Dept(ID)
  ON UPDATE CASCADE
  ON DELETE CASCADE
);
CREATE TABLE Dept(
  ID INT PRIMARY KEY,
  Dept_Name VARCHAR(20) NOT NULL,
  Code VARCHAR(5)
);
INSERT INTO Students
(ID,Name,Dept_Id)
VALUES
(545,"Sumanth Raj",5),
(532,"Purandar",5),
(572,"Nikhil",5),
(576,"Ajay",5),
(541,"Swetha",5),
(544,"Lilly",5),
(509,"Rishitha",5),
(510,"Manogna",5),
(504,"Jyothi",5),
(542,"Vidya",5),
(464,"Bhavana",4),
(475,"Deepthi",4);

INSERT INTO Dept
(ID,Dept_Name,Code)
VALUES
(5,"CSE",05),
(4,"ECE",04);

SELECT * FROM Students;
SELECT * FROM Dept;

SELECT Name,Dept_Name,Code,Students.ID FROM Students
INNER JOIN Dept
ON Students.Dept_ID=Dept.ID;

DROP TABLE Students;
DROP TABLE Dept;


  