CREATE TABLE Offer(
    
	oID INT NOT NULL, 
    oName VARCHAR(20) NOT NULL,
	oStartDate DATE NOT NULL,
	oEndDate DATE NOT NULL,
	oIntake VARCHAR(20) NOT NULL,
   CONSTRAINT PK_Offer PRIMARY KEY(oID)  
);





INSERT INTO Offer
VALUES 
(1,'Spring','2018-03-05','2018-05-05',20),
(2,'Summer','2018-06-15','2018-08-05',20),
(3,'Fall','2018-09-15','2018-10-25',30),
(4,'BlackFriday','2018-11-19','2018-11-25',15),
(5,'Halloween','2018-10-29','2018-11-04',20)

select* from Offer


CREATE TABLE Plan1 (

    pID INT NOT NULL, 
    pName VARCHAR(20) NOT NULL,
	pIntake VARCHAR(3) NOT NULL,
	pAmount VARCHAR(10) NOT NULL,
    pDuration VARCHAR(10) NOT NULL,
  CONSTRAINT PK_Plan1 PRIMARY KEY(pID) 
);

INSERT INTO Plan1
VALUES 
(1, 'Regular',200,350,12),
(2, 'Zumba',60,100,3),
(3, 'Functional',60,150,3),
(4, 'Aerobics',70,75,2),
(5,'Yoga',70,90,3),
(6,'CrossTraining',50,100,2)

select * from plan1


CREATE TABLE Employee (

    eID INT NOT NULL, 
    eFName VARCHAR(20) NOT NULL,
	eLName VARCHAR(3) NOT NULL,
	eAge VARCHAR(10) NOT NULL,
    eSex VARCHAR(10) NOT NULL,
	eType Varchar(20) NOT NULL CHECK (eType IN ('Trainer', 'Receptionist', 'Cleaner')),
 CONSTRAINT PK_Employee PRIMARY KEY(eID) 
);

INSERT INTO Employee
VALUES 
(1, 'John','F',25,'M','Trainer'),(2, 'Kim','D',24,'M','Trainer'),(3, 'Sam','J',27,'M','Receptionist'),(4, 'Emily','S',28,'F','Receptionist'),
(5,'Hannah','B',24,'F','Trainer'),(6,'Tim','J',28,'M','Trainer'),(7, 'Rahul','R',22,'M','Trainer'),(8, 'Ritika','S',23,'F','Trainer'),
(9, 'Collins','D',35,'M','Receptionist'),(10, 'Kanisha','P',22,'F','Cleaner'),(11,'Kirk','D',27,'M','Cleaner'),
(12,'Jolton','A',27,'M','Cleaner'),(13,'Merick','G',34,'M','Trainer'),(14,'Austin','Q',34,'M','Trainer'),
(15,'Anushka','P',29,'F','Trainer'),
(16,'Malika','J',27,'F','Trainer'),
(17,'Jina','N',25,'F','Trainer'),
(18,'Tina','Q',34,'F','Cleaner'),
(19,'Juli','M',36,'F','Cleaner'),
(20,'Kristen','S',45,'F','Cleaner'),
(21,'Kelly','H',29,'F','Trainer'),
(22,'Romario','C',29,'M','Trainer'),
(23,'Jeet','Z',25,'M','Trainer'),
(24,'Ayush','N',29,'M','Trainer')


select * from Employee

CREATE TABLE Product1 (

    UPC INT NOT NULL, 
    productName VARCHAR(20) NOT NULL,
	productType VARCHAR(20) NOT NULL,
	productPrice VARCHAR(20) NOT NULL,

 CONSTRAINT PK_Product1 PRIMARY KEY(UPC) 
);
select * from product1

INSERT INTO Product1
VALUES 
(14534, 'Ultimate Nutrition','WheyProtein',50),
(23434, 'Optimum Nutrtion','MassGainer',45),
(32432, 'NitroTech','FatBurner',28),
(23433, 'MuscleTech','PreWorkout',20),
(34234,'BeerBiceps','BCAA',24),
(98768,'ProMix','Multivitamins',20),
(67389,'Xcore','CLA',45)

Select * from Product1


CREATE TABLE Payment (

    payID INT NOT NULL, 
    cardNo VARCHAR(20) NOT NULL,
	payAmount VARCHAR(20) NOT NULL,
	payDate DATETIME NOT NULL,

 CONSTRAINT PK_Payment PRIMARY KEY(payID) 
); 

