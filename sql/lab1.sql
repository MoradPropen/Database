create database DBLAB

CREATE TABLE [Persons](
	[PersonId] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [varchar](100) NOT NULL,
	[FirstName] [varchar](100) NOT NULL,
	[Age] [varchar](20) NOT NULL,
CONSTRAINT [pk_person] PRIMARY KEY (PersonId)
);

CREATE TABLE [Orders](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[OrderNumber] [int] NOT NULL,
	[PersonId] [int] NOT NULL,
	
CONSTRAINT [PK_orders_id] PRIMARY KEY(OrderId)
);

  ALTER TABLE [Orders]
ADD CONSTRAINT [FK_Orders_PersonID] FOREIGN KEY ([PersonId]) REFERENCES Persons([PersonId])
ON DELETE CASCADE 

INSERT INTO Persons(LastName,FirstName,Age)
VALUES ('Hansen','Ola',30),
('Svendson','Tove',23),
('Petterson','Kan',20);

INSERT INTO Orders(OrderNumber,PersonId)
VALUES (77895,3),
(44678,3),
(22456,2),
(24562,1);

select count(OrderId) from Orders
where PersonId =3;

select max(Age) from Persons
--or
select * from Persons
where Age = (select max(Age) from Persons)