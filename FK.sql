CREATE DATABASE FK;
USE FK;
CREATE TABLE dept(
    ID INT PRIMARY KEY,
    Name VARCHAR(20)
);
CREATE TABLE teacher(
    ID INT PRIMARY KEY,
    Name VARCHAR(20),
    Dept_ID INT,
    FOREIGN KEY (Dept_ID) references dept(ID)
);

INSERT INTO dept
(ID,Name)
VALUES
(101,"Science"),
(102,"English"),
(103,"Hindi");

DROP TABLE dept;

INSERT INTO teacher
(ID,Name,Dept_ID)
VALUES
(1011,"Adnan",102),
(1012,"Gafoor",103),
(1013,"Bob",102),
(1014,"Donald",102);

SELECT * FROM teacher;
SELECT * FROM dept;