CREATE DATABASE LAB;
USE LAB;
CREATE TABLE Student(
  S_ID INT PRIMARY KEY,
  Name VARCHAR(50),
  Department VARCHAR(20)
);
CREATE TABLE Registrations(
  ID INT,
  Fee NUMERIC(10,2),
  FOREIGN KEY (ID) REFERENCES Student(S_ID)
);
INSERT INTO Student
(S_ID,Name,Department)
VALUES
(545,"Sumanth","CSE"),
(544,"Lilly","CSE"),
(541,"Swetha","CSE"),
(572,"Nikhil","CSE"),
(576,"Ajay","CSE"),
(509,"Rishitha","CSE"),
(510,"Manogna","CSE"),
(504,"Jyothi","CSE"),
(534,"Deepthi","Mechanical"),
(546,"Bhavana","Civil");
SELECT * FROM Student
ORDER BY Name;