/* Update Query implementations */
UPDATE PERSON
SET EMAIL= 'Melaf@gmail.com' WHERE ID=11168360;

UPDATE Medicine 
SET COST=100 WHERE MID=1758;


/* delete Query implementations */
DELETE FROM INTERN 
WHERE DMRN='33721';

DELETE FROM DEPARTMENT 
WHERE DNUM='301';


/* select Query implementations */
/* 1-retrieve all details of patients who has address R916, Riyadh, Narjis, 1154 247. */
SELECT *
FROM Patients
Where ADDRESS= 'R916, Riyadh, Narjis, 1154 247';

/* 2-retrieve all details of who takes the medicine that has patient Ssn=753942647. */
SELECT *
FROM Takes
where PSSN='753942647';


/* Nested Query implementations */
/* 1-retrieve all details of patients who has patient ID=11179276. */
SELECT *
FROM Administrator 
WHERE EPAGERNO IN( SELECT PAGERNO
FROM Employee
WHERE PAGERNO='2694');

/* 2-retrieve all details of Administrator who has employee pager number= 2694.. */
SELECT *
FROM Patients
WHERE PID IN(
SELECT PID
FROM Person
WHERE PID='11179276');


/* Simple join Query implementations */
/* 1-Retrieve patient first name, last name and id that has first name = Jory. */
SELECT FNAME,LNAME,ID
FROM Person, Patients
WHERE FNAME= 'Jory' AND ID=PID;

/* 2-Retrieve patient first name and address that has department number=14684. */
FROM Person, Patients
WHERE DMRN= '14684' AND PID=ID;


/* retrieval Query implementations */
/* 1-Retrieve number of medicines that less than 3 with each medicine name. */
SELECT Mname, COUNT (*)
FROM Medicine
WHERE cost <100
GROUP BY Mname HAVING COUNT (*) <3

/* 2-Retrieve number of patients who lives in Irqah that less than 4. */
SELECT Address, COUNT (*)
FROM Patients
WHERE Address LIKE '%Irqah%'
GROUP BY Address HAVING COUNT (*) < 4


/* retrieval Query implementations */
/* 1-The view ADMIN_DEPT is to keep all administrator type information that manages each department. */
CREATE VIEW ADMIN_DEPT
AS SELECT Dname, AD_type, Dnum 
FROM DEPARTMENT, ADMINISTRATOR 
WHERE AD_type = AAd_type;

/* 2-The view Person_1 is to keep all patients information. */
CREATE VIEW Person_1
AS SELECT Fname ,Lname , PID 
FROM PERSON, PATIENTS 
WHERE ID= PID;
