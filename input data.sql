## INSERT DATA##

-- 1. User
INSERT INTO User (UserID, Name, Email, Phone, UserType)
VALUES
(1, 'Evelyn Ong', 'evelyn.ong@gmail.com', '6598231098', 'Customer'),
(2, 'Benjamin Lee', 'benjamin.lee@yahoo.com', '6584562109', 'Instructor'),
(3, 'Catherine Ng', 'catherineng2000@outlook.com', '6590985654', 'Customer'),
(4, 'Kevin Ng', 'kevinng99@hotmail.com', '6581921074', 'Customer'),
(5, 'Rebecca Goh', 'rebecca.goh2010@gmail.com', '6597654721', 'Customer'),
(6, 'Alexander Chua', 'alexander.chua2015@outlook.com', '6588601234', 'Customer'),
(7, 'Helen Lim', 'helen.lim1985@gmail.com', '6595452209', 'Customer'),
(8, 'Daniel Koh', 'daniel.koh1980@yahoo.com', '6597943210', 'Instructor'),
(9, 'Esther Loh', 'esther.loh1992@gmail.com', '6582330878', 'Customer'),
(10, 'Samuel Ong', 'samuel.ong2012@gmail.com', '6598214467', 'Instructor'),
(11, 'Samantha Seah', 'samantha.seah1995@outlook.com', '6587752321', 'Customer'),
(12, 'Clarence Sim', 'clarence.sim1982@hotmail.com', '6598369932', 'Instructor'),
(13, 'Juliana Tan', 'juliana.tan2001@gmail.com', '6584502890', 'Customer'),
(14, 'Gabriel Koh', 'gabriel.koh1998@yahoo.com', '659763519', 'Customer'),
(15, 'Isabella Yeo', 'isabella.yeo2002@outlook.com', '6582176543', 'Customer'),
(16, 'Vincent Chong', 'vincent.chong1987@gmail.com', '6598625321', 'Instructor'),
(17, 'Dorothy Lim', 'dorothy.lim1999@hotmail.com', '6581968274', 'Customer'),
(18, 'Jonathan Sim', 'jonathan.sim1985@gmail.com', '6598126456', 'Instructor'),
(19, 'Adeline Goh', 'adeline.goh2005@yahoo.com', '6584566891', 'Customer'),
(20, 'Brian Yeo', 'brian.yeo1989@gmail.com', '6596563210', 'Customer'),
(21, 'Emily Wong', 'emily.wong1996@outlook.com', '6589645678', 'Customer'),
(22, 'Joshua Tan', 'joshua.tan2003@gmail.com', '6590987664', 'Customer'),
(23, 'Mark Chen', 'mark.chen1981@yahoo.com', '6598656321', 'Customer'),
(24, 'Nicole Chua', 'nicole.chua1997@hotmail.com', '6589676501', 'Customer'),
(25, 'Ridhwan Ackerman', 'ridhwan.ackerman@gmail.com', '6598262125', 'Instructor'),
(26, 'Hans Isaac', 'hans.isaac2010@outlook.com', '6598722611', 'Instructor'),
(27, 'Rampa Ragustan', 'rampa.ragustan1988@gmail.com', '6596212126', 'Instructor'),
(28, 'Timothy Ching', 'timothy.ching1993@gmail.com', '6581264124', 'Instructor'),
(29, 'Jane Chang', 'jane.chang2009@yahoo.com', '6596023902', 'Instructor'),
(30, 'Bobby Tan', 'bobby.tan1991@outlook.com', '6590054222', 'Customer'),
(31, 'Lim Ah Chew', 'ahchewchew@gmail.com', '6580298298', 'Admin Staff');


-- 2. Instructors 
INSERT INTO Instructor (UserID, MentoredBy)
VALUES
(2, NULL),  -- Benjamin Lee has no mentor (he is a mentor)
(8, NULL),    -- Daniel Koh has no mentor (he is a mentor)
(10, NULL),   -- Samuel Ong has no mentor (he is a mentor)
(12, NULL),  -- Clarence Sim has no mentor 
(16, NULL ),  -- Vincent Chong has no mentor
(18, NULL),  -- Jonathan Sim has no mentor
(25, NULL),  -- Ridhwan Ackerman has no mentor
(26, NULL),  -- Hans Isaac's has no mentor
(27, 2),  -- Rampa Ragustan's mentor is Benjamin Lee
(28, 8),  -- Timothy Ching's mentor is Daniel Koh
(29, 10);  -- Jane Chang's mentor is Samuel Ong

