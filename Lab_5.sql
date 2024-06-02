CREATE DATABASE obs_5;
USE obs_5;
-- 1
CREATE TABLE Salaries(
  Emp_No INT PRIMARY KEY,
  Emp_Name VARCHAR(20),
  Emp_Salary NUMERIC(10,2)
);
INSERT INTO Salaries (Emp_No, Emp_Name, Emp_Salary) VALUES
(1, 'John Doe', 50000.00),
(2, 'Jane Smith', 60000.00),
(3, 'Alice Johnson', 70000.00),
(4, 'Bob Williams', 55000.00),
(5, 'Emily Brown', 65000.00);
SET GLOBAL log_bin_trust_function_creators = 1;
DELIMITER //
CREATE FUNCTION total_sal(Emp_no INT)
RETURNS NUMERIC(10,2)
BEGIN
  DECLARE sal NUMERIC(10,2);
  DECLARE total_sal NUMERIC(10,2);
  SET sal= sal(Emp_no);
  SET total_sal=sal+ 0.2*sal;
  RETURN total_sal;
END;
//
DELIMITER ; 

DELIMITER //
CREATE FUNCTION sal(Emp INT)
RETURNS NUMERIC(10,2)
BEGIN
 RETURN ( SELECT Emp_Salary FROM Salaries WHERE Emp_No=Emp); 
END;
//
DELIMITER ;

SELECT total_sal(2);

-- 3
-- factorial
DELIMITER //
CREATE FUNCTION fact(n INT)
RETURNS INT
BEGIN
  DECLARE i INT;
  DECLARE f INT;
  SET f=1;
  SET i=n;
    WHILE i>=1 DO 
      SET f=f*i;
      SET i=i-1;
    END WHILE;
  RETURN f;
END;
// 
DELIMITER ;
-- ncr
DELIMITER //
CREATE FUNCTION ncr(n NUMERIC,r NUMERIC)
RETURNS NUMERIC
BEGIN 
  DECLARE res NUMERIC;
  SET res= fact(n)/(fact(n-r)*fact(r));
  RETURN res;
END;
//
DELIMITER ;
SELECT ncr(3,2);

-- 5
DELIMITER //
CREATE  FUNCTION luck1(d DATE)
RETURNS INT
BEGIN
  DECLARE total INT DEFAULT 0;
  DECLARE DOB INT;
  DECLARE DOB_Str CHAR(10);
  SET DOB_Str=REPLACE(CAST(d AS CHAR),"-","");
  SET DOB= CAST(DOB_Str AS UNSIGNED);
  IF sumdigits1(DOB)<=9 THEN
    RETURN sumdigits1(DOB);
  ELSE 
    SET total=sumdigits1(DOB);
    WHILE total>9 DO
      SET total=sumdigits1(total);
	END WHILE;
    RETURN total;
  END IF;
END;
//
DELIMITER ;
DROP FUNCTION luck;
DELIMITER //
CREATE FUNCTION sumdigits1(n INT)
RETURNS INT
BEGIN
  DECLARE total INT DEFAULT 0;
  WHILE n>0 DO
    SET total=total+ n%10;
    SET n=FLOOR(n/10);
  END WHILE;
  RETURN total;
END;
//
DELIMITER ;
SELECT luck1("2005-07-27")as LUcky_Number;

-- 6
DELIMITER //
CREATE FUNCTION rev_number(n INT)
RETURNS INT
BEGIN 
  DECLARE num_str VARCHAR(10);
  DECLARE rev_num_str VARCHAR(10);
  DECLARE rev INT;
  SET num_str= CAST(n AS CHAR);
  SET rev_num_str=REVERSE(num_str);
  SET rev=CAST(rev_num_str AS UNSIGNED);
  RETURN rev;
END;
//
DELIMITER ;

SELECT rev_number(1234) AS Reversed_Number;