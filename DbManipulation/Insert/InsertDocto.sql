alter procedure InsertDoctor	
(
	@PersonType tinyint,
	@FirstName varchar(25), 
    @LastName varchar(25),
	@CNP varchar(13),
	@Gender varchar(1),
	@DateOfBirth date,
	@HomeAddress varchar(100),
	@PhoneNumber varchar(15),
	@EmailAddress varchar(40),
	@BloodType varchar(5),
	@UserName varchar(50),
	@Password varchar(50),
	@Speciality varchar(50)
)
AS 
SET NOCOUNT ON
BEGIN

DECLARE 
	@PersonID int
	
	exec InsertPerson
		@PersonType,
		@FirstName, 
		@LastName, 
		@CNP, 
		@Gender, 
		@DateOfBirth,
		@HomeAddress,
		@PhoneNumber,
		@EmailAddress,
		@UserName,
		@Password;

	set @personID = (SELECT p.PersonId
			FROM dbo.Person p
			WHERE @CNP=p.CNP);

	INSERT INTO dbo.Doctor
	(	
		PersonID,
		Speciality
	)   
	VALUES
	(
		@PersonID,
		@Speciality
	)
end

Exec dbo.InsertDoctor
	1,
	'Marcel',
	'Costel',
	'1980313090021',
	'M',
	'1988-05-04',
	'Str. Kogalniceanu nr. 5, Brasov, Romania',
	'+40742531412',
	'georgel.popel@gmail.com',
	'AB4',
	'doctor1',
	'doctor1',
	'ginecology'