-- 3. Instructor Certification 
INSERT INTO Instructor_Certification (UserID, Certification)
VALUES
(2, 'Spin'),  -- Benjamin Lee has certification in Spin
(2, 'Pilates'), -- Benjamin Lee has certification in Pilates as well
(8, 'Spin'),    -- Daniel Koh has certification in Spin
(8, 'Pilates'),    -- Daniel Koh has certification in Pilates as well
(10, 'Spin'),   -- Samuel Ong has certification in Spin
(10, 'Pilates'),   -- Samuel Ong has certification in Pilates
(12, 'Spin'),  -- Clarence Sim has certification in Spin only
(16, 'Spin' ),  -- Vincent Chong has certification in Spin only
(18,'Spin'),  -- Jonathan Sim has certification in Spin only
(25, 'Pilates'),  -- Ridhwan Ackerman certification in Pilates only
(26, 'Pilates'),  -- Hans Isaac certification in Pilates only
(27, 'No'),  -- Rampa Ragustan has no certification ( in training )
(28, 'No'),  -- Timothy Ching has no certification ( in training )
(29, 'No');  -- Jane Chang has no certification ( in training )


-- 5. Room
INSERT INTO Room (RoomID, RoomType, RoomCapacity)
VALUES
(1, 'Spin', 15),
(2, 'Spin', 15),
(3, 'Spin', 15),
(4, 'Spin', 15),
(5, 'Spin', 15),
(6, 'Mat Pilates', 15),
(7, 'Mat Pilates', 15),
(8, 'Mat Pilates', 15),
(9, 'Reformer Pilates', 10),
(10, 'Reformer Pilates', 10);


