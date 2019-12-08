Book Shop Database Systems
System Overview:
Customer wants to purchase any book from the shop than first of all customer just choose the stream of the book than he/she can see the more than one type of books there and then he/she can choose the specific book from there. And then purchase it by paying price on bookshop cash counter and receives its invoice. We are concerning the manual process of a bookshop, the major problem is the waste of time. A customer has to waste his/her valuable time when he needs to buy a book as all the events such as searching, purchasing are done by members of the staff .In briefly, the manual process is very slow. But automation will reduce the time taken in the whole process. The Bookshop System is to automate some operations in a bookshop. Generally it includes the Order Processing, Stock Management.
Existing system description: 
At present, the Wholesale and Retail outlets are working under manual management. All records related to Products, Sales, Suppliers, Orders, Payment are stored in registers. To manage the whole data, the person maintaining records has to take great pain. Various registers has to be maintained for each separate process. I try to develop such type system which is provide the automation on the any type of the bookshop. That means a shop which has the type system which provides the facility to the customers of the shop to purchase the books from the shop without any complexity.
Reduce of work:
•	Automation of existing manual information systems.
•	Reduction of manual processing.
•	Decrease in processing time.
•	Fast retrieval of all type of information.
•	Good efficiency and response time.
•	More consistent data handling.
•	A user-friendly system which do not require any special training or Expertise of computer.






Entity:	
books
authors
publishers	
genres	
books_genres	
customers	
discounts	
books_discounts	
customers_discounts	
shippers	
orders	
orders_details	
reviews
Entity with Attribute and Keys:
books	
Isbn	varchar
title	varchar
publicatiom_date	date
edition	integer
Available_quantity	integer
price	numeric
author	integer
publisher	integer
	


Superkey:{{Isbn},{Isbn,tilte},{Isbn,publication_date},{Isbn,edition},{Isbn,Available_quantity}{Isbn,price},{Isbn,author},{Isbn,publisher},{Isbn,tilte},{Isbn,publication_date},{Isbn,tilte,edition},{Isbn,tilte,Available_quantity},{Isbn,tilte,price},{Isbn,tilte,author},{Isbn,tilte,publisher},{Isbn,publication_date,edition},{Isbn,publicatiom_date,Available_quantity},{Isbn,publication_date,price},{Isbn,publication_date,author},{Isbn,publication_date,publisher},{Isbn,edition,Available_quantity},{Isbn,edition,price},{Isbn,edition,author},{Isbn,edition,publisher},{Isbn,Available_quantity,price},{Isbn,Available_quantity,author},{Isbn,Available_quantity,publisher},{Isbn,price,author},{Isbn,price,publisher},{Isbn,author,publisher},
{Isbn,tilte,pubication_date,edition},{Isbn,tilte,publication_date,Available_quantity},{Isbn,tilte,publication_date,price},{Isbn,tilte,publicatiom_date,author},{Isbn,tilte,publicatiom_date,publisher},{Isbn,publicatiom_date,edition,Available_quantity},{Isbn,publication_date,edition,price},{Isbn,publication_date,edition,aothor},{Isbn,publication_date,edition,publisher},{Isbn,edition,Available_quantity,price},{Isbn,,edition,Available_quantity,author},{Isbn,,edition,Available_quantity,publisher},{Isbn,Availble_quantity,price,author},{Isbn,Availble_quantity,price,publisher},},{Isbn,price,author,publisher},{Isbn,title,publication_date,edition,Available_quantity},{Isbn,title,publicatiom_date,edition,price},{Isbn,title,publication_date,edition,author},{Isbn,title,publication_date,edition,publisher},{Isbn,publication_date,edition,Availble_quantity,price},{Isbn,publication_date,edition,Available_quanitity,author},{Isbn,publication_date,edition,Available_quanitity,publisher},{Isbn,edition,Available_quanitity,price,author},{Isbn,edition,Available_quanitity,price,publisher},{Isbn,Available_quanitity,price,author,publisher},{Isbn,title,publication_date,edition,Available_quanitity,price},{Isbn,title,publication_date,edition,Available_quanitity,author},{Isbn,title,publication_date,edition,Available_quanitity,publisher},{Isbn,publication_date,edition,Available_quanitity,author,publiher},{Isbn,title,publication_date,edition,Available_quanitity,price,author},{Isbn,title,publication_date,edition,Available_quanitity,price,publisher},{Isbn,title,publication_date,edition,Available_quanitity,price,author,publisher}}
Primary key: {Isbn}
Foreign key: author, publisher
CREATE INDEX ind_bk
ON books (author)
 
