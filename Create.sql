
/* tabel 1 */
CREATE TABLE PERSON (ID INT NOT NULL, Fname VARCHAR(15) NOT NULL, Lname VARCHAR(15) NOT NULL, Mobile INT NOT NULL, Email VARCHAR(30), PRIMARY KEY(ID)); 

/* tabel 2 */
CREATE TABLE PATIENTS (SSN CHAR(9) NOT NULL, Address VARCHAR(30), PID INT NOT NULL, DMRN CHAR(9) NOT NULL, PRIMARY KEY(SSN), FOREIGN KEY(PID) REFERENCES PERSON(ID)); 

/* tabel 3 */
CREATE TABLE MEDICINE
(MID INT NOT NULL, type VARCHAR(15) NOT NULL,
cost DECIMAL(10,2) NOT NULL, Mname VARCHAR(15) NOT NULL, PRIMARY KEY(MID));

/* tabel 4 */
CREATE TABLE EMPLOYEE (PagerNo CHAR(9) NOT NULL, PRIMARY KEY(PagerNo)); 

/* tabel 5 */
CREATE TABLE DEPARTMENT (Dname VARCHAR(15) NOT NULL, Dnum INT NOT NULL, EPagerNo CHAR(9) NOT NULL, AAd_type VARCHAR(30) NOT NULL, 
PRIMARY KEY(Dnum), FOREIGN KEY(EPagerNo) REFERENCES EMPLOYEE(PagerNo), FOREIGN KEY(AAd_type) REFERENCES ADMINISTRATOR(Ad_type)); 

/* tabel 6 */
CREATE TABLE ADMINISTRATOR ( Ad_type VARCHAR(30) NOT NULL, EPagerNo CHAR(9) NOT NULL, PRIMARY KEY(Ad_type), FOREIGN KEY(EPagerNo) REFERENCES EMPLOYEE(PagerNo)); 

/* tabel 7 */
CREATE TABLE NURSE ( Hour CHAR(9) NOT NULL, EPagerNo CHAR(9) NOT NULL, PRIMARY KEY(EPagerNo), FOREIGN KEY(EPagerNo) REFERENCES EMPLOYEE(PagerNo)); 

/* tabel 8 */
CREATE TABLE INTERN (SDate CHAR(10), EDate CHAR(10), EPagerNo CHAR(9) NOT NULL, DMRN CHAR(9) NOT NULL, PRIMARY KEY(EPagerNo, DMRN), FOREIGN KEY(EPagerNo) REFERENCES EMPLOYEE(PagerNo), FOREIGN KEY(DMRN) REFERENCES DOCTOR(MRN)); 

/* tabel 9 */
CREATE TABLE DOCTOR (MRN CHAR(9) NOT NULL, EPagerNo CHAR(9), PRIMARY KEY(MRN), FOREIGN KEY(EPagerNo) REFERENCES EMPLOYEE(PagerNo)); 

/* tabel 10 */
CREATE TABLE TAKES (TMID INT NOT NULL, PSSN CHAR(9) NOT NULL, PRIMARY KEY( TMID, PSSN), FOREIGN KEY(PSSN) REFERENCES PATIENTS(SSN), FOREIGN KEY(TMID) REFERENCES MEDICINE(MID)); 

/* tabel 11 */
CREATE TABLE WRITE_DESCRIPTION (WMID INT NOT NULL, DMRN CHAR(9) NOT NULL, PRIMARY KEY(WMID,DMRN), FOREIGN KEY(WMID) REFERENCES MEDICINE(MID), FOREIGN KEY(DMRN) REFERENCES DOCTOR(MRN)); 
