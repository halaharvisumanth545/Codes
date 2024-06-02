USE obs_1;

CREATE TABLE Salaries(
  Name VARCHAR(20),
  Salary INT
);
INSERT INTO Salaries
(Name,Salary)
VALUES
("Sumanth",3000000),
("Samhitha",3100000);

DELIMITER //
CREATE TRIGGER displays
AFTER
UPDATE
ON Salaries
FOR EACH ROW
BEGIN
  INSERT INTO log VALUES(NEW.Name,NEW.Salary,OLD.Salary,NEW.Salary-OLD.Salary);
END;
//
DELIMITER ;

CREATE TABLE log(
  Name VARCHAR(20),
  New_Salary INT,
  Old_Salary INT,
  Difference INT
);
DROP TABLE log;

DROP TRIGGER display;

UPDATE Salaries
SET Salary=3100000
WHERE Name="Sumanth";

UPDATE Salaries
SET Salary=3200000
WHERE Name="Samhitha";

SELECT * FROM Salaries;
SELECT * FROM log;
  