INSERT INTO Payment
VALUES 
(1,3785698768762098,50,'2018-08-16'),
(2,9867098739750932,73,'2018-06-15'),
(3,7467594774577830,50,'2018-05-15'),
(4,4797487974398709,45,'2018-04-17'),
(5,6903087588874798,50,'2018-05-05'),
(6,8098477809239487,65,'2018-09-13'),
(7,7736878768768767,50,'2018-10-03'),
(8,7347688746287672,45,'2018-10-19'),
(9,1939737987987987,24,'2018-10-17'),
(10,8737873987948798,69,'2018-11-24'),
(11,9373798798739878,28,'2018-11-27'),
(12,7738767787877678,150,'2018-07-17'),
(13,7987878787987898,350,'2018-11-23'),
(14,7798978987767769,100,'2018-10-25'),
(15,2546577987358778,350,'2018-04-05'),
(16,9887773798667366,350,'2018-04-05'),
(17,9887773798667366,350,'2018-04-05'),
(18,6487378787677736,350,'2018-07-17'),
(19,1787898273767489,350,'2018-07-17'),
(20,3697980307687367,350,'2018-07-17'),
(21,0937937794739787,100,'2018-10-25'),
(22,9372789498837984,100,'2018-10-25'),
(23,1943989898498709,150,'2018-10-25'),
(24,3893843479387898,150,'2018-10-25'),
(25,3439837987298738,75,'2018-10-25'),
(26,9033663897436788,75,'2018-11-23'),
(27,3980997487748978,90,'2018-11-23'),
(28,6479833988778878,100,'2018-11-23'),
(29,1292983939438283,350,'2018-11-23'),
(30,9374387389739398,100,'2018-11-23'),
(31,8737387789798788,150,'2018-11-23'),
(32,3928979879837878,75,'2018-11-23'),
(33,9887487874987898,90,'2018-10-30'),
(34,8747879879878897,100,'2018-10-30'),
(35,8998779889898798,90,'2018-10-30'),
(36,4597899879889399,100,'2018-10-30'),
(37,2838948778787849,100,'2018-10-30'),
(38,1298978979898988,100,'2018-10-30'),
(39,7977377898387879,150,'2018-11-20'),
(40,4877987779798798,100,'2018-11-20'),
(41,9877868746767674,350,'2018-11-20'),
(42,1209098873779987,150,'2018-11-20')

select Sum(payAmount)  
from Payment

select *
from Payment 





CREATE TABLE Trainer (

    trainerID INT NOT NULL, 
    eID INT NOT NULL,
	tType VARCHAR(20) NOT NULL CHECK (tType IN ('Personal Trainer', 'Floor Trainer')),
	tExperience VARCHAR(2) NOT NULL,

 CONSTRAINT PK_Trainer PRIMARY KEY(trainerID),
 FOREIGN Key (eID)  REFERENCES Employee(eID)
); 

INSERT INTO Trainer
VALUES 
(1,1,'Personal Trainer',2),
(2,2,'Personal Trainer',3),
(3,5,'Floor Trainer',1),
(4,6,'Floor Trainer',1),
(5,7,'Personal Trainer',3),
(6,8,'Floor Trainer',1)
(7,13,'Floor Trainer',2),
(8,14,'Floor Trainer',3),
(9,15,'Floor Trainer',3),
(10,16,'Personal Trainer',3),
(11,17,'Personal Trainer',4),
(12,21,'Personal Trainer',3),
(13,22,'Personal Trainer',2),
(14,23,'Personal Trainer',2),
(15,24,'Personal Trainer',2)
select * from Trainer


CREATE TABLE Member (
     mID INT NOT NULL,
     mFName VARCHAR(20) NOT NULL,
     mLName VARCHAR(20) NOT NULL,
	 mSex VARCHAR(1) NOT NULL,
	 mAge VARCHAR(3) NOT NULL,
	 mPhNo VARCHAR(20) NOT NULL,
	 mSreetNo varchar(20) NOT NULL,
	 mStreetName varchar(100) NOT NULL,
	 trainerID INT NOT NULL,

   CONSTRAINT PK_Member PRIMARY KEY (mID) ,
   FOREIGN KEY (trainerID) REFERENCES Trainer(trainerID) 
);

