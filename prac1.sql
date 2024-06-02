CREATE DATABASE newww;
USE newww;

CREATE TABLE Table1 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT
);
INSERT INTO Table1 (name, age) VALUES 
('John', 25),
('Alice', 30),
('Bob', 35),
('Emma', 28),
('Michael', 40),
('Sophia', 22),
('David', 33),
('Olivia', 27),
('James', 31),
('Emily', 29);

CREATE TABLE Table2 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    table1_id INT,
    city VARCHAR(50),
    FOREIGN KEY (table1_id) REFERENCES Table1(id)
);
INSERT INTO Table2 (table1_id, city) VALUES 
(1, 'New York'),
(2, 'Los Angeles'),
(3, 'Chicago'),
(4, 'Houston'),
(5, 'Phoenix'),
(6, 'Philadelphia'),
(7, 'San Antonio'),
(8, 'San Diego'),
(9, 'Dallas'),
(10, 'San Jose');

SELECT * FROM Table1,Table2;

-- normal join gives the cartesian product.
SELECT * FROM Table1
JOIN
Table2;

SELECT * FROM Table1;
SELECT * FROM Table2;

SELECT * FROM Table1
INNER JOIN 
Table2
ON Table1.id=Table2.table1_id;

SET SQL_SAFE_UPDATES=0;
DELETE FROM Table2
WHERE city = "Houston" OR city="San Diego";

-- Inner Join
SELECT * FROM Table1
INNER JOIN
Table2
ON Table1.id=Table2.table1_id;

-- Left Outer Join
SELECT * FROM Table1
LEFT JOIN
Table2
ON Table1.id=Table2.table1_id;

-- Right Outer Join 
SELECT * FROM Table1
RIGHT JOIN
Table2
ON Table1.id=Table2.table1_id;


-- Full Outer Join ( gives all the columns that are present in both the relations replacing the missing values with null values in the result.
SELECT * FROM Table1 LEFT JOIN Table2 ON Table1.id=Table2.table1_id
UNION
SELECT * FROM Table1 RIGHT JOIN Table2 ON Table1.id=Table2.table1_id;

SELECT * FROM Table1
RIGHT JOIN Table2
ON Table1.id=Table2.table1_id
WHERE Table1.id IS NULL;

INSERT INTO Table2 VALUES (11,9,"Anantapur");

SELECT * FROM Table1
RIGHT JOIN Table2
ON Table1.id=Table2.table1_id
WHERE Table1.id IS NULL;


USE newww;
CREATE TABLE Emp(
  id INT,
  name VARCHAR(20),
  manager_id INT
);
INSERT INTO Emp
(id,name,manager_id)
VALUES
(101,"adam",103),
(102,"bob",104),
(103,"casey",NULL),
(104,"donald",103);

SELECT b.name,a.name as Manager_name
FROM Emp as a
JOIN Emp as b
ON a.id=b.manager_id;

CREATE TABLE markssss(
  ID INT,
  name VARCHAR(20),
  Marks INT
);

INSERT INTO markssss
(ID,name,Marks)
VALUES
(1,"A",34),
(2,"H",35),
(3,"R",36),
(4,"S",37),
(5,"D",39),
(6,"F",34),
(7,"C",37),
(8,"B",31);

SELECT name,Marks 
FROM markssss
WHERE Marks> (SELECT avg(Marks) FROM markssss);


SELECT name 
FROM markssss
WHERE ID IN (SELECT ID FROM markssss WHERE ID%2=0);


SELECT name FROM markssss WHERE ID%2=0;

SET SQL_SAFE_UPDATES=0;
ALTER TABLE markssss
ADD COLUMN City VARCHAR(20);

UPDATE markssss
SET City= "A"
WHERE ID%2!=0;

UPDATE markssss
SET City="B"
WHERE ID%2=0;

SELECT * FROM markssss;


SELECT max(C.Marks) AS Max_Marks
FROM (SELECT Marks FROM markssss
      WHERE City="A") as C;
      
      
CREATE TABLE Names(
  Name VARCHAR(20)
);

CREATE TRIGGER up_case
BEFORE 
UPDATE 
ON Names
FOR EACH ROW
SET NEW.Name=UPPER(New.Name);

CREATE TRIGGER upper_case
BEFORE 
INSERT
ON Names
FOR EACH ROW
SET NEW.Name=UPPER(New.Name);

INSERT INTO Names
(Name)
VALUES
("sumanth"),("ajay"),("nikhil");

SELECT * FROM Names;

DELIMITER //
CREATE TRIGGER del
AFTER 
DELETE
ON Names
FOR EACH ROW
BEGIN
  INSERT INTO del_names VALUES(CURRENT_USER(),NOW(),OLD.Name) ;
END;
//






