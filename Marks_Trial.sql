USE XYZ;

CREATE TABLE practice(
    ID INT UNIQUE,
    Name VARCHAR(20) NOT NULL,
    RollNo INT NOT NULL,
    Marks INT DEFAULT 60
    CONSTRAINT marks_check CHECK (Marks>=0 AND Marks<=100)
);

INSERT INTO practice
(ID,Name,RollNo,Marks)
VALUES
(1,"Sumanth",545,99),
(2,"Samhitha",532,98),
(3,"Mansa",541,98),
(4,"Manoj",551,97);



SELECT * FROM practice;

DROP TABLE practice;

