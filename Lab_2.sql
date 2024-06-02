USE obs_1;

-- 1a
CREATE ROLE student;
GRANT ALL ON obs_1.* TO student;
CREATE USER "Sammy" IDENTIFIED BY "Sumanth@2020059" DEFAULT ROLE student;
GRANT ALL ON obs_1.* TO "Sammy";

-- 1b
INSERT INTO Employee
(Empno,Name,Job,Mgr,Sal,Commision)
VALUES
(23,"Akshay","Engineer",12,"1200000",0),
(24,"Akash","Engineer",12,"1200000",0),
(25,"Akhil","Engineer",12,"1200000",0);
SELECT * FROM Employee;

SET AUTOCOMMIT=OFF;

COMMIT;

DELETE FROM Employee
WHERE Empno=23 OR Empno=24 OR Empno=25;
SELECT * FROM Employee;

ROLLBACK;

SELECT * FROM Employee;

-- 1c
ALTER TABLE Employee -- Adding a primary key constraint
ADD CONSTRAINT PRIMARY KEY (Name);

ALTER TABLE Employee -- Adding a not null constraint 
MODIFY Job VARCHAR(20) NOT NULL;

-- 1d 
INSERT INTO Employee -- Inserting null values
VALUES
("Sam","Engineer",NULL,NULL,NULL,0);

SELECT * FROM Employee;


-- 2b
INSERT INTO department
(Deptno,Deptname,Location)
VALUES
(25,"human","Attapur");

COMMIT;

SELECT * FROM department;

-- 2c
ALTER TABLE department
ADD CONSTRAINT UNIQUE (Deptname),
MODIFY Location VARCHAR(20) NOT NULL;

-- 2d
ALTER TABLE department
ADD COLUMN Dept_ID INT;

UPDATE department
SET Dept_ID=12;

SELECT * FROM department;

-- 3b
INSERT INTO department
(Deptno,Deptname,Location,Dept_Id)
VALUES
(53,"HHH","Anantapur",345),
(52,"TTT","Vizag",NULL),
(51,"NNN","Vizag",NULL);
COMMIT;

-- 3c
DELETE FROM department
WHERE Deptno=53 OR Deptno=52 OR Deptno=51;

SELECT * FROM department;
ROLLBACK;

SELECT * FROM department;

-- 3d
CREATE TABLE TEST_TABLE(
  Name VARCHAR(20) PRIMARY KEY
);
INSERT INTO TEST_TABLE
(Name)
VALUES
("Management"),
("Administratoin"),
("Human Resource"),
("human"),
("NNN"),
("TTT"),
("HHH");

SET FOREIGN_KEY_CHECKS=0;

ALTER TABLE department
ADD CONSTRAINT foreignkey FOREIGN KEY (Deptname) REFERENCES TEST_TABLE(Name);

-- 4b
INSERT INTO sailor
(Sid,Sname,Rating,Age)
VALUES
(123,"Sunnyy",9.8,21),
(124,"Sunith",7.8,21),
(126,"Surya",8.8,21);
COMMIT;

-- 4c 
SAVEPOINT A; -- creatoin of savepoint 
DELETE FROM sailor
WHERE Sname="Sunith";

SELECT * FROM sailor;

ROLLBACK TO A;-- verification of savepoint

SELECT * FROM sailor;

-- 4d
ALTER TABLE sailor
MODIFY Rating NUMERIC(8,1) NOT NULL;


-- 5a
CREATE ROLE pap;
GRANT ALL ON obs_1.* TO pap;
CREATE USER "pap1" IDENTIFIED BY "pap@123" DEFAULT ROLE pap;
GRANT ALL ON obs_1.sailor TO "pap1";

-- 5b
REVOKE DELETE ON obs_1.sailor FROM "pap1";

-- 5c
ALTER USER "pap1" IDENTIFIED BY "pap@12";

-- 5d
CREATE TABLE paps(
  Name VARCHAR(20) PRIMARY KEY
);
INSERT INTO paps
(Name)
VALUES
("Mallaiah");
ALTER TABLE sailor -- Added foreign key constraint
ADD CONSTRAINT FOREIGN KEY (Sname) REFERENCES paps(Name);

ALTER TABLE sailor
MODIFY Age INT NOT NULL;-- added not null constraint 


-- 6b

SELECT * FROM reserves;
UPDATE reserves
SET Sid =222
WHERE BoatID = 22005;

SAVEPOINT C;
COMMIT;
SELECT * FROM reserves;

UPDATE reserves
SET Sid= 225
WHERE BoatID= 22005;
SELECT * FROM reserves;

ROLLBACK;

ROLLBACK TO C;

-- 6c 
CREATE TABLE tables(
  Num INT PRIMARY KEY
);

desc reserves;

ALTER TABLE reserves -- added foreign key constraint 
ADD CONSTRAINT FOREIGN KEY (Sid) REFERENCES tables(Num);

ALTER TABLE reserves-- added not null constraint
MODIFY Sid INT NOT NULL;

-- 6d
ALTER TABLE reserves
MODIFY Sid INT; -- removed not null constraint