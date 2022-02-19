INSERT INTO customers(Email,FullName,JoinDate,Password,PhoneNumber,AddressCity,AddressStreet,AddressApartmentNum,AddressPostalCode,NameOnCard,CreditCardNumber,ExpMonth,ExpYear,CVV,CardOwnerID) VALUES
 ('sapir@gmail.com','Sapir Shmuelevitz','2021-05-01',123456,524033969,'Ra''anana','Hapalmachim',1,43404,'Sapir Shmuelevitz','4580480000000000',1,2022,423,298050217)
,('carmel@gmail.com','Carmel Ben Shoshan','2021-04-02',123456,524033978,'Herzliya','Bar-Ilan',2,43404,'Carmel Ben Shoshan','4580350000000000',2,2026,567,240737474)
,('mirit@gmail.com','Mirit Zelichonok','2021-04-03',123456,524033111,'Be''er Sheva','Ahuza',3,43404,'Mirit Zelichonok','4580170000000000',3,2027,234,245666298)
,('roei@gmail.com','Roei Bracha','2021-05-04',123456,524033222,'Haifa','Hapalmachim',3,43404,'Roei Bracha','4580020000000000',4,2027,234,311187915)
,('omer@gmail.com','Omer Waizman','2021-03-05',123456,524033223,'Ra''anana','Bar-Ilan',3,43404,'Omer Waizman','4580540000000000',5,2026,423,329161961)
,('jennifer@gmail.com','Jennifer Anniston','2021-12-06',123456,524033224,'Haifa','Rambam',8,43404,'Jennifer Anniston','4580640000000000',8,2022,575,238735358)
,('mika@gmail.com','Mika Shmuelevitz','2021-11-07',123456,524033225,'Be''er Sheva','Bar-Ilan',3,43404,'Mika Shmuelevitz','4580070000000000',3,2022,423,265641995)
,('inbar@gmail.com','Inbar Shmuelevitz','2021-09-08',123456,524033226,'Herzliya','Ahuza',7,43404,'Inbar Shmuelevitz','4580940000000000',5,2022,643,230747738)
,('aviv@gmail.com','Aviv Shmuelevitz','2021-08-09',123456,524033227,'Hod Hasharon','Hatamar',6,43404,'Aviv Shmuelevitz','4580370000000000',8,2027,567,215181991)
,('alexa@gmail.com','Alexa White','2021-06-10',123456,524033228,'Haifa','Bar-Ilan',21,43404,'Alexa White','4580920000000000',4,2027,711,202616975)
,('ruby@gmail.com','Ruby Ben Shoshan','2021-10-11',123456,524033229,'Hod Hasharon','Bar-Ilan',5,43404,'Ruby Ben Shoshan','4580020000000000',6,2022,234,369246610)
,('pula@gmail.com','Pula Ben Shushan','2021-07-12',123456,524033230,'Ra''anana','Ahuza',54,43404,'Pula Ben Shushan','4580550000000000',5,2027,457,286044238)
,('noa@gmail.com','Noa Kirel','2021-01-13',123456,524033231,'Hod Hasharon','Habrosh',3,43404,'Noa Kirel','4580520000000000',5,2026,987,313189271)
,('john@gmail.com','John Stamos','2021-02-14',123456,524033232,'Hod Hasharon','Hatamar',3,43404,'John Stamos','4580020000000000',12,2023,789,370081553)
,('christian@gmail.com','Christian Bale','2021-03-15',123456,524033233,'Ra''anana','Reuven Rubin',23,43404,'Christian Bale','4580060000000000',5,2026,456,323973719)
,('morgan@gmail.com','Morgan Freeman','2021-05-16',123456,524033234,'Hod Hasharon','Rambam',3,43404,'Morgan Freeman','4580800000000000',5,2022,123,280262138)
,('denzel@gmail.com','Denzel Washington','2021-08-17',123456,524033235,'Be''er Sheva','Jo Amar',46,43404,'Denzel Washington','4580230000000000',11,2026,567,271997447)
,('will@gmail.com','Will Smith','2021-12-18',123456,524033236,'Ra''anana','Reuven Rubin',3,43404,'Will Smith','4580530000000000',5,2026,890,283818753)
,('brad@gmail.com','Brad Pitt','2021-02-19',123456,524033237,'Be''er Sheva','Jo Amar',12,43404,'Brad Pitt','4580790000000000',10,2022,876,265770612);


