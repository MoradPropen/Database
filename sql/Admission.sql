USE [Admission]
GO
/****** Object:  Table [dbo].[Application]    Script Date: 19/8/2019 11:32:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Application](
	[Id] [int] NOT NULL,
	[UnitName] [varchar](10) NOT NULL,
	[ApplicationId] [varchar](100) NOT NULL,
	[Roll] [varchar](max) NULL,
	[Position] [real] NULL,
	[TotalMarks] [real] NULL,
	[UserId] [varchar](200) NULL,
	[admissionTestResult] [varchar](200) NULL,
	[AllotedSubjectId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 19/8/2019 11:32:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[UnitName] [nchar](10) NOT NULL,
	[No_Of_Seat] [int] NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dept_Seat_Status]    Script Date: 19/8/2019 11:32:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dept_Seat_Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[No_Of_Alloted_Seat] [int] NULL,
	[Seat_Status] [bit] NULL,
	[DepartmentId] [int] NOT NULL,
 CONSTRAINT [PK_Dept_Seat_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubjectChoice]    Script Date: 19/8/2019 11:32:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubjectChoice](
	[Id] [int] NOT NULL,
	[Order] [varchar](50) NULL,
	[ApplicationId] [int] NOT NULL,
	[DepartmentId] [varchar](50) NULL,
 CONSTRAINT [PK_SubjectChoice] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Application]  WITH CHECK ADD  CONSTRAINT [FK_Application_Department1] FOREIGN KEY([AllotedSubjectId])
REFERENCES [dbo].[Department] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Application] CHECK CONSTRAINT [FK_Application_Department1]
GO
ALTER TABLE [dbo].[Dept_Seat_Status]  WITH CHECK ADD  CONSTRAINT [FK_Dept_Seat_Status_Department] FOREIGN KEY([DepartmentId])
REFERENCES [dbo].[Department] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Dept_Seat_Status] CHECK CONSTRAINT [FK_Dept_Seat_Status_Department]
GO
ALTER TABLE [dbo].[SubjectChoice]  WITH CHECK ADD  CONSTRAINT [FK_SubjectChoice_Application] FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[Application] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SubjectChoice] CHECK CONSTRAINT [FK_SubjectChoice_Application]
GO
