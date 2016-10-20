create database HospitalDb

create table Person 
(
	[PersonId] int IDENTITY(1,1) PRIMARY KEY,
	[PersonType] tinyint NOT NULL,
	[LastName] varchar(255) NOT NULL,
	[FirstName] varchar(255) NOT NULL,
	[CNP] varchar(13) NOT NULL,
	[Gender] varchar(1) NOT NULL,
	[DateOfBirth] date NOT NULL,
	[HomeAddress] varchar(100),
	[PhoneNumber] varchar(15),
	[EmailAddress] varchar(50),
	[UserName] varchar(50),
	[Password] varchar(50)
)

create table Doctor
(
	[DoctorId] int IDENTITY(1,1) PRIMARY KEY,
	[PersonId] int NOT NULL,
	[Speciality] varchar(50) NOT NULL,

	FOREIGN KEY ([PersonId]) references Person([PersonId])
)

create table Patient
(
	[PatientId] int IDENTITY(1,1) PRIMARY KEY,
	[PersonId] int NOT NULL,
	[DoctorId] int NOT NULL,
	[BloodType] varchar(3),

	FOREIGN KEY ([PersonId]) references Person([PersonId]),
	FOREIGN KEY ([DoctorId]) references Doctor([DoctorId])

)