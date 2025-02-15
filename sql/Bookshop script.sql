USE [Bookshop]
GO
/****** Object:  Table [dbo].[authors]    Script Date: 19/8/2019 11:33:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authors](
	[id] [int] NOT NULL,
	[first_name] [varchar](100) NULL,
	[second_name] [varchar](100) NULL,
	[company_name] [varchar](100) NULL,
 CONSTRAINT [PK_authors] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[books]    Script Date: 19/8/2019 11:33:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[books](
	[Isbn] [varchar](100) NOT NULL,
	[title] [varchar](100) NULL,
	[pubication_date] [date] NULL,
	[edition] [int] NULL,
	[available_quantity] [int] NULL,
	[price] [numeric](6, 2) NULL,
	[author] [int] NOT NULL,
	[publisher] [int] NULL,
 CONSTRAINT [PK_books] PRIMARY KEY CLUSTERED 
(
	[Isbn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[books_discounts]    Script Date: 19/8/2019 11:33:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[books_discounts](
	[book_id] [varchar](100) NOT NULL,
	[discount_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[books_genres]    Script Date: 19/8/2019 11:33:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[books_genres](
	[book_id] [varchar](100) NOT NULL,
	[genre_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customers]    Script Date: 19/8/2019 11:33:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers](
	[id] [int] NOT NULL,
	[first_name] [varchar](100) NOT NULL,
	[last_name] [varchar](100) NOT NULL,
	[login] [varchar](100) NOT NULL,
	[password] [varchar](100) NULL,
	[postal_code] [varchar](6) NOT NULL,
	[street] [varchar](100) NOT NULL,
	[building_no] [varchar](5) NOT NULL,
	[flat_no] [varchar](5) NULL,
	[city] [varchar](100) NOT NULL,
	[NID] [varchar](20) NULL,
	[mobile_number] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customers_discounts]    Script Date: 19/8/2019 11:33:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customers_discounts](
	[customer_id] [int] NOT NULL,
	[discount_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[discounts]    Script Date: 19/8/2019 11:33:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[discounts](
	[id] [int] NOT NULL,
	[name] [varchar](100) NULL,
	[value] [numeric](2, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[genres]    Script Date: 19/8/2019 11:33:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[genres](
	[id] [int] NOT NULL,
	[name] [varchar](100) NOT NULL,
 CONSTRAINT [PK_genres] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 19/8/2019 11:33:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[id] [int] NOT NULL,
	[customer_id] [int] NOT NULL,
	[date] [date] NULL,
	[discount_id] [int] NOT NULL,
	[shipper] [int] NOT NULL,
	[state] [varchar](650) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orders_details]    Script Date: 19/8/2019 11:33:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders_details](
	[book_id] [varchar](100) NOT NULL,
	[order_id] [int] NOT NULL,
	[amount] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[publishers]    Script Date: 19/8/2019 11:33:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[publishers](
	[id] [int] NOT NULL,
	[name] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reviews]    Script Date: 19/8/2019 11:33:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviews](
	[id] [int] NOT NULL,
	[book_id] [varchar](100) NULL,
	[review] [int] NULL,
	[date] [date] NULL,
	[customer_id] [int] NULL,
 CONSTRAINT [PK__reviews__3213E83F6623B4AB] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shippers]    Script Date: 19/8/2019 11:33:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shippers](
	[id] [int] NOT NULL,
	[name] [varchar](100) NOT NULL,
	[phone_number] [varchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[discounts] ADD  DEFAULT ((0)) FOR [value]
GO
ALTER TABLE [dbo].[orders] ADD  DEFAULT ('AWAITING') FOR [state]
GO
ALTER TABLE [dbo].[books]  WITH CHECK ADD  CONSTRAINT [FK_books_authors] FOREIGN KEY([author])
REFERENCES [dbo].[authors] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[books] CHECK CONSTRAINT [FK_books_authors]
GO
ALTER TABLE [dbo].[books]  WITH CHECK ADD  CONSTRAINT [FK_books_publishers] FOREIGN KEY([publisher])
REFERENCES [dbo].[publishers] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[books] CHECK CONSTRAINT [FK_books_publishers]
GO
ALTER TABLE [dbo].[books_discounts]  WITH CHECK ADD  CONSTRAINT [FK_books_discounts_books] FOREIGN KEY([book_id])
REFERENCES [dbo].[books] ([Isbn])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[books_discounts] CHECK CONSTRAINT [FK_books_discounts_books]
GO
ALTER TABLE [dbo].[books_discounts]  WITH CHECK ADD  CONSTRAINT [FK_books_discounts_discounts] FOREIGN KEY([discount_id])
REFERENCES [dbo].[discounts] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[books_discounts] CHECK CONSTRAINT [FK_books_discounts_discounts]
GO
ALTER TABLE [dbo].[books_genres]  WITH CHECK ADD  CONSTRAINT [FK_books_genres_books] FOREIGN KEY([book_id])
REFERENCES [dbo].[books] ([Isbn])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[books_genres] CHECK CONSTRAINT [FK_books_genres_books]
GO
ALTER TABLE [dbo].[books_genres]  WITH CHECK ADD  CONSTRAINT [FK_books_genres_genres] FOREIGN KEY([genre_id])
REFERENCES [dbo].[genres] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[books_genres] CHECK CONSTRAINT [FK_books_genres_genres]
GO
ALTER TABLE [dbo].[customers_discounts]  WITH CHECK ADD  CONSTRAINT [FK_customers_discounts_customers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customers] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customers_discounts] CHECK CONSTRAINT [FK_customers_discounts_customers]
GO
ALTER TABLE [dbo].[customers_discounts]  WITH CHECK ADD  CONSTRAINT [FK_customers_discounts_discounts] FOREIGN KEY([discount_id])
REFERENCES [dbo].[discounts] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customers_discounts] CHECK CONSTRAINT [FK_customers_discounts_discounts]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_customers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customers] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_customers]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_discounts] FOREIGN KEY([discount_id])
REFERENCES [dbo].[discounts] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_discounts]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FK_orders_shippers] FOREIGN KEY([shipper])
REFERENCES [dbo].[shippers] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FK_orders_shippers]
GO
ALTER TABLE [dbo].[orders_details]  WITH CHECK ADD  CONSTRAINT [FK_orders_details_books] FOREIGN KEY([book_id])
REFERENCES [dbo].[books] ([Isbn])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orders_details] CHECK CONSTRAINT [FK_orders_details_books]
GO
ALTER TABLE [dbo].[orders_details]  WITH CHECK ADD  CONSTRAINT [FK_orders_details_orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[orders] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orders_details] CHECK CONSTRAINT [FK_orders_details_orders]
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD  CONSTRAINT [FK_reviews_books] FOREIGN KEY([book_id])
REFERENCES [dbo].[books] ([Isbn])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[reviews] CHECK CONSTRAINT [FK_reviews_books]
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD  CONSTRAINT [FK_reviews_customers] FOREIGN KEY([customer_id])
REFERENCES [dbo].[customers] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[reviews] CHECK CONSTRAINT [FK_reviews_customers]
GO
ALTER TABLE [dbo].[discounts]  WITH CHECK ADD CHECK  (([value]>=(0.00) AND [value]<=(1.00)))
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD CHECK  (([state]='AWAITING' OR [state]='PAID' OR [state]='SENT'))
GO
ALTER TABLE [dbo].[orders_details]  WITH CHECK ADD CHECK  (([amount]>(0)))
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD  CONSTRAINT [CK__reviews__review__4BAC3F29] CHECK  (([review]>=(0) AND [review]<=(10)))
GO
ALTER TABLE [dbo].[reviews] CHECK CONSTRAINT [CK__reviews__review__4BAC3F29]
GO