-- 6. Equipment
INSERT INTO Equipment (RoomID, EquipmentNumber, EquipmentName)
VALUES
(1, 'SP01', 'Spin Bike'), 
(1, 'SP02', 'Spin Bike'),
(1, 'SP03', 'Spin Bike'),
(1, 'SP04', 'Spin Bike'),
(1, 'SP05', 'Spin Bike'),
(1, 'SP06', 'Spin Bike'),
(1, 'SP07', 'Spin Bike'),
(1, 'SP08', 'Spin Bike'),
(1, 'SP09', 'Spin Bike'),
(1, 'SP10', 'Spin Bike'),
(1, 'SP11', 'Spin Bike'),
(1, 'SP12', 'Spin Bike'),
(1, 'SP13', 'Spin Bike'),
(1, 'SP14', 'Spin Bike'),
(1, 'SP15', 'Spin Bike'),
(2, 'SP01', 'Spin Bike'), 
(2, 'SP02', 'Spin Bike'),
(2, 'SP03', 'Spin Bike'),
(2, 'SP04', 'Spin Bike'),
(2, 'SP05', 'Spin Bike'),
(2, 'SP06', 'Spin Bike'),
(2, 'SP07', 'Spin Bike'),
(2, 'SP08', 'Spin Bike'),
(2, 'SP09', 'Spin Bike'),
(2, 'SP10', 'Spin Bike'),
(2, 'SP11', 'Spin Bike'),
(2, 'SP12', 'Spin Bike'),
(2, 'SP13', 'Spin Bike'),
(2, 'SP14', 'Spin Bike'),
(2, 'SP15', 'Spin Bike'),
(3, 'SP01', 'Spin Bike'), 
(3, 'SP02', 'Spin Bike'),
(3, 'SP03', 'Spin Bike'),
(3, 'SP04', 'Spin Bike'),
(3, 'SP05', 'Spin Bike'),
(3, 'SP06', 'Spin Bike'),
(3, 'SP07', 'Spin Bike'),
(3, 'SP08', 'Spin Bike'),
(3, 'SP09', 'Spin Bike'),
(3, 'SP10', 'Spin Bike'),
(3, 'SP11', 'Spin Bike'),
(3, 'SP12', 'Spin Bike'),
(3, 'SP13', 'Spin Bike'),
(3, 'SP14', 'Spin Bike'),
(3, 'SP15', 'Spin Bike'),
(4, 'SP01', 'Spin Bike'), 
(4, 'SP02', 'Spin Bike'),
(4, 'SP03', 'Spin Bike'),
(4, 'SP04', 'Spin Bike'),
(4, 'SP05', 'Spin Bike'),
(4, 'SP06', 'Spin Bike'),
(4, 'SP07', 'Spin Bike'),
(4, 'SP08', 'Spin Bike'),
(4, 'SP09', 'Spin Bike'),
(4, 'SP10', 'Spin Bike'),
(4, 'SP11', 'Spin Bike'),
(4, 'SP12', 'Spin Bike'),
(4, 'SP13', 'Spin Bike'),
(4, 'SP14', 'Spin Bike'),
(4, 'SP15', 'Spin Bike'),
(5, 'SP01', 'Spin Bike'), 
(5, 'SP02', 'Spin Bike'),
(5, 'SP03', 'Spin Bike'),
(5, 'SP04', 'Spin Bike'),
(5, 'SP05', 'Spin Bike'),
(5, 'SP06', 'Spin Bike'),
(5, 'SP07', 'Spin Bike'),
(5, 'SP08', 'Spin Bike'),
(5, 'SP09', 'Spin Bike'),
(5, 'SP10', 'Spin Bike'),
(5, 'SP11', 'Spin Bike'),
(5, 'SP12', 'Spin Bike'),
(5, 'SP13', 'Spin Bike'),
(5, 'SP14', 'Spin Bike'),
(5, 'SP15', 'Spin Bike'),
(6, 'MT01', 'Mat'),
(6, 'MT02', 'Mat'),
(6, 'MT03', 'Mat'),
(6, 'MT04', 'Mat'),
(6, 'MT05', 'Mat'),
(6, 'MT06', 'Mat'),
(6, 'MT07', 'Mat'),
(6, 'MT08', 'Mat'),
(6, 'MT09', 'Mat'),
(6, 'MT10', 'Mat'),
(6, 'MT11', 'Mat'),
(6, 'MT12', 'Mat'),
(6, 'MT13', 'Mat'),
(6, 'MT14', 'Mat'),
(6, 'MT15', 'Mat'),
(7, 'MT01', 'Mat'),
(7, 'MT02', 'Mat'),
(7, 'MT03', 'Mat'),
(7, 'MT04', 'Mat'),
(7, 'MT05', 'Mat'),
(7, 'MT06', 'Mat'),
(7, 'MT07', 'Mat'),
(7, 'MT08', 'Mat'),
(7, 'MT09', 'Mat'),
(7, 'MT10', 'Mat'),
(7, 'MT11', 'Mat'),
(7, 'MT12', 'Mat'),
(7, 'MT13', 'Mat'),
(7, 'MT14', 'Mat'),
(7, 'MT15', 'Mat'),
(8, 'MT01', 'Mat'),
(8, 'MT02', 'Mat'),
(8, 'MT03', 'Mat'),
(8, 'MT04', 'Mat'),
(8, 'MT05', 'Mat'),
(8, 'MT06', 'Mat'),
(8, 'MT07', 'Mat'),
(8, 'MT08', 'Mat'),
(8, 'MT09', 'Mat'),
(8, 'MT10', 'Mat'),
(8, 'MT11', 'Mat'),
(8, 'MT12', 'Mat'),
(8, 'MT13', 'Mat'),
(8, 'MT14', 'Mat'),
(8, 'MT15', 'Mat'),
(9, 'PR01', 'Pilates Reformer'),
(9, 'PR02', 'Pilates Reformer'),
(9, 'PR03', 'Pilates Reformer'),
(9, 'PR04', 'Pilates Reformer'),
(9, 'PR05', 'Pilates Reformer'),
(9, 'PR06', 'Pilates Reformer'),
(9, 'PR07', 'Pilates Reformer'),
(9, 'PR08', 'Pilates Reformer'),
(9, 'PR09', 'Pilates Reformer'),
(9, 'PR10', 'Pilates Reformer'),
(10, 'PR01', 'Pilates Reformer'),
(10, 'PR02', 'Pilates Reformer'),
(10, 'PR03', 'Pilates Reformer'),
(10, 'PR04', 'Pilates Reformer'),
(10, 'PR05', 'Pilates Reformer'),
(10, 'PR06', 'Pilates Reformer'),
(10, 'PR07', 'Pilates Reformer'),
(10, 'PR08', 'Pilates Reformer'),
(10, 'PR09', 'Pilates Reformer'),
(10, 'PR10', 'Pilates Reformer');