INSERT INTO orders(OrderId,CustomerEmail,PurchaseDate) VALUES
 (9001,'sapir@gmail.com','2021-12-05 09:00:00')
,(9002,'carmel@gmail.com','2021-12-05 09:35:00')
,(9003,'mirit@gmail.com','2021-12-05 10:12:00')
,(9004,'roei@gmail.com','2021-12-05 11:15:00')
,(9005,'omer@gmail.com','2021-12-05 11:46:00')
,(9006,'jennifer@gmail.com','2021-12-05 12:15:00')
,(9007,'mika@gmail.com','2021-12-05 13:23:00')
,(9008,'inbar@gmail.com','2021-12-05 14:18:00')
,(9009,'aviv@gmail.com','2021-12-05 20:19:00')
,(9010,'alexa@gmail.com','2021-12-06 08:19:00')
,(9011,'ruby@gmail.com','2021-12-06 09:20:00')
,(9012,'pula@gmail.com','2021-12-06 09:35:00')
,(9013,'noa@gmail.com','2021-12-06 10:40:00')
,(9014,'john@gmail.com','2021-12-06 11:11:00')
,(9015,'christian@gmail.com','2021-12-06 12:19:00')
,(9016,'morgan@gmail.com','2021-12-06 12:58:00')
,(9017,'denzel@gmail.com','2021-12-06 14:19:00')
,(9018,'will@gmail.com','2021-12-06 15:46:00')
,(9019,'brad@gmail.com','2021-12-06 18:20:00')
,(9020,'sapir@gmail.com','2021-12-07 08:06:00')
,(9021,'carmel@gmail.com','2021-12-07 10:19:00')
,(9022,'mirit@gmail.com','2021-12-07 11:30:00')
,(9023,'roei@gmail.com','2021-12-07 12:12:00')
,(9024,'omer@gmail.com','2021-12-07 12:45:00')
,(9025,'jennifer@gmail.com','2021-12-07 13:20:00')
,(9026,'mika@gmail.com','2021-12-07 14:32:00')
,(9027,'inbar@gmail.com','2021-12-07 15:12:00')
,(9028,'aviv@gmail.com','2021-12-07 16:34:00')
,(9029,'alexa@gmail.com','2021-12-07 19:11:00');


INSERT INTO instructors(Email,FullName,ID) VALUES
 ('michal@gmail.com','Michal Chelbonani',312476893)
,('jessica@gmail.com','Jessica Brown',238749328)
,('nathan@gmail.com','Nathan Cohen',456789237)
,('neta@gmail.com','Neta Levy',234578276);


INSERT INTO recordedWorkouts(DateTime,InstructorEmail,VideoLink,VideoTitle) VALUES
 ('2021-05-05 09:00:00','michal@gmail.com','https://www.youtube.com/embed/yDDFS1kPplI','Mat Pilates')
,('2021-03-06 09:00:00','jessica@gmail.com','https://www.youtube.com/embed/Thjly0rt9j8','Reformer Pilates')
,('2021-12-07 09:00:00','neta@gmail.com','https://www.youtube.com/embed/26NPMmROB2Q','Classic Pilates')
,('2021-04-08 09:00:00','nathan@gmail.com','https://www.youtube.com/embed/1sBF-9fLVDQ','Prenatal Pilates');


INSERT INTO workouts(WorkoutType,DateTime,InstructorEmail,MaxSpots) VALUES
 ('Classical Pilates','2022-01-02 09:00:00','michal@gmail.com',15)
