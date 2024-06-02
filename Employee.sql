CREATE DATABASE IF NOT EXISTS college;
USE college;
CREATE TABLE Employee(
    Empno NUMERIC(4),
    Ename VARCHAR(20),
    Job VARCHAR(20),
    Mgr NUMERIC(4),
    Sal NUMERIC(10)
);
/*b*/
INSERT INTO Employee
(Empno,Ename,Job,Mgr,Sal)
VALUES 
(12,"Mansa","Tester",12,2400000),
(14,"Manoj","Game Developer",12,1700000),
(15,"Sumanth","IPS",12,1900000),
(17,"Samhitha","Bank Manager",12,1700000),
(19,"Nikhil","Game Developer",12,1700000);
SELECT * FROM Employee;

SET SQL_SAFE_UPDATES=0;
DROP TABLE Employee;
/*c*/
UPDATE Employee
SET Job="CGM"
WHERE Empno=202;

/*e*/
DELETE FROM Employee
WHERE Empno=19;












