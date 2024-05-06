Create Database LoginDemoDB
Go


Create Table Users (
	Email nvarchar(100) PRIMARY KEY,
	[Password] nvarchar(20) NOT NULL,
	PhoneNumber nvarchar(20) NULL,
	BirthDate DATETIME NULL,
	[Status] int NULL,
	[Name] nvarchar(50) NOT NULL
)
Go
Create Table Grades(
Id int IDENTITY (100,1) PRIMARY KEY,
DateOfTest DateTime NULL,
[Subject] nvarchar(20) NOT NULL,
Grade int NOT NULL,
Email nvarchar(50) NOT NULL FOREIGN KEY REFERENCES Users(Email) 
)
Go


INSERT INTO dbo.Users VALUES ('ofer@ofer.com', '1234', '+972526344450','15-nov-1972',1,'Ofer Zadikario')
INSERT INTO dbo.Grades VALUES ( '15-NOV-2000', 'English',100,'ofer@ofer.com')
Go  

select * from dbo.Users
select * from dbo.Grades

--scaffold-DbContext "Server = (localdb)\MSSQLLocalDB;Initial Catalog=LoginDemoDB;Integrated Security=True;Persist Security Info=False;Pooling=False;Multiple Active Result Sets=False;Encrypt=False;Trust Server Certificate=False;Command Timeout=0" Microsoft.EntityFrameworkCore.SqlServer -OutPutDir Models -Context LoginDemoDbContext -DataAnnotations -force