-- 7. Class
INSERT INTO Class (ClassID, ClassName, DifficultyLevel, Date, StartTime, EndTime, ClassCapacity, ClassType, RoomID)
VALUES
(1 , 'Spin Class Basics', 'Easy', '2024-06-01', '09:00:00', '10:00:00', 15, 'Spin', 4),
(2 , 'Spin Class Basics', 'Easy', '2024-06-04', '10:00:00', '11:00:00', 15, 'Spin', 5),
(3 , 'Spin Class Level 2', 'Intermediate', '2024-06-01', '09:00:00', '10:00:00', 15, 'Spin', 2),
(4 , 'Spin Class Level 2', 'Intermediate', '2024-06-04', '10:00:00', '11:00:00', 15, 'Spin', 2),
(5 , 'Spin Class Level 3', 'Advanced', '2024-06-01', '10:00:00', '11:00:00', 15, 'Spin', 3),
(6 , 'Spin Class Level 3', 'Advanced', '2024-06-04', '11:00:00', '12:00:00', 15, 'Spin', 1),
(7 , 'Mat Pilates Basics', 'Easy', '2024-06-12', '12:00:00', '13:00:00', 15, 'Mat Pilates', 6),
(8 , 'Mat Pilates Basics', 'Easy', '2024-06-10', '12:00:00', '13:00:00', 15, 'Mat Pilates', 7),
(9 , 'Reformer Pilates Basic', 'Easy', '2024-06-12', '12:00:00', '13:00:00', 10, 'Reformer Pilates', 9),
(10 , 'Spin Class Basics', 'Easy', '2024-06-08', '09:00:00', '10:00:00', 15, 'Spin', 4),
(11 , 'Spin Class Level 2', 'Intermediate', '2024-06-11', '10:00:00', '11:00:00', 15, 'Spin', 2),
(12 , 'Mat Pilates Basics', 'Easy', '2024-06-15', '12:00:00', '13:00:00', 15, 'Mat Pilates', 6),
(13 , 'Reformer Pilates Level 3', 'Advanced', '2024-06-14', '11:00:00', '12:00:00', 10, 'Reformer Pilates', 10),
(14 , 'Spin Class Level 3', 'Advanced', '2024-06-15', '10:00:00', '11:00:00', 15, 'Spin', 3),
(15 , 'Spin Class Basics', 'Easy', '2024-06-18', '09:00:00', '10:00:00', 15, 'Spin', 5),
(16 , 'Mat Pilates Basics', 'Easy', '2024-06-17', '12:00:00', '13:00:00', 15, 'Mat Pilates', 6),
(17 , 'Reformer Pilates Basic', 'Easy', '2024-06-19', '12:00:00', '13:00:00', 10, 'Reformer Pilates', 9),
(18 , 'Spin Class Level 2', 'Intermediate', '2024-06-22', '10:00:00', '11:00:00', 15, 'Spin', 2),
(19 , 'Spin Class Level 3', 'Advanced', '2024-06-25', '11:00:00', '12:00:00', 15, 'Spin', 1),
(20 , 'Mat Pilates Basics', 'Easy', '2024-06-24', '12:00:00', '13:00:00', 15, 'Mat Pilates', 6),
(21 , 'Reformer Pilates Level 2', 'Intermediate', '2024-06-26', '11:00:00', '12:00:00', 10, 'Reformer Pilates', 10),
(22 , 'Spin Class Basics', 'Easy', '2024-06-29', '09:00:00', '10:00:00', 15, 'Spin', 4),
(23 , 'Spin Class Level 2', 'Intermediate', '2024-07-02', '10:00:00', '11:00:00', 15, 'Spin', 1); 