,('Mat Pilates','2022-01-02 12:00:00','jessica@gmail.com',12)
,('Reformer Pilates','2022-01-02 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-01-02 18:00:00','neta@gmail.com',5)
,('Classical Pilates','2022-01-03 09:00:00','michal@gmail.com',15)
,('Mat Pilates','2022-01-03 12:00:00','jessica@gmail.com',12)
,('Reformer Pilates','2022-01-03 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-01-03 18:00:00','neta@gmail.com',5)
,('Classical Pilates','2022-01-04 09:00:00','michal@gmail.com',15)
,('Mat Pilates','2022-01-04 12:00:00','jessica@gmail.com',12)
,('Reformer Pilates','2022-01-04 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-01-04 18:00:00','neta@gmail.com',5)
,('Classical Pilates','2022-01-05 09:00:00','michal@gmail.com',15)
,('Mat Pilates','2022-01-05 12:00:00','jessica@gmail.com',12)
,('Reformer Pilates','2022-01-05 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-01-05 18:00:00','neta@gmail.com',5)
,('Classical Pilates','2022-01-06 09:00:00','michal@gmail.com',15)
,('Mat Pilates','2022-01-06 12:00:00','jessica@gmail.com',12)
,('Reformer Pilates','2022-01-06 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-01-06 18:00:00','neta@gmail.com',5)
,('Classical Pilates','2022-01-30 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-01-30 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-01-30 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-01-30 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-01-30 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-01-30 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-01-30 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-01-30 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-01-30 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-01-31 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-01-31 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-01-31 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-01-31 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-01-31 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-01-31 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-01-31 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-01-31 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-01-31 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-02-01 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-02-01 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-01 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-02-01 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-02-01 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-01 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-02-01 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-02-01 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-02-01 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-02-02 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-02-02 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-02 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-02-02 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-02-02 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-02 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-02-02 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-02-02 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-02-02 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-02-03 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-02-03 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-03 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-02-03 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-02-03 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-03 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-02-03 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-02-03 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-02-03 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-02-06 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-02-06 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-06 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-02-06 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-02-06 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-06 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-02-06 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-02-06 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-02-06 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-02-07 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-02-07 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-07 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-02-07 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-02-07 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-07 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-02-07 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-02-07 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-02-07 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-02-08 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-02-08 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-08 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-02-08 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-02-08 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-08 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-02-08 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-02-08 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-02-08 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-02-09 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-02-09 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-09 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-02-09 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-02-09 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-09 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-02-09 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-02-09 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-02-09 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-02-10 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-02-10 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-10 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-02-10 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-02-10 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-10 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-02-10 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-02-10 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-02-10 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-02-20 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-02-20 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-20 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-02-20 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-02-20 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-20 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-02-20 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-02-20 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-02-20 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-02-21 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-02-21 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-21 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-02-21 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-02-21 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-21 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-02-21 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-02-21 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-02-21 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-02-22 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-02-22 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-22 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-02-22 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-02-22 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-22 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-02-22 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-02-22 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-02-22 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-02-23 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-02-23 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-23 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-02-23 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-02-23 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-23 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-02-23 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-02-23 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-02-23 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-02-24 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-02-24 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-24 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-02-24 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-02-24 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-24 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-02-24 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-02-24 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-02-24 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-02-27 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-02-27 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-27 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-02-27 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-02-27 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-27 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-02-27 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-02-27 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-02-27 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-02-28 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-02-28 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-28 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-02-28 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-02-28 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-02-28 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-02-28 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-02-28 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-02-28 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-03-01 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-03-01 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-01 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-03-01 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-03-01 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-01 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-03-01 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-03-01 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-03-01 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-03-02 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-03-02 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-02 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-03-02 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-03-02 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-02 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-03-02 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-03-02 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-03-02 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-03-03 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-03-03 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-03 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-03-03 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-03-03 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-03 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-03-03 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-03-03 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-03-03 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-03-06 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-03-06 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-06 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-03-06 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-03-06 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-06 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-03-06 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-03-06 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-03-06 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-03-07 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-03-07 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-07 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-03-07 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-03-07 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-07 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-03-07 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-03-07 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-03-07 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-03-08 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-03-08 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-08 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-03-08 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-03-08 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-08 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-03-08 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-03-08 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-03-08 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-03-09 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-03-09 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-09 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-03-09 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-03-09 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-09 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-03-09 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-03-09 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-03-09 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-03-10 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-03-10 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-10 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-03-10 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-03-10 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-10 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-03-10 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-03-10 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-03-10 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-03-13 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-03-13 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-13 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-03-13 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-03-13 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-13 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-03-13 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-03-13 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-03-13 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-03-14 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-03-14 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-14 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-03-14 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-03-14 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-14 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-03-14 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-03-14 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-03-14 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-03-15 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-03-15 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-15 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-03-15 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-03-15 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-15 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-03-15 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-03-15 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-03-15 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-03-16 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-03-16 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-16 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-03-16 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-03-16 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-16 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-03-16 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-03-16 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-03-16 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-03-17 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-03-17 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-17 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-03-17 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-03-17 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-17 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-03-17 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-03-17 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-03-17 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-03-20 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-03-20 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-20 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-03-20 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-03-20 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-20 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-03-20 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-03-20 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-03-20 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-03-21 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-03-21 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-21 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-03-21 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-03-21 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-21 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-03-21 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-03-21 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-03-21 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-03-22 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-03-22 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-22 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-03-22 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-03-22 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-22 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-03-22 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-03-22 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-03-22 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-03-23 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-03-23 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-23 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-03-23 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-03-23 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-23 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-03-23 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-03-23 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-03-23 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-03-24 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-03-24 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-24 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-03-24 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-03-24 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-24 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-03-24 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-03-24 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-03-24 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-03-27 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-03-27 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-27 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-03-27 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-03-27 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-27 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-03-27 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-03-27 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-03-27 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-03-28 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-03-28 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-28 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-03-28 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-03-28 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-28 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-03-28 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-03-28 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-03-28 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-03-29 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-03-29 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-29 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-03-29 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-03-29 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-29 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-03-29 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-03-29 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-03-29 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-03-30 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-03-30 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-30 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-03-30 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-03-30 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-30 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-03-30 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-03-30 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-03-30 19:00:00','michal@gmail.com',1)
,('Classical Pilates','2022-03-31 09:00:00','michal@gmail.com',15)
,('Personal Workout','2022-03-31 10:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-31 11:00:00','michal@gmail.com',1)
,('Mat Pilates','2022-03-31 12:00:00','jessica@gmail.com',12)
,('Personal Workout','2022-03-31 14:00:00','michal@gmail.com',1)
,('Personal Workout','2022-03-31 15:00:00','michal@gmail.com',1)
,('Reformer Pilates','2022-03-31 16:00:00','nathan@gmail.com',10)
,('Prenatal Pilates','2022-03-31 18:00:00','neta@gmail.com',5)
,('Personal Workout','2022-03-31 19:00:00','michal@gmail.com',1);