Fig: Inserted data in books table

authors	
id	integer
First_name	varchar
Second_name	char
Company_name		char
                                                                                              



Superkey:{{id},{id,first_name},{id,second_name},{id,company_name},{id,first_name,second_name},{id,first_name,Company_name},{id,first_name, second_name, company_name}}
Primary key:{id}
CREATE INDEX ind_author
ON authors (First_name)

 
Fig: Inserted data in authors table
publishers	
id	integer
name		char


Super key: {{id},{id, name}}
Primary key: {id}
CREATE INDEX ind_publisher
ON publishers (name)

 
Fig: Inserted data in publishers table
customers	
id	integer
first_name	varchar
last_name	varchar
login	varchar
password	varchar
postal_code	varchar
street	varchar
building_no	varchar
flat_no	varchar
city	varchar
NID	varchar
phone_number	varchar




	



Super Key:{id}{NID},{phone_number},{login,passward},{id, first_name },{id, last_name },{id, login },{id, password },{id, postal_code },{id, street },{id, building_no },{id, flat_no },{id, city },{id, NID },{id, phone_number },{NID,first_name},{ NID, last_name },{ NID, login },{ NID, password },{ NID, postal_code },{ NID, street },{ NID, building_no },{ NID, flat_no},{NID,city},{NID,phone_number},{phone_number,first_name},{phone_number,last_name },{phone_number,login},{phone_number, password},{phone_number, postal_code },{phone_number,street},{phone_number,building_no},{phone_number,flat_no},{phone_number, city },{id,login,passward},{login,passward, first_name },{login,passward, last_name },{login,passward,postal_code},{login,passward,street},{login,passward,building_no},{login,passward,flat_no},{login,passward,city},{login,passward,NID}{login,passward,phone_number}{ id, first_name, last_name },{ id, first_name, login },{ id, first_name, password },{ id, first_name, postal_code},{id, first_name,street},{id,first_name,building_no },{id, first_name, flat_no},{ id, first_name, city},{id, first_name, NID },{id, first_name, phone_number },{ id, last_name,login},{id,last_name,password},{id,last_name,postal_code},{id,last_name,street},{id, last_name,building_no},{id, last_name, flat_no},{id,last_name, city},{id, last_name, NID },{id,last_name,phone_number},{id,login,postal_code},{id,login,street},{id,login,building_no },{id,login, flat_no },{id,login, city },{id,login, NID },{id,login, phone_number }
Primary key: id
CREATE INDEX ind_customers
ON customers (phone_number)
 

Fig: Inserted data in customers table
genres	
id	integer
name	varchar


Super key:{{id},{id, name}}
Primary key: {id}
CREATE INDEX ind_genre
ON genres (name)
 

Fig: Inserted data in genres table


book_genres	
book_id	varchar
genre_id	integer


Super key: {{book_id, genre_id}}
Composite key: {book_id, genre_id}

 
Fig: Inserted data in book_genres table
discount	
id	integer
name	varchar
value	numeric



Super key: {{id},{id,name},{id,value},{id,name,,value}}
Primary key: {id}
CREATE INDEX ind_discount
ON discount(name)

 
Fig: Inserted data in discounts table

customers_discount	
customer_id	integer
discount_id	integer


Super key: {customer_id, discount_id}
Composite key: {customer_id, discount_id}
 
Fig: Inserted data in customers_discount table
books_discount	
book_id	varchar
discount_id	integer


Super key: {{book_id, discount_id}}
Primary key as Composite key: {book_id, discount_id}

 
Fig: Inserted data in book_discount table


orders	
id	integer
customer_id	integer
date	date
discount_id	bigint
shipper	bigint
state	varchar