Insert into Member
VALUES	
(1,'Shwet','Jain','M',21,3157068148,716,'SouthBeech',1),
(2,'Yash','Bhansali','M',23,3158075163,712,'SouthBeech',2),
(3,'Devansh','Khakhar','M',22,3159806783,710,'Westcott',5),
(4,'Harsh','Darji','M',21,3158469372,654,'RedField',3),
(5,'Emma','Shah','F',24,3159084356,456,'Waverly',6),
(7,'Ritika','Watson','F',29,3158569871,1020,'Westcott',10),
(8,'Zaheer','Khan','M',29,3158754354,210,'Westcott',11),
(9,'Chris','Moris','M',29,3158790567,987,'SouthBeech',10),
(10,'Steve','Smith','M',29,3155765788,1020,'Maryland',10),
(11,'Pravesh','Jain','M',29,3156576576,980,'Maryland',1),
(12,'Dishan','Bokadia','M',29,3155896876,546,'Maryland',12),
(13,'Shlok','Chauhan','M',29,3159875647,987,'Colombus',12),
(14,'Arpan ','Rathod','M',29,3152434333,321,'RedField',13),
(15,'Rishi','Smith','M',29,3159876477,789,'Waverly',14),
(16,'Akshat','Fagania','M',29,3159896764,798,'Westcott',13),
(17,'Anisha','Desai','F',29,3152435687,987,'RedField',2),
(18,'Trishna','Soor','F',29,3159776587,987,'Waverly',1),
(19,'Devika','Doshi','F',29,3152347787,456,'Waverly',2),
(20,'Shelly','Patel','F',29,3150987769,545,'RedField',5),
(21,'Ruchi','Dhoka','F',29,3157645468,987,'Maryland',1),
(22,'Sana','Varma','F',29,3158765676,123,'Waverly',1)


select * from Member

CREATE TABLE Membership (
     mID INT NOT NULL,
     pID INT NOT NULL,
	 enrollDate DATETIME NOT NULL,
	 oID INT NOT NULL,
	 expDate DATETIME NOT NULL,
	 recepID INT NOT NULL,

   
   FOREIGN KEY (mID) REFERENCES Member(mID) ,
   FOREIGN KEY (pID) REFERENCES Plan1(pID) ,
   FOREIGN KEY (oID) REFERENCES Offer(oID) ,
   FOREIGN KEY (recepID) REFERENCES Receptionist(recepID),
   PRIMARY KEY (mID,pID,enrollDate)
); 

drop table Membership


Insert into Membership
VALUES	
(1,3,'2018-07-17',2,'2018-10-17',1),
(2,1,'2018-11-23',4,'2019-11-23',2),
(2,2,'2018-10-25',3,'2019-1-25',3)
(3,1,'2018-04-05',1,'2019-04-05',1),
(4,1,'2018-04-05',1,'2019-04-05',2),
(5,1,'2018-04-05',1,'2019-04-05',3),
(6,1,'2018-07-17',2,'2019-07-17',1),
(7,1,'2018-07-17',2,'2019-07-17',2),
(8,1,'2018-07-17',2,'2019-07-17',3),
(9,2,'2018-10-25',3,'2019-1-25',1),
(10,2,'2018-10-25',3,'2019-11-23',2),
(11,3,'2018-10-25',3,'2019-11-23',3),
(12,3,'2018-10-25',3,'2019-11-23',1),
(13,4,'2018-10-25',3,'2019-11-23',2),
(14,4,'2018-11-23',4,'2019-02-23',3),
(15,5,'2018-11-23',4,'2019-02-23',1),
(16,6,'2018-11-23',4,'2019-01-23',2),
(17,1,'2018-11-23',4,'2019-11-23',3),
(18,2,'2018-11-23',4,'2019-02-23',1),
(19,3,'2018-11-23',4,'2019-02-23',2),
(20,4,'2018-11-23',4,'2019-02-23',3),
(21,5,'2018-10-30',5,'2019-01-30',1),
(22,6,'2018-10-30',5,'2018-12-30',2),
(10,5,'2018-10-30',5,'2019-01-30',3),
(11,6,'2018-10-30',5,'2018-12-30',1),
(12,6,'2018-10-30',5,'2018-12-30',2),
(13,6,'2018-10-30',5,'2018-12-30',3),
(15,3,'2018-11-20',4,'2019-02-20',1),
(17,2,'2018-11-20',4,'2019-02-20',2),
(18,1,'2018-11-20',4,'2019-11-20',3),
(18,3,'2018-11-20',4,'2019-02-20',1)


select* from Membership


drop table Membership

CREATE TABLE order1 (

    orderIDID INT NOT NULL,
    mID INT NOT NULL,
	orderDate DATETIME NOT NULL,
    FOREIGN KEY (mID) REFERENCES Member(mID),
	CONSTRAINT PK_order1 PRIMARY KEY (orderIDID),	 
); 

Insert into order1 
VALUES
(1,1,'2018-08-16'),
(2,2,'2018-06-15'),
(3,12,'2018-05-15'),
(4,17,'2018-04-17'),
(5,7,'2018-05-05'),
(6,9,'2018-09-13'),
(7,9,'2018-10-03'),
(8,1,'2018-10-19'),
(9,4,'2018-10-17'),
(10,8,'2018-11-24'),
(11,15,'2018-11-27')

select * from order1