INSERT INTO entryTickets(TicketType,NumOfEntries,Price) VALUES
 ('Individual training',1,40)
,('Multiple entrance ticket of 5',5,180)
,('Multiple entrance ticket of 10',10,350)
,('Multiple entrance ticket of 20',20,600)
,('Personal workout',1,120);


INSERT INTO userEntryTickets(CustomerEmail,OrderID,NumOfEntriesLeft,TicketType,Price) VALUES
 ('sapir@gmail.com',9001,0,'Individual training',40)
,('carmel@gmail.com',9002,0,'Multiple entrance ticket of 5',180)
,('mirit@gmail.com',9003,1,'Multiple entrance ticket of 10',350)
,('roei@gmail.com',9004,11,'Multiple entrance ticket of 20',600)
,('omer@gmail.com',9005,0,'Personal workout',120)
,('jennifer@gmail.com',9006,0,'Individual training',40)
,('mika@gmail.com',9007,0,'Multiple entrance ticket of 5',180)
,('inbar@gmail.com',9008,5,'Multiple entrance ticket of 10',350)
,('aviv@gmail.com',9009,9,'Multiple entrance ticket of 20',600)
,('alexa@gmail.com',9010,0,'Personal workout',120)
,('ruby@gmail.com',9011,0,'Individual training',40)
,('pula@gmail.com',9012,0,'Multiple entrance ticket of 5',180)
,('noa@gmail.com',9013,2,'Multiple entrance ticket of 10',350)
,('john@gmail.com',9014,10,'Multiple entrance ticket of 20',600)
,('christian@gmail.com',9015,0,'Personal workout',120)
,('morgan@gmail.com',9016,10,'Multiple entrance ticket of 20',600)
,('denzel@gmail.com',9017,0,'Personal workout',120)
,('will@gmail.com',9018,0,'Individual training',40)
,('brad@gmail.com',9019,2,'Multiple entrance ticket of 5',180)
,('sapir@gmail.com',9020,13,'Multiple entrance ticket of 20',600)
,('carmel@gmail.com',9021,0,'Personal workout',120)
,('mirit@gmail.com',9022,0,'Individual training',40)
,('roei@gmail.com',9023,2,'Multiple entrance ticket of 5',180)
,('omer@gmail.com',9024,10,'Multiple entrance ticket of 20',600)
,('jennifer@gmail.com',9025,0,'Personal workout',120)
,('mika@gmail.com',9026,0,'Individual training',40)
,('inbar@gmail.com',9027,0,'Personal workout',120)
,('aviv@gmail.com',9028,0,'Individual training',40)
,('alexa@gmail.com',9029,1,'Multiple entrance ticket of 5',180);


