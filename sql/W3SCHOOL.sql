--SELECT
SELECT column1, column2, ...
FROM table_name;

SELECT * FROM table_name;

SELECT CustomerName, City FROM Customers;

SELECT * FROM Customers;

--DISTINCT
SELECT DISTINCT column1, column2, ...
FROM table_name;

SELECT DISTINCT Country FROM Customers;

SELECT COUNT(DISTINCT Country) FROM Customers;

SELECT Count(*) AS DistinctCountries
FROM (SELECT DISTINCT Country FROM Customers);

--WHERE
SELECT column1, column2, ...
FROM table_name
WHERE condition;

SELECT * FROM Customers
WHERE Country='Mexico';

SELECT * FROM Customers
WHERE CustomerID=1;

--AND OR NOT
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;

SELECT * FROM Customers
WHERE Country='Germany' AND City='Berlin';

SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;
SELECT * FROM Customers
WHERE City='Berlin' OR City='München';
SELECT * FROM Customers
WHERE Country='Germany' OR Country='Spain';

SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;
SELECT * FROM Customers
WHERE NOT Country='Germany';

SELECT * FROM Customers
WHERE Country='Germany' AND (City='Berlin' OR City='München');

SELECT * FROM Customers
WHERE NOT Country='Germany' AND NOT Country='USA';

--ORDER BY
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;

SELECT * FROM Customers
ORDER BY Country;
SELECT * FROM Customers
ORDER BY Country DESC;
SELECT * FROM Customers
ORDER BY Country, CustomerName;
SELECT * FROM Customers
ORDER BY Country ASC, CustomerName DESC;

--INSERT INTO
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
INSERT INTO table_name
VALUES (value1, value2, value3, ...);
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Cardinal', 'Stavanger', 'Norway');

--NULL VALUE
SELECT column_names
FROM table_name
WHERE column_name IS NULL;

SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL;
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NOT NULL;

---UPDATE
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;

UPDATE Customers
SET ContactName='Juan'
WHERE Country='Mexico';

UPDATE Customers
SET ContactName='Juan';

--DELETE
DELETE FROM table_name WHERE condition;
DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';

DELETE FROM table_name;
DELETE FROM Customers;

--TOP AND LIMIT
SELECT TOP number|percent column_name(s)
FROM table_name
WHERE condition;

SELECT TOP 50 PERCENT * FROM Customers;
SELECT TOP 3 * FROM Customers;

SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number;

SELECT * FROM Customers
LIMIT 3;
SELECT TOP 3 * FROM Customers
WHERE Country='Germany';

SELECT * FROM Customers
WHERE Country='Germany'
LIMIT 3;

--MIN
SELECT MIN(column_name)
FROM table_name
WHERE condition;
SELECT MIN(Price) AS SmallestPrice
FROM Products;

--MAX
SELECT MAX(column_name)
FROM table_name
WHERE condition;
SELECT MAX(Price) AS LargestPrice
FROM Products;

--COUNT()
SELECT COUNT(column_name)
FROM table_name
WHERE condition;
SELECT COUNT(ProductID)
FROM Products;

--AVG()
SELECT AVG(column_name)
FROM table_name
WHERE condition;
SELECT AVG(Price)
FROM Products;

--SUM()
SELECT SUM(column_name)
FROM table_name
WHERE condition;
SELECT SUM(Quantity)
FROM OrderDetails;

L--LIKE
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;
SELECT * FROM Customers
WHERE CustomerName LIKE 'a%';
SELECT * FROM Customers
WHERE CustomerName LIKE '%a';
SELECT * FROM Customers
WHERE CustomerName LIKE '%or%';
SELECT * FROM Customers
WHERE CustomerName LIKE '_r%';
SELECT * FROM Customers
WHERE CustomerName LIKE 'a__%';
SELECT * FROM Customers
WHERE ContactName LIKE 'a%o';
SELECT * FROM Customers
WHERE CustomerName NOT LIKE 'a%';

--WILCARD
SELECT * FROM Customers
WHERE City LIKE 'ber%';
SELECT * FROM Customers
WHERE City LIKE '%es%';
SELECT * FROM Customers
WHERE City LIKE '_ondon';
SELECT * FROM Customers
WHERE City LIKE 'L_n_on';
SELECT * FROM Customers
WHERE City LIKE '[bsp]%';
SELECT * FROM Customers
WHERE City LIKE '[a-c]%';
SELECT * FROM Customers
WHERE City LIKE '[!bsp]%';
SELECT * FROM Customers
WHERE City NOT LIKE '[bsp]%';

--IN
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);

SELECT column_name(s)
FROM table_name
WHERE column_name IN (SELECT STATEMENT);
SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');
SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');
SELECT * FROM Customers
WHERE Country IN (SELECT Country FROM Suppliers);

--BETWEEN
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20;
SELECT * FROM Products
WHERE Price NOT BETWEEN 10 AND 20;

SELECT * FROM Products
WHERE Price BETWEEN 10 AND 20
AND NOT CategoryID IN (1,2,3);

SELECT * FROM Products
WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;

SELECT * FROM Products
WHERE ProductName BETWEEN "Carnarvon Tigers" AND "Chef Anton's Cajun Seasoning"
ORDER BY ProductName;
SELECT * FROM Products
WHERE ProductName NOT BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;
SELECT * FROM Orders
WHERE OrderDate BETWEEN #01/07/1996# AND #31/07/1996#;
SELECT * FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';

--HAVING
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5
ORDER BY COUNT(CustomerID) DESC;