CREATE TABLE orderLine1 (
orderIDID INT NOT NULL,  
UPC INT NOT NULL,  
mID INT Not NULL, 
quantity VARCHAR(10) NOT NULL,

FOREIGN KEY (orderIDID) REFERENCES order1(orderIDID),
FOREIGN KEY (UPC) REFERENCES Product1(UPC), 
FOREIGN KEY (mID) REFERENCES Member(mID), 
Constraint PK_orderLine1 PRIMARY KEY (orderIDID, UPC)
) 

Insert Into orderline1
Values 
(1,14534,1,1),
(2,23434,2,1),
(2,32432,2,1),
(3,14534,12,1),
(4,23434,17,1),                       
(5,14534,7,1),
(6,23434,9,1),
(6,23433,9,1),
(7,14534,9,1),
(8,67389,1,1),
(9,34234,4,1),
(10,23434,8,1),
(10,34234,8,1),
(11,32432,15,1)

select * from orderLine1

CREATE TABLE orderPayment (
payID INT NOT NULL FOREIGN KEY (payID) REFERENCES Payment(payID),
orderIDID INT NOT NULL,  
mID INT Not NULL, 
oAmount VARCHAR(20) NOT NULL,

FOREIGN KEY (orderIDID) REFERENCES order1(orderIDID),
FOREIGN KEY (mID) REFERENCES Member(mID), 
Constraint PK_orderPayment PRIMARY KEY (payID)
) 
drop table orderPayment 

insert into orderPayment
values 
(1,1,1,50),
(2,2,2,73),
(3,3,12,50),
(4,4,17,45),
(5,5,7,50),
(6,6,9,65),
(7,7,9,50),
(8,8,1,45),
(9,9,4,24),
(10,10,8,69),
(11,11,15,28) 

select * from orderPayment

CREATE TABLE planPayment (
payID INT NOT NULL FOREIGN KEY (payID) REFERENCES Payment(payID),  
pID INT NOT NULL,  
mID INT Not NULL, 
enrollDate DATETIME NOT NULL,


FOREIGN KEY (pID) REFERENCES Plan1(pID), 
FOREIGN KEY (mID) REFERENCES Member(mID), 
Constraint PK_planPayment PRIMARY KEY (payID)
) 

insert into planPayment
Values 
(12,3,1,'2018-07-17'),
(13,1,2,'2018-11-23'),
(14,2,2,'2018-10-25'),
(15,1,3,'2018-04-05'),
(16,1,4,'2018-04-05'),
(17,1,5,'2018-04-05'),
(18,1,6,'2018-07-17'),
(19,1,7,'2018-07-17'),
(20,1,8,'2018-07-17'),
(21,2,9,'2018-10-25'),
(22,2,10,'2018-10-25'),
(23,3,11,'2018-10-25'),
(24,3,12,'2018-10-25'),
(25,4,13,'2018-10-25'),
(26,4,14,'2018-11-23'),
(27,5,15,'2018-11-23'),
(28,6,16,'2018-11-23'),
(29,1,17,'2018-11-23'),
(30,2,18,'2018-11-23'),
(31,3,19,'2018-11-23'),
(32,4,20,'2018-11-23'),
(33,5,21,'2018-10-30'),
(34,6,22,'2018-10-30'),
(35,5,10,'2018-10-30'),
(36,6,11,'2018-10-30'),
(37,6,12,'2018-10-30'),
(38,6,13,'2018-10-30'),
(39,3,15,'2018-11-20'),
(40,2,17,'2018-11-20'),
(41,1,18,'2018-11-20'),
(42,3,18,'2018-11-20')

select * from planPayment



SELECT mem.mID,mFName,mLName,p.pID,pName,expDate
FROM member mem
JOIN membership M
ON	mem.mID = M.mID
JOIN Plan1 p
ON  p.pID= M.pID
WHERE expDate BETWEEN '2018-12-31' AND '2019-01-25' 






Select T.trainerID,eFName,COUNT(E.eID) 'No.of Members Trained'
from  Trainer T
Join Member mem
on mem.trainerID= T.trainerID
Join Employee E
on E.eID=T.eID
where tType= 'Personal Trainer' 
Group by T.trainerID,eFName,eLName
 

Select P.pID,pName,count(P.pID) 'No. Of Members enrolled'
from Member mem
JOIN Membership M
ON M.mID = mem.mID
Join Plan1 P
ON P.pID = M.pID 
Group by P.pID,pName


 

CREATE TABLE Receptionist (

recepID INT NOT NULL, 
eID INT NOT NULL,
recepSlot VARCHAR(10) NOT NULL CHECK (recepSlot IN ('Morning', 'Afternoon','Evening'))

CONSTRAINT PK_Receptionist PRIMARY KEY(recepID),
FOREIGN Key (eID)  REFERENCES Employee(eID)

);

Insert into Receptionist
Values 
(1,3,'Morning'), 
(2,4,'Afternoon'),
(3,9,'Evening')

select* from Receptionist



Create table order  