INSERT INTO workoutsInTickets(TicketId,WorkoutDT,WorkoutType) VALUES
 (1,'2022-01-02 09:00:00','Classical Pilates')
,(11,'2022-01-02 09:00:00','Classical Pilates')
,(9,'2022-01-02 09:00:00','Classical Pilates')
,(22,'2022-01-02 09:00:00','Classical Pilates')
,(3,'2022-01-02 09:00:00','Classical Pilates')
,(2,'2022-01-02 09:00:00','Classical Pilates')
,(20,'2022-01-02 09:00:00','Classical Pilates')
,(28,'2022-01-02 09:00:00','Classical Pilates')
,(14,'2022-01-02 09:00:00','Classical Pilates')
,(7,'2022-01-02 12:00:00','Mat Pilates')
,(20,'2022-01-02 12:00:00','Mat Pilates')
,(3,'2022-01-02 12:00:00','Mat Pilates')
,(8,'2022-01-02 12:00:00','Mat Pilates')
,(29,'2022-01-02 12:00:00','Mat Pilates')
,(13,'2022-01-02 12:00:00','Mat Pilates')
,(9,'2022-01-02 12:00:00','Mat Pilates')
,(17,'2022-01-02 12:00:00','Mat Pilates')
,(2,'2022-01-02 16:00:00','Reformer Pilates')
,(7,'2022-01-02 16:00:00','Reformer Pilates')
,(12,'2022-01-02 16:00:00','Reformer Pilates')
,(20,'2022-01-02 16:00:00','Reformer Pilates')
,(8,'2022-01-02 16:00:00','Reformer Pilates')
,(5,'2022-01-02 18:00:00','Prenatal Pilates')
,(21,'2022-01-02 18:00:00','Prenatal Pilates')
,(2,'2022-01-02 18:00:00','Prenatal Pilates')
,(9,'2022-01-02 18:00:00','Prenatal Pilates')
,(16,'2022-01-03 09:00:00','Classical Pilates')
,(29,'2022-01-03 09:00:00','Classical Pilates')
,(13,'2022-01-03 09:00:00','Classical Pilates')
,(25,'2022-01-03 09:00:00','Classical Pilates')
,(2,'2022-01-03 09:00:00','Classical Pilates')
,(26,'2022-01-03 09:00:00','Classical Pilates')
,(20,'2022-01-03 09:00:00','Classical Pilates')
,(9,'2022-01-03 09:00:00','Classical Pilates')
,(19,'2022-01-03 12:00:00','Mat Pilates')
,(13,'2022-01-03 12:00:00','Mat Pilates')
,(16,'2022-01-03 12:00:00','Mat Pilates')
,(14,'2022-01-03 12:00:00','Mat Pilates')
,(3,'2022-01-03 12:00:00','Mat Pilates')
,(24,'2022-01-03 12:00:00','Mat Pilates')
,(12,'2022-01-03 16:00:00','Reformer Pilates')
,(14,'2022-01-03 16:00:00','Reformer Pilates')
,(23,'2022-01-03 16:00:00','Reformer Pilates')
,(7,'2022-01-03 16:00:00','Reformer Pilates')
,(15,'2022-01-03 16:00:00','Reformer Pilates')
,(16,'2022-01-03 16:00:00','Reformer Pilates')
,(4,'2022-01-03 18:00:00','Prenatal Pilates')
,(24,'2022-01-03 18:00:00','Prenatal Pilates')
,(18,'2022-01-03 18:00:00','Prenatal Pilates')
,(14,'2022-01-04 09:00:00','Classical Pilates')
,(9,'2022-01-04 09:00:00','Classical Pilates')
,(16,'2022-01-04 09:00:00','Classical Pilates')
,(12,'2022-01-04 09:00:00','Classical Pilates')
,(7,'2022-01-04 12:00:00','Mat Pilates')
,(24,'2022-01-04 12:00:00','Mat Pilates')
,(4,'2022-01-04 12:00:00','Mat Pilates')
,(13,'2022-01-04 12:00:00','Mat Pilates')
,(16,'2022-01-04 12:00:00','Mat Pilates')
,(3,'2022-01-04 12:00:00','Mat Pilates')
,(27,'2022-01-04 12:00:00','Mat Pilates')
,(29,'2022-01-04 16:00:00','Reformer Pilates')
,(14,'2022-01-04 16:00:00','Reformer Pilates')
,(24,'2022-01-04 16:00:00','Reformer Pilates')
,(23,'2022-01-04 16:00:00','Reformer Pilates')
,(12,'2022-01-04 16:00:00','Reformer Pilates')
,(7,'2022-01-04 16:00:00','Reformer Pilates')
,(10,'2022-01-04 18:00:00','Prenatal Pilates')
,(4,'2022-01-04 18:00:00','Prenatal Pilates')
,(8,'2022-01-04 18:00:00','Prenatal Pilates')
,(9,'2022-01-04 18:00:00','Prenatal Pilates')
,(14,'2022-01-05 09:00:00','Classical Pilates')
,(16,'2022-01-05 09:00:00','Classical Pilates')
,(6,'2022-01-05 09:00:00','Classical Pilates')
,(29,'2022-01-05 09:00:00','Classical Pilates')
,(20,'2022-01-05 09:00:00','Classical Pilates')
,(24,'2022-01-05 09:00:00','Classical Pilates')
,(13,'2022-01-05 09:00:00','Classical Pilates')
,(3,'2022-01-05 09:00:00','Classical Pilates')
,(24,'2022-01-05 12:00:00','Mat Pilates')
,(4,'2022-01-05 12:00:00','Mat Pilates')
,(14,'2022-01-05 12:00:00','Mat Pilates')
,(9,'2022-01-05 12:00:00','Mat Pilates')
,(8,'2022-01-05 12:00:00','Mat Pilates')
,(13,'2022-01-05 12:00:00','Mat Pilates')
,(20,'2022-01-05 16:00:00','Reformer Pilates')
,(14,'2022-01-05 16:00:00','Reformer Pilates')
,(16,'2022-01-05 16:00:00','Reformer Pilates')
,(24,'2022-01-05 16:00:00','Reformer Pilates')
,(13,'2022-01-05 16:00:00','Reformer Pilates')
,(9,'2022-01-05 16:00:00','Reformer Pilates')
,(14,'2022-01-05 18:00:00','Prenatal Pilates')
,(23,'2022-01-05 18:00:00','Prenatal Pilates')
,(13,'2022-01-05 18:00:00','Prenatal Pilates')
,(4,'2022-01-05 18:00:00','Prenatal Pilates')
,(19,'2022-01-05 18:00:00','Prenatal Pilates')
,(16,'2022-01-05 18:00:00','Prenatal Pilates')
,(3,'2022-01-05 18:00:00','Prenatal Pilates')
,(2,'2022-01-05 18:00:00','Prenatal Pilates')
,(3,'2022-01-06 09:00:00','Classical Pilates')
,(4,'2022-01-06 09:00:00','Classical Pilates')
,(7,'2022-01-06 09:00:00','Classical Pilates')
,(12,'2022-01-06 09:00:00','Classical Pilates')
,(24,'2022-01-06 09:00:00','Classical Pilates')
,(9,'2022-01-06 09:00:00','Classical Pilates')
,(19,'2022-01-06 12:00:00','Mat Pilates')
,(14,'2022-01-06 12:00:00','Mat Pilates')
,(7,'2022-01-06 12:00:00','Mat Pilates')
,(24,'2022-01-06 12:00:00','Mat Pilates')
,(4,'2022-01-06 12:00:00','Mat Pilates')
,(16,'2022-01-06 12:00:00','Mat Pilates')
,(20,'2022-01-06 16:00:00','Reformer Pilates')
,(9,'2022-01-06 16:00:00','Reformer Pilates')
,(4,'2022-01-06 16:00:00','Reformer Pilates')
,(24,'2022-01-06 16:00:00','Reformer Pilates')
,(3,'2022-01-06 16:00:00','Reformer Pilates')
,(8,'2022-01-06 16:00:00','Reformer Pilates')
,(9,'2022-01-06 18:00:00','Prenatal Pilates')
,(16,'2022-01-06 18:00:00','Prenatal Pilates')
,(4,'2022-01-06 18:00:00','Prenatal Pilates');