Super key:{{id}.{id, customer_id },{id, date },{id, discount_id },{id, shipper},{id, state}, {id, customer_id,date},{id,customer_id,discount_id},{id, customer_id , shipper },{id, customer_id ,state},{id,date,discount_id},{id,date,shipper},{id,date,state},{id,discount_id,shipper},{id,discount_id,state},{id,shipper,state},{id,customer_id,date,discount_id},{id,date,discount_id,shipper},{id,discount_id,shipper,state},{id,customer_id,date,discount_id,shipper},{id,customer_id,date,discount_id,state},{id,customer_id,date,discount_id,sipper,state}}
Primary key:{id}
Foreign key:{ customer_id},{ discount_id },{shipper}

 
Fig: Inserted data in orders table

orders_details	
book_id	varchar
order_id	bigint
amount	integer



Superkey:{{book_id,order_id},{order_id,amount},{order_id,amount},{book_id,order_id,amount}}

 
Fig: Inserted data in orders_details table

shipper	
id	integer
name	varchar
Phone_number	integer



Super key:{{id},{id,name},{id,Phone_number},{id,name,Phone_number}}
Primary key:{id}
CREATE INDEX ind_shipper
ON shipper(name)

 
Fig: Inserted data in orders table




Reviews	
Id	integer
book_id	varchar
Customer_id	bigint
Review	integer
Date	date
Comments	varchar




Superkey:{{id},{id,book_id},{id,Customer_id},{id,Date},{id,Review},{book_id,Customer_i},{id,book_id,Customer_i},{id,book_id,Review},{id,book_id,Date },{id,book_id,Customer_i,Review },{id,book_id,Customer_i, Date },{id,book_id,Customer_i, Review ,Date }}
Primary key: {id}
Foreign key: { book_id} ,{ Customer_id}

 











Schema Diagram:
 


 





ERD:
 

Normalization:
All table contains an atomic value so they are satisfy 1NF
All non-key attributes are fully functional dependent on the primary key so they are satisfy 2 NF
There is no transitive dependency for non-prime attributes so they are satisfy 3NF and also satisfy BCNF.
Query:
Create database MoradBookshop
CREATE TABLE [authors](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](100) NULL,
	[second_name] [varchar](100) NULL,
	[company_name] [varchar](100) NULL,
 CONSTRAINT [PK_authors] PRIMARY KEY (id) 
 );

 CREATE TABLE [books](
	[Isbn] [varchar](100) NOT NULL,
	[title] [varchar](100) NULL,
	[pubication_date] [date] NULL,
	[edition] [int] NULL,
	[available_quantity] [int] NULL,
	[price] [numeric](6, 2) NULL,
	[author] [int] NOT NULL,
	[publisher] [int] NULL,
 CONSTRAINT [PK_books] PRIMARY KEY(Isbn)
 );

 ALTER TABLE [books]
ADD CONSTRAINT [FK_books_author_id] FOREIGN KEY ([author]) REFERENCES authors([id])
ON DELETE CASCADE --{ NO ACTION | CASCADE | SET NULL | SET DEFAULT };

CREATE TABLE [publishers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
CONSTRAINT [PK_publishers] PRIMARY KEY (id)
);

ALTER TABLE [books]
ADD CONSTRAINT [FK_books_publisher_id] FOREIGN KEY ([publisher]) REFERENCES publishers([id])
ON DELETE CASCADE --{ NO ACTION | CASCADE | SET NULL | SET DEFAULT };

CREATE TABLE [books_genres](
	[book_id] [varchar](100) NOT NULL,
	[genre_id] [int]  NOT NULL
);


CREATE TABLE [genres](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_genres] PRIMARY KEY (id)
 );

 ALTER TABLE [books_genres]
ADD CONSTRAINT [FK_books_genres_id] FOREIGN KEY ([genre_id]) REFERENCES genres([id])
ON DELETE CASCADE --{ NO ACTION | CASCADE | SET NULL | SET DEFAULT };

 ALTER TABLE [books_genres]
ADD CONSTRAINT [FK_books_id_Isbn] FOREIGN KEY ([book_id]) REFERENCES books([Isbn])
ON DELETE CASCADE --{ NO ACTION | CASCADE | SET NULL | SET DEFAULT };

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

CREATE TABLE  [reviews](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[book_id] [varchar](100) NOt NULL,
	[review] [int] NULL,
	[date] [date] NULL,
	[customer_id] [int] NOT NULL,
            [comments] [varchar](500) NULL,
 CONSTRAINT [PK__reviews__3213E83F6623B4AB] PRIMARY KEY(id)
 );

  ALTER TABLE [reviews]
