USE obs_1;
-- 5
CREATE TABLE fib(
  N INT
);
DELIMITER //
CREATE PROCEDURE fibonacci(IN n INT)
BEGIN
  DECLARE n1 INT DEFAULT 0;
  DECLARE n2 INT DEFAULT 1;
  DECLARE n3 INT DEFAULT 0;
  DECLARE i INT DEFAULT 3;
  INSERT INTO fib (N) VALUES (n1),(n2);
  WHILE (i<=n) DO 
    SET n3=n1+n2;
    SET n1=n2;
    SET n2=n3;
    SET i=i+1;
    INSERT INTO fib VALUE(n3);
  END WHILE;
END;
//
DELIMITER ;
CALL fibonacci(5);
SELECT * FROM fib;

-- 1
DELIMITER //
CREATE PROCEDURE palindrome(IN n INT)
BEGIN 
  DECLARE n_str VARCHAR(10);
  DECLARE new_n INT;
  SET n_str=CAST(n AS CHAR);
  SET n_str=REVERSE(n_str);
  SET new_n=CAST(n_str AS UNSIGNED);
  SELECT CONCAT("The palindrome of ",n," is ",new_n) AS Output;
END;
//
DELIMITER ;
DROP PROCEDURE palindrome;
CALL palindrome(123);

-- 3
DELIMITER //
CREATE PROCEDURE factorial(IN n INT)
BEGIN 
  DECLARE i INT DEFAULT 1;
  DECLARE f INT DEFAULT 1;
  WHILE (i<=n) DO 
    SET f= f*i;
    SET i=i+1;
  END WHILE;
  SELECT CONCAT("The factorial of ",n," is ",f);
END;
//
DELIMITER ;

-- 4 
DELIMITER //
CREATE PROCEDURE sum_n(IN n INT)
BEGIN 
  DECLARE sum_n INT DEFAULT 0;
  DECLARE i INT DEFAULT 1;
  WHILE (i<=n) DO 
  SET sum_n=sum_n+i;
  SET i=i+1;
  END WHILE;
  SELECT CONCAT("The sum of first ",n," natural numbers is ",sum_n) AS Result;
END;
//
DELIMITER ;
CALL sum_n(10);
DROP PROCEDURE sum_n;

-- 6
DELIMITER //
CREATE PROCEDURE perfect(IN n INT)
BEGIN 
  DECLARE i INT DEFAULT 1;
  DECLARE sum_f INT DEFAULT 0;
  WHILE i<n DO
    IF n%i=0 THEN
      SET sum_f=sum_f+i;
	END IF;
    SET i=i+1;
  END WHILE;
  IF sum_f=n THEN 
    SELECT CONCAT(n," is a perfect number.") AS Result;
  ELSE 
    SELECT CONCAT(n," is not a perfect number.")AS Result;
  END IF;
END;
//
DELIMITER ;
DROP PROCEDURE perfect;
CALL perfect(6);
