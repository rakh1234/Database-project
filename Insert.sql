/* table 1 */
INSERT INTO Person
VALUES (11179276, 'Razan', 'Alkhodhair', 0558262764, 'razan@gmail.com'); 
INSERT INTO Person
VALUES (11197265, 'Jory', 'Alkhodhair', 0528548180, 'Jory@gmail.com'); 
INSERT INTO Person
VALUES (11162906, 'Sara', 'Alqahtani', 0555285968, 'Sara@hotmail.com'); 
INSERT INTO Person
VALUES (11168360, 'Norah', 'Almoathm', 0523968185, 'Norah@gmail.com'); 
INSERT INTO Person
VALUES (11172964, 'Lama', 'Alsaleh', 0529358158, 'Lama@hotmail.com');

/* table 2 */
INSERT INTO Patients
VALUES ('861483569', 'R916, Riyadh, Narjis, 1154 247', 11179276, '14684'); 
INSERT INTO Patients
VALUES ('861968268', 'R916, Riyadh, Narjis, 1154 247', 11179276, '12748'); 
INSERT INTO Patients
VALUES ('753942647', 'R782, Riyadh, Yasmen, 7364 356', 11197265, '47383'); 
INSERT INTO Patients
VALUES ('478483275', 'R361, Riyadh, Hittin, 1472 632', 11162906, '47932'); 
INSERT INTO Patients
VALUES ('742838327', 'R738, Riyadh, Irqah, 2732 356', 11168360, '36835');

/* table 3 */
INSERT INTO Medicine
VALUES (1365, 'Capsules', 36.64, 'Ibuprofen'); 
INSERT INTO Medicine
VALUES (1758, 'Drops', 86, 'Aciclovir'); 
INSERT INTO Medicine
VALUES (1836, 'Drops', 37, 'Apraclonidine'); 
INSERT INTO Medicine
VALUES (1738, 'Liquid', 75.5, 'Amoxicillin'); 
INSERT INTO Medicine
VALUES (2695, 'Tablet', 20, 'Panadol');

/* table 4 */
INSERT INTO Employee VALUES ('1373'); 
INSERT INTO Employee VALUES ('2694'); 
INSERT INTO Employee VALUES ('1385'); 
INSERT INTO Employee VALUES ('2605'); 
INSERT INTO Employee VALUES ('1496');

/* table 5 */
INSERT INTO Department
VALUES ('Clinical', 305, '1496', 'Nurse manager');
INSERT INTO Department
VALUES ('Laboratory', 304, '1373', 'Department director'); 
INSERT INTO Department
VALUES ('Emergency', 301, '1496', 'Hospital facility manager'); 
INSERT INTO Department
VALUES ('Cardiology', 302, '1373', 'Clinical manager'); 
INSERT INTO Department
VALUES ('surgery', 303, '1496', 'patient srvices');

/* table 6 */
INSERT INTO Administrator
VALUES ('Nurse manager','2694');
INSERT INTO Administrator
VALUES ('Department director','1385'); 
INSERT INTO Administrator
VALUES ('Clinical manager','2694');
INSERT INTO Administrator
VALUES ('patient srvices','2694');
INSERT INTO Administrator
VALUES ('Hospital facility manager','1385');

/* table 7 */
INSERT INTO Nurse VALUES ('12','1385'); 
INSERT INTO Nurse VALUES ('10','2605'); 
INSERT INTO Nurse VALUES ('10','1496');
INSERT INTO Nurse VALUES ('10','1373'); 
INSERT INTO Nurse VALUES ('12','2694');

/* table 8 */
INSERT INTO Intern
VALUES ('3-9-2021' , '4-9-2022' , '1373' , '61180');
INSERT INTO Intern
VALUES ('7-4-2021' , '8-4-2022' , '2694' , '91903');
INSERT INTO Intern
VALUES ('3-9-2021' , '4-9-2022' , '1385' , '22817'); 
INSERT INTO Intern
VALUES ('6-12-2022' , '4-9-2022' , '2605' , '55482'); 
INSERT INTO Intern
VALUES ('7-4-2021' , '8-4-2022' , '1496' , '33721');

/* table 9 */
INSERT INTO Doctor VALUES ('55482' , '1373'); 
INSERT INTO Doctor VALUES ('33721' , '2694'); 
INSERT INTO Doctor VALUES ('61180' , '1385');
INSERT INTO Doctor VALUES ('91903' , '2605'); 
INSERT INTO Doctor VALUES ('22817' , '1496');


/* table 10 */
INSERT INTO Takes
VALUES (1365, '478483275'); 
INSERT INTO Takes
VALUES (1738, '861483569'); 
INSERT INTO Takes
VALUES (1836, '753942647'); 
INSERT INTO Takes
VALUES (1758, '478483275'); 
INSERT INTO Takes
VALUES (2695, '753942647');

/* table 11 */
INSERT INTO Write_description VALUES (1738 , '61180'); 
INSERT INTO Write_description VALUES (1836 , '91903'); 
INSERT INTO Write_description VALUES (1365 , '22817'); 
INSERT INTO Write_description VALUES (2695 , '55482'); 
INSERT INTO Write_description VALUES (1758 , '33721');
