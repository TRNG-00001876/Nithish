use Employee;


create table Employees 
(
EmpId int ,
FirstName varchar(50) NOT Null,
LastName varchar(50) NOT Null,
Email varchar(50),
DateOfBirth date,
DeptId int,
constraint PK_emp primary key (EmpId),
constraint FK_dept foreign key (DeptId) references Dept(DeptId));

alter table Employees alter column Email varchar(50) not null;

select * from Employees;

Alter table Employees add PhoneNumber varchar(50);


create table Dept
(
DeptId int Primary Key);

Alter table Employees drop constraint PK_emp;
alter table Employees add constraint unique_emp UNIQUE(EmpId);
Alter table Employees add constraint PK_EmpId_Email Primary Key(EmpId,Email);

SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Employees';


select * from Dept;
Insert into Dept(deptid) values(101),(102),(103),(104),(105);



INSERT INTO Employees (EmpID, FirstName, LastName, Email, DateOfBirth, DeptId, PhoneNumber)
VALUES (1, 'Arun', 'Kumar', 'arun@gmail.com', '2001-05-21', 101, '986987755'),(2, 'mandli', 'nithin', 'nithin@gmail.com', '2001-05-15', 102, '986987756'),(3, 'Arul', 'Kumar', 'arul@gmail.com', '2001-06-21', 103, '986987745');

INSERT INTO Employees (EmpID, FirstName, LastName, Email, DateOfBirth, DeptId, PhoneNumber)
VALUES (4, 'chandra', 'Kumar', 'chandu@gmail.com', '2003-05-11', 104, '986988855'),(5, 'chandu', 'Kiran', 'chandu123@gmail.com', '2003-08-11', 105, '986989855');


INSERT INTO Employees (EmpID, FirstName, LastName, Email, DateOfBirth, DeptId )
VALUES (5, 'ram', 'Sita', 'sita@gmail.com', '2000-06-22', 104);

DELETE FROM Employees WHERE EmpID = 5;

ALTER TABLE Employees
ADD CONSTRAINT CheckDateOfBirth CHECK (DateOfBirth <= GETDATE());

ALTER TABLE Employees
ADD CONSTRAINT DF_PhoneNumber DEFAULT '9999999999' FOR PhoneNumber;
