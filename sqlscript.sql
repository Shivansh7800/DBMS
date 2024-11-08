REM   Script: Session 03
REM   dbms

CREATE TABLE Course ( 
    DeptNo NUMBER(2) PRIMARY KEY, 
    Dname VARCHAR2(20), 
    Location VARCHAR2(10) 
);

CREATE TABLE Student ( 
    StudentId NUMBER(4) PRIMARY KEY, 
    StudentName VARCHAR2(40) NOT NULL, 
    Address1 VARCHAR2(300), 
    Gender VARCHAR2(15), 
    Course VARCHAR2(8), 
    Deptno NUMBER(2), 
    CONSTRAINT fk_dept FOREIGN KEY (Deptno) REFERENCES Course (Deptno) 
);

INSERT INTO Course (DeptNo, Dname, Location) VALUES (10, 'Computer Science', 'New York');

INSERT INTO Course (DeptNo, Dname, Location) VALUES (40, 'Civil Engineering', 'Florida');

INSERT INTO Course (DeptNo, Dname, Location) VALUES (50, 'MCA', 'Nevada');

INSERT INTO Student (StudentId, StudentName, Address1, Gender, Course, Deptno) VALUES (101, 'John Doe', '123 Elm St', 'Male', 'BCA', 10);

INSERT INTO Student (StudentId, StudentName, Address1, Gender, Course, Deptno) VALUES (102, 'Jane Smith', '456 Oak St', 'Female', 'MCA', 50);

INSERT INTO Student (StudentId, StudentName, Address1, Gender, Course, Deptno) VALUES (103, 'Sam Brown', '789 Pine St', 'Male', 'BCA', 10);

INSERT INTO Student (StudentId, StudentName, Address1, Gender, Course, Deptno) VALUES (104, 'Alice Green', '101 Maple St', 'Female', 'MCA', 50);

SELECT * FROM Student;

SELECT StudentId, Course FROM Student;

SELECT Dname, Location FROM Course;

SELECT * FROM Student WHERE Course = 'MCA';

SELECT StudentName  
FROM Student  
WHERE Deptno NOT IN (10, 40);

SELECT StudentName  
FROM Student  
WHERE StudentName LIKE 'S%' AND StudentName NOT LIKE 's%';

SELECT StudentName  
FROM Student  
WHERE StudentName LIKE '_k%';

SELECT *  
FROM Student  
WHERE Deptno IS NULL;

SELECT *  
FROM Student  
ORDER BY Course ASC;

SELECT COUNT(*)  
FROM Student  
WHERE Course = 'BCA';

SELECT COUNT(*)  
FROM Student;

SELECT *  
FROM Student  
WHERE Deptno IN (1, 2);

SELECT *  
FROM Student  
ORDER BY Course;

SELECT *  
FROM Student  
ORDER BY StudentName;

