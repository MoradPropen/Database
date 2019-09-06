create database DBJOIN
 
CREATE TABLE [customers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](100) NOT NULL,
	[last_name] [varchar](100) NOT NULL,
	[login] [varchar](100) NOT NULL,
	[password] [varchar](100) NOT NULL,
	[postal_code] [varchar](6) NOT NULL,
	[street] [varchar](100) NOT NULL,
	[building_no] [varchar](5) NOT NULL,
	[flat_no] [varchar](5) NULL,
	[city] [varchar](100) NOT NULL,
	[NID] [varchar](20) NULL,
	[mobile_number] [varchar](20) NOT NULL,
CONSTRAINT [pk_customers] PRIMARY KEY (id)
);

CREATE TABLE [orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[date] [date] NULL,
	[discount_id] [int] NOT NULL,
	[shipper] [int] NOT NULL,
	[state] [varchar](650) NULL,
CONSTRAINT [PK__orders__id] PRIMARY KEY(id)
);

  ALTER TABLE [orders]
ADD CONSTRAINT [FK_customers_customer_id] FOREIGN KEY ([customer_id]) REFERENCES customers([id])
ON DELETE CASCADE --{ NO ACTION | CASCADE | SET NULL | SET DEFAULT };



--JOIN
SELECT *
FROM customers
JOIN orders ON customers.id=orders.customer_id;

--FULL OUTER JOIN or FULL JOIN
SELECT customers.first_name,customers.last_name,orders.id
FROM Customers
FULL OUTER JOIN orders ON customers.id=customer_id
ORDER BY customers.first_name;

--INNER JOIN
SELECT customers.id, customers.first_name,customers.last_name, orders.state,orders.date
FROM customers
INNER JOIN orders ON customers.id=customer_id;

--LEFT JOIN
SELECT customers.first_name,customers.last_name,orders.id
FROM Customers
LEFT JOIN orders ON customers.id=orders.customer_id
ORDER BY customers.first_name;

--RIGHT JOIN
SELECT orders.id, customers.first_name,customers.last_name
FROM orders
RIGHT JOIN customers ON customers.id=orders.customer_id
ORDER BY orders.id;

-- Self JOIN 
SELECT customers.first_name,customers.last_name,orders.id
FROM Customers,orders
where customers.id<>orders.customer_id;

SELECT A.first_name, B.City
FROM customers A, customers B
WHERE A.city <> B.city
AND A.City = B.City 



