-- 8. Teaches
INSERT INTO Teaches (UserID, ClassID) #2,8,10 (double certified ). # 12,16, 18 spin  #25,26 pilates
VALUES 
(12 ,1),
(12 ,2),
(18 ,3),
(18 ,4),
(10 ,5),
(2 ,6),
(26 ,7),
(25 ,8),
(8 ,9),
(16 ,10),
(12 ,11),
(25 ,12),
(2 ,13),
(10 ,14),
(16 ,15),
(26 ,16),
(25 ,17),
(10 ,18),
(2 ,19),
(26 ,20),
(8 ,21),
(16 ,22),
(18 ,23);

## for reference(see instructor teach which class more clearly)
SELECT *
FROM Teaches
INNER JOIN Class
ON Teaches.ClassID = Class.ClassID;


-- 9. Customer
INSERT INTO Customer (UserID , ShoeSize ) # add smth new
VALUES
(1, 5),
(3, 6), 
(4, 10.5), 
(5, 7), 
(6, 8.5),
(7, 6.5), 
(9, 5), 
(11, 5),
(13, 6.5),
(14, 8), 
(15, 7),
(17, 5),
(19, 6.5),
(20, 11.5),
(21, 7),
(22, 8.5),
(23, 10.5), 
(24, 8.5), 
(30, 13);



-- 10. Package 
INSERT INTO Package (PackageID, PackageDuration, Cost)
VALUES
(1, '1 Day', 19.99),
(2, '1 Week', 35.99), 
(3, '2 Weeks', 59.99),
(4, '1 Month', 99.99),
(5, '2 Months', 189.99),
(6, '3 Months', 279.99),
(7, '6 Months', 539.99 ),
(8, '12 Months', 999.99 ),
(9, '18 Months', 1299.99),
(10, '24 Months', 1499.99);

select * from package;



-- 11. Payment table
INSERT INTO Payment (PaymentID, UserID, PackageID, Amount, PaymentDate, PaymentMethod)
VALUES
(1, 1, 6, 279.99, '2024-03-25', 'Credit Card'),
(2, 3, 6, 279.99, '2024-04-20', 'PayPal'),
(3, 4, 7, 539.99, '2024-04-15', 'Bank Transfer'),
(4, 5, 7, 539.99, '2024-05-01', 'Credit Card'),
(5, 6, 8, 999.99, '2024-05-10', 'PayPal'),
(6, 7, 8, 999.99, '2024-05-05', 'Bank Transfer'),
(7, 9, 6, 279.99, '2024-04-25', 'Credit Card'),
(8, 11, 7, 539.99, '2024-05-01', 'PayPal'),
(9, 13, 8, 999.99, '2024-04-20', 'Bank Transfer'),
(10, 14, 6, 279.99, '2024-05-15', 'Credit Card'),
(11, 15, 5, 189.99, '2024-05-01', 'PayPal'),
(12, 17, 4, 99.99, '2024-04-15', 'Bank Transfer'),
(13, 19, 3, 59.99, '2024-05-10', 'Credit Card'),
(14, 20, 2, 35.99, '2024-05-05', 'PayPal'),
(15, 21, 1, 19.99, '2024-04-10', 'Bank Transfer'),
(16, 22, 9, 1299.99, '2024-05-20', 'Credit Card'),
(17, 23, 10, 1499.99, '2024-05-15', 'PayPal'),
(18, 24, 6, 279.99, '2024-04-25', 'Bank Transfer'),
(19, 30, 7, 539.99, '2024-05-01', 'Credit Card');

## for reference(see payment matches)
SELECT *
FROM payment
INNER JOIN package
ON Payment.PackageID = Package.PackageID
ORDER BY PaymentID asc;

