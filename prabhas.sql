CREATE database ammavadi;
use ammavadi;
-- school details
CREATE table studentsdetails(
   student_id int,
   school_type varchar(20),
   school_name varchar(20),
   gender varchar(20),
   attendance numeric,
   class varchar(20)
);
Insert into studentsdetails(student_id,school_type,school_name,gender,attendance,class)
values(801,"private","lsrw","M",75,"10th"),
	 (602,"public","KGBV","F",75,"7th"),
     (502,"private","chaitanya","M",78,"6th");
ALTER table studentsdetails
add student_name varchar(20);
SET SQL_SAFE_UPDATES=0;
UPDATE studentsdetails
 set student_name="raju" where student_id=801;
 commit;
UPDATE studentsdetails
 set student_name="prabhas" where student_id=502;
 commit;
UPDATE studentsdetails
 set student_name="ramu" where student_id=602;
 commit;
ALTER table studentsdetails
add constraint primary  key(student_id);

select * from studentsdetails;

-- PERSONAL DETAILS
CREATE table personal_detail(
aadhar_no varchar(20),
mother_name varchar(20),
father_name varchar(20),
parent_occupation varchar(20),
student_id int,
foreign key (student_id) REFERENCES studentsdetails(student_id)
);
Insert into personal_detail(aadhar_no,mother_name,father_name,parent_occupation,student_id)
values("468610699562","shilpa","sivaji","farmer",801),
      ("456284219562","bhavani","vijay","govt.",502),
      ("435678903456","shivani","prasanth","govt.",602);
select * from personal_detail;

-- documents avaliability
CREATE table documents(
    avg_elec_units numeric,
    ration_card varchar(20),
    family_income numeric,
    student_id int,
    foreign key(student_id) REFERENCES studentsdetails(student_id)
);
INSERT INTO documents (avg_elec_units,ration_card,family_income,student_id)
VALUES(300,"YES",100000,801),
	  (200,"NO",150000,502),
      (500,"YES",60000,602);
select * from documents;

select * from studentsdetails NATURAL JOIN personal_detail;
Select * from studentsdetails inner join personal_detail; 
SELECT *
FROM studentsdetails
RIGHT JOIN personal_detail ON studentsdetails.student_id = personal_detail.student_id;
SELECT sd.student_id, sd.attendance, pd.parent_occupation, doc.ration_card,doc.family_income, doc.avg_elec_units
FROM studentsdetails sd
JOIN personal_detail pd ON sd.student_id = pd.student_id
JOIN documents doc ON sd.student_id = doc.student_id;

SELECT sd.student_id,
       CASE
           WHEN sd.attendance >= 75
                AND pd.parent_occupation != 'govt.'
                AND doc.ration_card = 'YES'
                AND doc.avg_elec_units <= 300
                AND doc.family_income < 100000 THEN 'Yes'
           ELSE 'No'
       END AS applicable
FROM studentsdetails sd
JOIN personal_detail pd ON sd.student_id = pd.student_id
JOIN documents doc ON sd.student_id = doc.student_id;



SELECT * FROM studentsdetails;
SELECT * FROM personal_detail;
SELECT * FROM documents;

desc documents;
SELECT * 

FROM studentsdetails 

LEFT JOIN personal_detail ON studentsdetails.student_id = personal_detail.student_id 

union 

SELECT * 

FROM studentsdetails 

RIGHT JOIN personal_detail ON studentsdetails.student_id = personal_detail.student_id; 