Create database MyBookshop
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