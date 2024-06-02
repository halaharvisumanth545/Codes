CREATE DATABASE UPSC_DB;
USE UPSC_DB;
CREATE TABLE Applicants(
  Applicant_ID CHAR(10) PRIMARY KEY,
  Name VARCHAR(30),
  Address VARCHAR(200),
  Contact_No VARCHAR(15),
  Email VARCHAR(100),
  Gender VARCHAR(10),
  DOB DATE,
  Educational_Qualifications VARCHAR(10000)
);

CREATE TABLE Examinations(
  Exam_ID CHAR(10) PRIMARY KEY,
  Exam_Name VARCHAR(50),
  Exam_Date DATE,
  Exam_Type VARCHAR(20),
  Syllabus VARCHAR(10000)
);

CREATE TABLE Positions(
  Position_ID CHAR(10) PRIMARY KEY,
  Position_Name VARCHAR(30),
  Department VARCHAR(20),
  Eligibility_Criteria VARCHAR(10000),
  Exam_ID CHAR(10),
  FOREIGN KEY (Exam_ID) REFERENCES Examinations(Exam_ID)
);

CREATE TABLE Recruitment_Process(
  Process_ID CHAR(10) PRIMARY KEY,
  Position_ID CHAR(10),
  Exam_Date DATE,
  Application_Start_Date DATE,
  Application_End_Date DATE,
  Selection_Process_Details VARCHAR(10000),
  FOREIGN KEY (Position_ID) REFERENCES Positions(Position_ID)
);

CREATE TABLE Exam_Centers(
  Center_ID CHAR(10) PRIMARY KEY,
  Center_Name VARCHAR(50),
  Location VARCHAR(100)
);

CREATE TABLE Admit_Cards(
  AdmitCard_ID CHAR(10) PRIMARY KEY,
  Applicant_ID CHAR(10),
  Exam_ID CHAR(10),
  Exam_Center VARCHAR(50),
  Exam_Date DATE,
  Download_Link VARCHAR(100),
  FOREIGN KEY (Applicant_ID) REFERENCES Applicants(Applicant_ID),
  FOREIGN KEY (Exam_ID) REFERENCES Examinations(Exam_ID)
);  

INSERT INTO Applicants (Applicant_ID, Name, Address, Contact_No, Email, Gender, DOB, Educational_Qualifications)
VALUES 
('A001', 'Sumanth Raj', '123 Main St,Anantapur,Andhra Pradesh','8576749379', 'sumanth@gmail.com', 'Male', '1990-05-15', 'Bachelor\'s in Computer Science'),
('A002', 'Nikhil', '456 Oak Ave,Anantapur,Andhra Pradesh', '9845298554', 'nikku@gmail.com', 'Male', '1992-08-20', 'Master\'s in Business Administration'),
('A003', 'Ajay', '789 Elm St,Anantapur,Andhra Pradesh', '9083744782', 'ajju@gmail.com', 'Male', '1988-12-10', 'Bachelor\'s in Electrical Engineering'),
('A004', 'Dhanush', '234 Pine St,Anantapur,Andhra Pradesh', '7890264823', 'dhannuu@gmail.com', 'Male', '1995-03-25', 'Master\'s in Economics'),
('A005', 'Vinod', '567 Cedar St,Anantapur,Andhra Pradesh', '9875876997', 'vinnuu@gmail.com', 'Male', '1993-06-30', 'Bachelor\'s in Mechanical Engineering');

INSERT INTO Examinations (Exam_ID, Exam_Name, Exam_Date, Exam_Type, Syllabus)
VALUES 
('E001', 'Programming Test', '2024-03-15', 'Written', 'Programming concepts and algorithms'),
('E002', 'Management Aptitude Test', '2024-03-20', 'Online', 'Quantitative Aptitude, Verbal Ability, Logical Reasoning'),
('E003', 'Electrical Engineering Exam', '2024-03-25', 'Written', 'Electrical circuits, Power systems, Control systems'),
('E004', 'Economics Test', '2024-04-05', 'Online', 'Microeconomics, Macroeconomics, Econometrics'),
('E005', 'Mechanical Engineering Test', '2024-04-10', 'Written', 'Thermodynamics, Fluid Mechanics, Strength of Materials');

INSERT INTO Positions (Position_ID, Position_Name, Department, Eligibility_Criteria, Exam_ID)
VALUES 
('P001', 'Software Developer', 'IT', 'Bachelor\'s in Computer Science', 'E001'),
('P002', 'Marketing Manager', 'Marketing', 'Master\'s in Business Administration', 'E002'),
('P003', 'Electrical Engineer', 'Engineering', 'Bachelor\'s in Electrical Engineering', 'E003'),
('P004', 'Economist', 'Economics', 'Master\'s in Economics', 'E004'),
('P005', 'Mechanical Engineer', 'Engineering', 'Bachelor\'s in Mechanical Engineering', 'E005');

INSERT INTO Recruitment_Process (Process_ID, Position_ID, Exam_Date, Application_Start_Date, Application_End_Date, Selection_Process_Details)
VALUES 
('RP001', 'P001', '2024-03-15', '2024-02-01', '2024-02-28', 'Written exam followed by interview'),
('RP002', 'P002', '2024-03-20', '2024-02-05', '2024-03-05', 'Panel interview'),
('RP003', 'P003', '2024-03-25', '2024-02-10', '2024-03-10', 'Technical test and HR interview'),
('RP004', 'P004', '2024-04-05', '2024-03-01', '2024-03-31', 'Group discussion and final interview'),
('RP005', 'P005', '2024-04-10', '2024-03-05', '2024-04-05', 'Written test, presentation, and interview');

INSERT INTO Exam_Centers (Center_ID, Center_Name, Location)
VALUES 
('EC001', 'City Hall', 'Downtown'),
('EC002', 'Central Library', 'Main Street'),
('EC003', 'Community Center', 'Park Avenue'),
('EC004', 'University Hall', 'College Campus'),
('EC005', 'Convention Center', 'Riverside');

INSERT INTO Admit_Cards (AdmitCard_ID, Applicant_ID, Exam_ID, Exam_Center, Exam_Date, Download_Link)
VALUES 
('AC001', 'A001', 'E001', 'EC001', '2024-03-15', 'https://upscprovider.com/ac001'),
('AC002', 'A002', 'E002', 'EC002', '2024-03-20', 'https://upscprovider.com/ac002'),
('AC003', 'A003', 'E003', 'EC003', '2024-03-25', 'https://upscprovider.com/ac003'),
('AC004', 'A004', 'E004', 'EC004', '2024-04-05', 'https://upscprovider.com/ac004'),
('AC005', 'A005', 'E005', 'EC005', '2024-04-10', 'https://upscprovider.com/ac005');

SELECT * FROM Applicants;
SELECT * FROM Recruitment_Process;
SELECT * FROM Exam_Centers;
SELECT * FROM Admit_Cards;
SELECT * FROM Positions;
SELECT * FROM Examinations;

DROP TABLE Applicants;
DROP TABLE Admit_Cards;
DROP TABLE Exam_Centers;
DROP TABLE Recruitment_Process;
DROP TABLE Positions;
DROP TABLE Examinations;