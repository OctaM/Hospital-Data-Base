alter procedure InserPerson
(
	@PersonType tinyint,
	@FirstName varchar(25), 
    @LastName varchar(25),
	@CNP varchar(13),
	@Gender varchar(1),
	@DateOfBirth date,
	@HomeAddress varchar(100),
	@PhoneNumber varchar(15),
	@EmailAddress varchar(50),
	@UserName varchar(50),
	@Password varchar(50)
)
AS 
SET NOCOUNT ON
BEGIN 

INSERT INTO dbo.Person
(	
	PersonType,
	FirstName,
	LastName,
	CNP,
	Gender,
	DateOfBirth,
	HomeAddress,
	PhoneNumber,
	EmailAddress,
	UserName,
	[Password]
)   
VALUES
(
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
	@Password
)
end