ADD CONSTRAINT [FK_books_book_id_Isbn] FOREIGN KEY ([book_id]) REFERENCES books([Isbn])
ON DELETE CASCADE --{ NO ACTION | CASCADE | SET NULL | SET DEFAULT };

  ALTER TABLE [reviews]
ADD CONSTRAINT [FK_customers_customers_id] FOREIGN KEY ([customer_id]) REFERENCES customers([id])
ON DELETE CASCADE --{ NO ACTION | CASCADE | SET NULL | SET DEFAULT };



CREATE TABLE [orders](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[customer_id] [int] NOT NULL,
	[date] [date] NULL,
	[discount_id] [int] NOT NULL,
	[shipper] [int] NOT NULL,
	[state] [varchar](650) NULL,
CONSTRAINT [PK__orders__id] PRIMARY KEY(id)
);

CREATE TABLE [discounts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](100) NULL,
	[value] [numeric](2, 2) NULL,
CONSTRAINT [PK_discounts__discounts__id] PRIMARY KEY(id)
);

CREATE TABLE [shippers](
	[id] [int] identity(1,1) NOT NULL,
	[name] [varchar](100) NOT NULL,
	[phone_number] [varchar](20) NOT NULL,
CONSTRAINT [shippers__shipper__id] PRIMARY KEY(id)
);

  ALTER TABLE [orders]
ADD CONSTRAINT [FK_shippers_shipper_id] FOREIGN KEY ([shipper]) REFERENCES shippers([id])
ON DELETE CASCADE --{ NO ACTION | CASCADE | SET NULL | SET DEFAULT };

  ALTER TABLE [orders]
ADD CONSTRAINT [FK_customers_customer_id] FOREIGN KEY ([customer_id]) REFERENCES customers([id])
ON DELETE CASCADE --{ NO ACTION | CASCADE | SET NULL | SET DEFAULT };

  ALTER TABLE [orders]
ADD CONSTRAINT [FK_discounts_discount_id] FOREIGN KEY ([discount_id]) REFERENCES discounts([id])
ON DELETE CASCADE --{ NO ACTION | CASCADE | SET NULL | SET DEFAULT };

CREATE TABLE [orders_details](
	[book_id] [varchar](100) NOT NULL,
	[order_id] [int]  NOT NULL,
	[amount] [int] NULL
);

 ALTER TABLE [orders_details]
ADD CONSTRAINT [FK_books_book_id] FOREIGN KEY ([book_id]) REFERENCES books([Isbn])
ON DELETE CASCADE --{ NO ACTION | CASCADE | SET NULL | SET DEFAULT };



ALTER TABLE [orders_details]
ADD CONSTRAINT [FK_orders_order_id] FOREIGN KEY ([order_id]) REFERENCES orders([id])
ON DELETE CASCADE --{ NO ACTION | CASCADE | SET NULL | SET DEFAULT };

CREATE TABLE [customers_discounts](
	[customer_id] [int]  NOT NULL,
	[discount_id] [int]  NOT NULL

);
ALTER TABLE [customers_discounts]
ADD CONSTRAINT [discounts_discount_id] FOREIGN KEY ([discount_id]) REFERENCES discounts([id])
ON DELETE CASCADE --{ NO ACTION | CASCADE | SET NULL | SET DEFAULT };

ALTER TABLE [customers_discounts]
ADD CONSTRAINT [FK_customer_customers_id] FOREIGN KEY ([customer_id]) REFERENCES customers([id])
ON DELETE CASCADE --{ NO ACTION | CASCADE | SET NULL | SET DEFAULT };

CREATE TABLE [books_discounts](
	[book_id] [varchar](100) NOT NULL,
	[discount_id] [int] NOT NULL
);
ALTER TABLE [books_discounts]
ADD CONSTRAINT [FK_discount_discounts_id] FOREIGN KEY ([discount_id]) REFERENCES discounts([id])
ON DELETE CASCADE --{ NO ACTION | CASCADE | SET NULL | SET DEFAULT };

ALTER TABLE [books_discounts]
ADD CONSTRAINT [FK_books_books_id] FOREIGN KEY ([book_id]) REFERENCES books([Isbn])
ON DELETE CASCADE --{ NO ACTION | CASCADE | SET NULL | SET DEFAULT };

