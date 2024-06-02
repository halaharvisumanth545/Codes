USE obs_1;
CREATE TABLE marks(
  Name VARCHAR(20),
  Marks INT DEFAULT 0
);
INSERT INTO marks
(Name,Marks)
VALUES 
("Sumanth",97),
("Lilly",97),
("Swetha",97),
("Nikhil",97),
("Manogna",97),
("Ajay",97),
("Jyothi",97),
("Rishitha",97);

CREATE TRIGGER Add_Marks
BEFORE 
INSERT
ON marks
FOR EACH ROW
SET new.Marks=new.Marks+100;

INSERT INTO marks VALUES ("Lolli",-3);

SELECT * FROM marks;

CREATE TRIGGER Remove_marks
BEFORE
INSERT
ON marks
FOR EACH ROW
SET new.Marks=new.Marks-100;

INSERT INTO marks VALUES ("golli",197);

SELECT * FROM marks 
WHERE Name="golli";
DROP TABLE marks;