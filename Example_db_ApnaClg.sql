CREATE DATABASE MY_COLLEGE;
USE MY_COLLEGE;
CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(20),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20),
    CONSTRAINT marks_validity_check CHECK( marks>=0 and marks<=100)
);

INSERT INTO student
(rollno,name,marks,grade,city)
VALUES
(1,"sumanth",94,"S","Anantapur"),
(2,"prabhas",88,"S","Anantapur"),
(3,"nikhil",86,"S","Anantapur"),
(4,"ajay",85,"S","Anantapur");

INSERT INTO student
(rollno,name,marks,grade,city)
VALUES
(5,"suma",76,"S","Anantapur"),
(6,"prabha",56,"S","Anantapur"),
(7,"nikhi",45,"S","Anantapur"),
(8,"jay",12,"S","Anantapur");

DROP TABLE student;

/*Accessing the table in different ways using SELECT clause*/

SELECT DISTINCT city FROM student;/*word distinct depicts the unique values(cities) in this case*/
SELECT * FROM student;/*display all the columns in the table*/
SELECT name FROM student;/*display the name column in the table*/
SELECT name,marks FROM student;/*display th ecolumns name and marks in the order as specified*/
SELECT rollno,grade FROM student;/*display the columns rollno and grade in the same order as mentioned*/

/*Usage of WHERE clause in SQL*/

SELECT * FROM student WHERE (marks<=98);/*students who secured below 98 marks*/

/*Aggregate funcitons in SQL
  COUNT, MAX, MIN, SUM, AVG
*/

SELECT MIN(marks) FROM student;/*minimum marks obtained*/
SELECT MAX(marks) FROM student;/*maximum marks obtained*/ 
SELECT COUNT(name) FROM student; /*number of students in the class*/

/*ORDER BY clause*/

SELECT * FROM student/*students in ascending order of threir names*/
ORDER BY name ASC;
SELECT * FROM student/*students in descending order of their names*/
ORDER BY name DESC;
SELECT * FROM student/*students in ascnding order of their roll numbers*/
ORDER BY rollno ASC;

/*LIMIT clause*/

SELECT * FROM student/*top-4 entries*/
LIMIT 4;
SELECT * FROM student WHERE marks BETWEEN 75 and 100 /* people in range 75,100 top-4*/
LIMIT 4;

SELECT * FROM student ORDER BY marks DESC/*top-3*/
LIMIT 3;

/*NEW TABLE*/
CREATE TABLE new(
  id INT PRIMARY KEY,
  name VARCHAR(30),
  marks INT NOT NULL,
  city VARCHAR(10),
  rollno INT NOT NULL UNIQUE
);
INSERT INTO new
(id,rollno,name,city,marks)
VALUES
(1,45,"A","Mumbai",56),
(2,46,"An","Madras",67),
(3,47,"Am","Goa",78),
(4,48,"Af","Lakshdweep",88),
(5,49,"Ad","Manglore",83),
(6,50,"As","Manglore",73),
(7,51,"Ag","Goa",47),
(8,52,"Ah","Lakshdweep",84),
(9,53,"Ay","Madras",91),
(10,54,"Ayr","Lakshdweep",75),
(11,55,"Ayu","Mumbai",96),
(12,56,"Ai","Lakshdweep",86),
(13,57,"Ahd","Mumbai",32),
(14,58,"Add","Manglore",98);

SELECT * FROM new;
DROP TABLE new;

/*GROUP BY clause*/

SELECT city,avg(marks)
FROM new GROUP BY city
ORDER BY city;

SELECT city,avg(marks)
FROM new GROUP BY city
ORDER BY avg(marks);