-- 12. Booking_Record
INSERT INTO Booking_Record (UserID, ClassID, RoomID, EquipmentNumber, DateTimeOfBooking, BookingStatus)
VALUES
(1, 1, 4, 'SP01', '2024-05-31 09:00:00', 'Confirmed'),
(3, 1, 4, 'SP02', '2024-05-31 12:00:00', 'Cancelled'),
(15, 1, 4, 'SP03', '2024-05-30 11:00:00', 'Confirmed'),
(22, 1, 4, 'SP04', '2024-05-29 06:00:00', 'Confirmed'),
(30, 1, 4, 'SP05', '2024-05-30 18:00:00', 'Confirmed'),
(4, 3, 2, 'SP03', '2024-05-31 09:00:00', 'Confirmed'),
(11, 3, 2, 'SP05', '2024-05-30 19:00:00', 'Cancelled'),
(5, 3, 2, 'SP08', '2024-05-30 20:00:00', 'Confirmed'),
(6, 3, 2, 'SP10', '2024-05-31 12:00:00', 'Confirmed'),
(7, 3, 2, 'SP12', '2024-05-29 05:00:00', 'Confirmed'),
(13, 3, 2, 'SP14', '2024-05-28 09:00:00', 'Confirmed'),
(6, 2, 5, 'SP01', '2024-06-03 12:00:00', 'Confirmed'),
(7, 2, 5, 'SP03', '2024-06-03 15:00:00', 'Confirmed'),
(14, 2, 5, 'SP05', '2024-06-03 14:00:00', 'Confirmed'),
(22, 2, 5, 'SP07', '2024-06-03 18:00:00', 'Confirmed'),
(24, 2, 5, 'SP09', '2024-06-03 19:00:00', 'Confirmed'),
(30, 4, 2, 'SP14', '2024-06-01 09:00:00', 'Confirmed'),
(13, 4, 2, 'SP13', '2024-06-03 20:00:00', 'Confirmed'),
(23, 4, 2, 'SP10', '2024-06-02 10:00:00', 'Confirmed'),
(15, 4, 2, 'SP09', '2024-06-02 19:00:00', 'Confirmed'),
(5, 5, 3, 'SP04', '2024-05-28 10:00:00', 'Confirmed'),
(1, 5, 3, 'SP05', '2024-05-29 11:00:00', 'Confirmed'),
(7, 5, 3, 'SP03', '2024-05-27 12:00:00', 'Confirmed'),
(15, 5, 3, 'SP10', '2024-05-27 13:00:00', 'Confirmed'),
(14, 5, 3, 'SP11', '2024-05-29 14:00:00', 'Confirmed'),
(13, 5, 3, 'SP12', '2024-05-30 15:00:00', 'Confirmed'),
(13, 6, 1, 'SP01', '2024-05-30 17:00:00', 'Confirmed'),
(22, 6, 1, 'SP02', '2024-05-29 19:00:00', 'Confirmed'),
(23, 6, 1, 'SP12', '2024-05-31 12:00:00', 'Confirmed'),
(24, 6, 1, 'SP11', '2024-06-03 15:00:00', 'Confirmed'),
(30, 6, 1, 'SP13', '2024-06-03 14:00:00', 'Confirmed'),
(30, 10, 4, 'SP13', '2024-06-03 14:00:00', 'Confirmed'),
(23, 10, 4, 'SP12', '2024-06-04 14:00:00', 'Confirmed'),
(22, 10, 4, 'SP05', '2024-06-05 14:00:00', 'Confirmed'),
(13, 11, 2, 'SP07', '2024-06-10 10:00:00', 'Confirmed'),
(13, 11, 2, 'SP06', '2024-06-10 12:00:00', 'Confirmed'),
(13, 11, 2, 'SP02', '2024-06-09 01:00:00', 'Confirmed'),
(13, 11, 2, 'SP01', '2024-06-05 07:00:00', 'Confirmed'),
(1, 8, 7, 'MT01', '2024-06-05 12:00:00', 'Confirmed'),
(11, 8, 7, 'MT02', '2024-06-04 12:00:00', 'Confirmed'),
(6, 8, 7, 'MT03', '2024-06-02 19:00:00', 'Confirmed'),
(5, 8, 7, 'MT04', '2024-06-03 11:00:00', 'Confirmed'),
(7, 7, 6, 'MT01', '2024-06-11 12:00:00', 'Confirmed'),
(9, 7, 6, 'MT02', '2024-06-10 13:00:00', 'Confirmed'),
(11, 7, 6, 'MT03', '2024-06-11 20:00:00', 'Confirmed'),
(13, 7, 6, 'MT04', '2024-06-10 21:00:00', 'Confirmed'),
(15, 7, 6, 'MT05', '2024-06-10 22:00:00', 'Confirmed'),
(1, 9, 9, 'PR01', '2024-06-11 04:00:00', 'Confirmed'),
(22, 9, 9, 'PR02', '2024-06-10 10:00:00', 'Confirmed'),
(23, 9, 9, 'PR03', '2024-06-11 13:00:00', 'Confirmed'),
(24, 9, 9, 'PR04', '2024-06-10 12:00:00', 'Confirmed'),
(19, 13, 10, 'PR05', '2024-06-11 09:00:00', 'Confirmed'),
(22, 13, 10, 'PR06', '2024-06-12 04:00:00', 'Confirmed'),
(23, 13, 10, 'PR07', '2024-06-13 09:00:00', 'Confirmed'),
(30, 13, 10, 'PR08', '2024-06-12 05:00:00', 'Confirmed'),
(15, 12, 6, 'MT05', '2024-06-13 22:00:00', 'Confirmed'),
(1, 12, 6, 'MT06', '2024-06-13 12:00:00', 'Confirmed'),
(7, 12, 6, 'MT07', '2024-06-14 21:00:00', 'Confirmed'),
(9, 12, 6, 'MT08', '2024-06-14 20:00:00', 'Confirmed'),
(6, 12, 6, 'MT09', '2024-06-12 03:00:00', 'Confirmed'),
(13, 14, 3, 'SP01', '2024-06-12 07:00:00', 'Confirmed'),
(14, 14, 3, 'SP02', '2024-06-13 04:00:00', 'Confirmed'),
(22, 14, 3, 'SP03', '2024-06-14 07:00:00', 'Confirmed'),
(23, 14, 3, 'SP04', '2024-06-12 09:00:00', 'Confirmed'),
(23, 16, 6, 'MT08', '2024-06-15 06:00:00', 'Confirmed'),
(15, 16, 6, 'MT01', '2024-06-16 06:00:00', 'Confirmed'),
(7, 16, 6, 'MT05', '2024-06-15 09:00:00', 'Confirmed'),
(13, 15, 5, 'SP01', '2024-06-16 07:00:00', 'Confirmed'),
(1, 15, 5, 'SP02', '2024-06-17 07:00:00', 'Confirmed'),
(4, 15, 5, 'SP03', '2024-06-14 08:00:00', 'Confirmed'),
(6, 15, 5, 'SP04', '2024-06-15 09:00:00', 'Confirmed'),
(7, 15, 5, 'SP15', '2024-06-16 10:00:00', 'Confirmed'),
(24, 17, 9, 'PR04', '2024-06-18 12:00:00', 'Confirmed'),
(23, 17, 9, 'PR05', '2024-06-17 12:00:00', 'Confirmed'),
(22, 17, 9, 'PR01', '2024-06-16 12:00:00', 'Confirmed'),
(7, 18, 2, 'SP01', '2024-06-20 13:00:00', 'Confirmed'),
(9, 18, 2, 'SP02', '2024-06-21 10:00:00', 'Confirmed'),
(23, 20, 6, 'MT08', '2024-06-20 06:00:00', 'Confirmed'),
(3, 20, 6, 'MT09', '2024-06-21 07:00:00', 'Confirmed'),
(5, 20, 6, 'MT04', '2024-06-22 06:00:00', 'Confirmed'),
(7, 19, 1, 'SP01', '2024-06-20 10:00:00', 'Confirmed'),
(6, 19, 1, 'SP02', '2024-06-21 21:00:00', 'Confirmed'),
(6, 22, 4, 'SP02', '2024-06-25 19:00:00', 'Confirmed'),
(9, 22, 4, 'SP03', '2024-06-26 18:00:00', 'Confirmed'),
(11, 22, 4, 'SP04', '2024-06-27 15:00:00', 'Confirmed'),
(13, 22, 4, 'SP06', '2024-06-28 10:00:00', 'Confirmed'),
(15, 22, 4, 'SP08', '2024-06-24 12:00:00', 'Confirmed'),
(15, 23, 1, 'SP08', '2024-06-29 11:00:00', 'Confirmed'),
(24, 23, 1, 'SP09', '2024-06-29 15:00:00', 'Confirmed'),
(22, 21, 10, 'PR01', '2024-06-25 12:00:00', 'Confirmed'),
(30, 21, 10, 'PR02', '2024-06-24 19:00:00', 'Confirmed'),
(24, 21, 10, 'PR03', '2024-06-23 15:00:00', 'Confirmed');



















