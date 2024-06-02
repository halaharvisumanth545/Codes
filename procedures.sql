CREATE DATABASE new1;
USE new1;



DELIMITER //
CREATE PROCEDURE swap_numbers()
BEGIN 
  DECLARE num1 INT;
  DECLARE num2 INT;
  DECLARE temp INT;
  SET num1 = 10;
  SET num2 = 20;
  SELECT CONCAT("num1= ",num1," and ","num2= ",num2) AS Result;
  SET temp=num1;
  SET num1=num2;
  SET num2=temp;
  SELECT CONCAT("num1= ",num1," and ","num2= ",num2) AS Result;
END;
//
DELIMITER ;
CALL swap_numbers();
DROP PROCEDURE swap_numbers;




DELIMITER //
CREATE PROCEDURE swetha()
BEGIN
  DECLARE num1 INT;
  DECLARE num2 INT;
  DECLARE temp INT;
  SET num1=12;
  SET num2=13;
  SELECT CONCAT("num1= ",num1," and ","num2= ",num2) AS Result;
  SET temp=num1;
  SET num1=num2;
  SET num2=temp;
  SELECT CONCAT("num1= ",num1," and ","num2= ",num2) AS Result;
END;
//
DELIMITER ;
CALL swetha();
DROP PROCEDURE swetha;




DELIMITER //
CREATE PROCEDURE primeornot(IN num1 INT)
BEGIN 
  DECLARE n INT;
  DECLARE i INT DEFAULT 1;
  DECLARE f INT DEFAULT 0;
  SET n=num1;
  WHILE i<n DO
    IF n%i=0 THEN
      SET f=f+1;
	END IF;
    SET i=i+1;
  END WHILE;
  IF f>2 THEN 
    SELECT CONCAT(n," is not a prime number") AS Result;
  ELSE 
	SELECT CONCAT(n," is a prime number") AS Result;
  END IF;
END;
//
DELIMITER ;
CALL primeornot(837);




DELIMITER //
CREATE PROCEDURE sumoftwo(IN num1 INT,IN num2 INT)
  BEGIN
    DECLARE sum INT DEFAULT 0;
    SET sum =num1+num2;
    SELECT CONCAT("The sum of two numbers is: ",sum)AS Result;
  END;
//
DELIMITER ;
CALL sumoftwo(2,3);