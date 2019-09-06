-- Presentation 
--          on Database 
--                  Manegement System

-- Select
SELECT * FROM [Admission2019].[Applications];
SELECT [Unitname], [Position]FROM [Admission2019].[Applications];


-- Select Distinct
SELECT DISTINCT[ApplicationId] FROM [Admission2019].[Applications];


-- Where
SELECT * FROM [Admission2019].[Applications]
WHERE [Position]=5;


-- And Or Not
SELECT * FROM [Admission2019].[Applications]
WHERE [Position]=5 AND [ApplicationId]=504;

SELECT * FROM [Admission2019].[Applications]
WHERE [Position]=5 OR [ApplicationId]=504;

SELECT * FROM [Admission2019].[Applications]
WHERE NOT [Id]=5;


-- Order By
SELECT [Roll],[PaymentDate] FROM [Admission2019].[Applications]
ORDER BY [ApplicationId] ASC, [PaymentDate] DESC;


-- Insert Into
INSERT INTO [Admission2019].[Applications] ([UnitName], [ApplicationId], [Roll], [PaymentAmount], [Position])
VALUES ('B', '555', '111', '500','1');


-- Null Values
SELECT [UnitName], [Roll], [Position]
FROM [Admission2019].[Applications]
WHERE [Position] IS NULL;

SELECT [UnitName], [Roll], [Position]
FROM [Admission2019].[Applications]
WHERE [Position] IS NOT NULL;



-- Update
UPDATE [Admission2019].[Applications]
SET [UnitName] = 'B', [Position]= '625'
WHERE [ApplicationId] = 525;



-- Delete
DELETE FROM [Admission2019].[Applications] WHERE [ApplicationId]='515';

SELECT TOP 5 [Position]
FROM [Admission2019].[Applications]
WHERE [UnitName] ='A';

SELECT TOP 3 * FROM [Admission2019].[Applications];

SELECT MIN(position) 
FROM [Admission2019].[Applications];

SELECT MAX(position) 
FROM [Admission2019].[Applications];