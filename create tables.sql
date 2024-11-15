CREATE DATABASE BDM_Project;
USE BDM_Project;

-- Create User table
CREATE TABLE User (
  UserID INT NOT NULL PRIMARY KEY,
  Name VARCHAR(100) NOT NULL,
  Email VARCHAR(100) UNIQUE NOT NULL ,
  Phone VARCHAR(30) UNIQUE NOT NULL ,
  UserType VARCHAR(50) NOT NULL
);


-- Create Instructor table
CREATE TABLE Instructor (
  UserID INT,
  MentoredBy INT,
  CONSTRAINT Instructor_pk PRIMARY KEY (UserID),
  CONSTRAINT Instructor_fk1 FOREIGN KEY (UserID) REFERENCES User (UserID),
  CONSTRAINT Instructor_fk2 FOREIGN KEY (MentoredBy) REFERENCES Instructor (UserID)
  );
  

-- Create Instructor_Certification table 
CREATE TABLE Instructor_Certification (
  UserID INT,
  Certification VARCHAR(255),
  CONSTRAINT Instructor_Certification_pk PRIMARY KEY (UserID, Certification),
  CONSTRAINT Instructor_Certification_fk FOREIGN KEY (UserID) REFERENCES Instructor (UserID)
);


-- Create Room table
CREATE TABLE Room (
  RoomID INT,
  RoomType VARCHAR(50),
  RoomCapacity INT,
  CONSTRAINT Room_pk PRIMARY KEY (RoomID)
);


-- Create EQUIPMENT table
CREATE TABLE Equipment (
  RoomID INT,
  EquipmentNumber CHAR(4),
  EquipmentName VARCHAR(50),
  CONSTRAINT Equipment_pk PRIMARY KEY (RoomID, EquipmentNumber),
  CONSTRAINT Equipment_fk FOREIGN KEY (RoomID) REFERENCES Room (RoomID)
);






-- Create Class table
CREATE TABLE Class (
  ClassID INT, 
  ClassName VARCHAR(255),
  DifficultyLevel VARCHAR(50), 
  Date DATE,
  StartTime TIME,
  EndTime TIME,
  ClassCapacity INT,
  ClassType VARCHAR(50),
  RoomID INT,
  CONSTRAINT Class_pk PRIMARY KEY (ClassID),
  CONSTRAINT Class_fk FOREIGN KEY (RoomID) REFERENCES Room (RoomID)
);



-- Create Teaches table
CREATE TABLE Teaches (
  UserID INT,
  ClassID INT,
  CONSTRAINT Teaches_pk PRIMARY KEY (UserID, ClassID),
  CONSTRAINT Teaches_fk1 FOREIGN KEY (UserID) REFERENCES Instructor (UserID),
  CONSTRAINT Teaches_fk2 FOREIGN KEY (ClassID) REFERENCES Class (ClassID)
);


-- Create Customer table
CREATE TABLE Customer (
  UserID INT,
  ShoeSize DECIMAL(3,1), 
  CONSTRAINT Customer_pk PRIMARY KEY (UserID),
  CONSTRAINT Customer_fk FOREIGN KEY (UserID) REFERENCES User(UserID)
  );
  

-- Create Package table
CREATE TABLE Package (
  PackageID INT,
  PackageDuration VARCHAR(50),
  Cost DECIMAL(6, 2),
  CONSTRAINT Package_pk PRIMARY KEY (PackageID)
);


-- Create Payment table
CREATE TABLE Payment (
  PaymentID INT,
  UserID INT,
  PackageID INT,
  Amount DECIMAL(10, 2),
  PaymentDate DATE,
  PaymentMethod VARCHAR(50),
  CONSTRAINT Payment_pk PRIMARY KEY (PaymentID),
  CONSTRAINT Payment_fk1 FOREIGN KEY (UserID) REFERENCES Customer (UserID), #change to refer to User
  CONSTRAINT Payment_fk2 FOREIGN KEY (PackageID) REFERENCES Package (PackageID)
);

-- Create Booking_Record table
CREATE TABLE Booking_Record (
  UserID INT,
  ClassID INT,
  RoomID INT,
  EquipmentNumber CHAR(4),
  DateTimeOfBooking DATETIME,
  BookingStatus VARCHAR(50),
  CONSTRAINT Booking_Record_pk PRIMARY KEY (UserID, ClassID, RoomID, EquipmentNumber, DateTimeOfBooking),
  CONSTRAINT Booking_Record_fk1 FOREIGN KEY (UserID) REFERENCES Customer (UserID),
  CONSTRAINT Booking_Record_fk2 FOREIGN KEY (ClassID) REFERENCES Class (ClassID),
  CONSTRAINT Booking_Record_fk3 FOREIGN KEY (RoomID, EquipmentNumber) REFERENCES Equipment (RoomID, EquipmentNumber)
);








