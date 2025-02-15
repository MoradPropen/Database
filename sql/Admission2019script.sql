USE [Admission2019]
GO
/****** Object:  Schema [Admission2019]    Script Date: 9/6/2019 4:53:17 PM ******/
CREATE SCHEMA [Admission2019]
GO
/****** Object:  Table [Admission2019].[__EFMigrationsHistory]    Script Date: 9/6/2019 4:53:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Admission2019].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Admission2019].[AdmissionTestMarks]    Script Date: 9/6/2019 4:53:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Admission2019].[AdmissionTestMarks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Subject] [nvarchar](500) NULL,
	[Marks] [real] NOT NULL,
	[ApplicationId] [int] NOT NULL,
 CONSTRAINT [PK_AdmissionTestMarks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Admission2019].[ApplicantAcdemicResults]    Script Date: 9/6/2019 4:53:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Admission2019].[ApplicantAcdemicResults](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Exam] [nvarchar](100) NOT NULL,
	[SubjectCode] [nvarchar](100) NOT NULL,
	[SubjectName] [nvarchar](100) NOT NULL,
	[Grade] [nvarchar](100) NOT NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_ApplicantAcdemicResults] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Admission2019].[Applications]    Script Date: 9/6/2019 4:53:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Admission2019].[Applications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UnitName] [nvarchar](200) NOT NULL,
	[ApplicationId] [nvarchar](200) NOT NULL,
	[PaymentDate] [datetime2](7) NULL,
	[PaymentAmount] [real] NOT NULL,
	[TransactionId] [nvarchar](200) NULL,
	[Roll] [nvarchar](max) NULL,
	[Center] [nvarchar](500) NULL,
	[Building] [nvarchar](500) NULL,
	[Floor] [nvarchar](500) NULL,
	[Room] [nvarchar](500) NULL,
	[AdmissionTestStatus] [nvarchar](500) NULL,
	[Position] [real] NULL,
	[TotalMarks] [real] NULL,
	[UserId] [nvarchar](450) NULL,
	[IsPaid] [bit] NOT NULL,
	[InvoiceNo] [nvarchar](200) NULL,
	[PaymentId] [nvarchar](200) NULL,
 CONSTRAINT [PK_Applications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Admission2019].[AspNetRoleClaims]    Script Date: 9/6/2019 4:53:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Admission2019].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Admission2019].[AspNetRoles]    Script Date: 9/6/2019 4:53:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Admission2019].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Admission2019].[AspNetUserClaims]    Script Date: 9/6/2019 4:53:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Admission2019].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Admission2019].[AspNetUserLogins]    Script Date: 9/6/2019 4:53:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Admission2019].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Admission2019].[AspNetUserRoles]    Script Date: 9/6/2019 4:53:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Admission2019].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Admission2019].[AspNetUsers]    Script Date: 9/6/2019 4:53:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Admission2019].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Father] [nvarchar](max) NULL,
	[Mother] [nvarchar](max) NULL,
	[Gender] [nvarchar](450) NULL,
	[Photo] [nvarchar](max) NULL,
	[QuotaName] [nvarchar](450) NULL,
	[Applied] [datetime2](7) NOT NULL,
	[ExamVersion] [nvarchar](450) NULL,
	[SSCBoard] [nvarchar](450) NULL,
	[SSCRoll] [nvarchar](max) NULL,
	[SSCYear] [nvarchar](max) NULL,
	[SSCRegNo] [nvarchar](max) NULL,
	[SSCGpa] [real] NULL,
	[SSCGpaExcept4th] [real] NULL,
	[SSCInstitutionName] [nvarchar](max) NULL,
	[SSCGroup] [nvarchar](max) NULL,
	[HSCBoard] [nvarchar](450) NULL,
	[HSCRoll] [nvarchar](max) NULL,
	[HSCYear] [nvarchar](max) NULL,
	[HSCRegNo] [nvarchar](max) NULL,
	[HSCGpa] [real] NULL,
	[HSCGpaExcept4th] [real] NULL,
	[HSCInstitutionName] [nvarchar](max) NULL,
	[HSCGroup] [nvarchar](max) NULL,
	[ConfirmationLastDate] [datetime2](7) NOT NULL,
	[IsConfirmed] [bit] NOT NULL,
	[ApplicantType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Admission2019].[AspNetUserTokens]    Script Date: 9/6/2019 4:53:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Admission2019].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [Admission2019].[SubjectChoices]    Script Date: 9/6/2019 4:53:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Admission2019].[SubjectChoices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Order] [int] NOT NULL,
	[ApplicationId] [int] NOT NULL,
	[SubjectId] [int] NOT NULL,
 CONSTRAINT [PK_SubjectChoices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Admission2019].[Subjects]    Script Date: 9/6/2019 4:53:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Admission2019].[Subjects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](200) NOT NULL,
	[Name] [nvarchar](200) NOT NULL,
	[UniteName] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Subjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 9/6/2019 4:53:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Id] [int] NOT NULL,
	[Code] [nvarchar](200) NOT NULL,
	[DepartmentName] [nvarchar](200) NOT NULL,
	[UnitName] [nvarchar](10) NULL,
	[TotalSeats] [int] NULL,
	[AllottedSeats] [int] NULL,
	[SeatStatus] [bit] NULL,
	[StartingPosition] [real] NULL,
	[EndingPosition] [real] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PassedApplicants]    Script Date: 9/6/2019 4:53:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PassedApplicants](
	[Id] [int] NOT NULL,
	[Position] [real] NULL,
	[ApplicationId] [nvarchar](200) NOT NULL,
	[Roll] [nvarchar](max) NULL,
	[UnitName] [nvarchar](200) NOT NULL,
	[TotalMarks] [real] NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Father] [nvarchar](max) NULL,
	[Photo] [nvarchar](max) NULL,
	[QuotaName] [nvarchar](450) NULL,
	[AllottedDepartment] [nvarchar](450) NULL,
	[UpdatedDate] [nvarchar](450) NULL,
	[IsAutoMigrationOff] [bit] NULL,
	[IsAdmissionCancelled] [bit] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [Admission2019].[Applications] ADD  DEFAULT ((0)) FOR [IsPaid]
GO
ALTER TABLE [Admission2019].[AspNetUsers] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [ConfirmationLastDate]
GO
ALTER TABLE [Admission2019].[AspNetUsers] ADD  DEFAULT ((0)) FOR [IsConfirmed]
GO
ALTER TABLE [Admission2019].[AspNetUsers] ADD  DEFAULT (N'') FOR [ApplicantType]
GO
ALTER TABLE [Admission2019].[SubjectChoices] ADD  DEFAULT ((0)) FOR [SubjectId]
GO
ALTER TABLE [Admission2019].[AdmissionTestMarks]  WITH CHECK ADD  CONSTRAINT [FK_AdmissionTestMarks_Applications_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [Admission2019].[Applications] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Admission2019].[AdmissionTestMarks] CHECK CONSTRAINT [FK_AdmissionTestMarks_Applications_ApplicationId]
GO
ALTER TABLE [Admission2019].[ApplicantAcdemicResults]  WITH CHECK ADD  CONSTRAINT [FK_ApplicantAcdemicResults_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [Admission2019].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Admission2019].[ApplicantAcdemicResults] CHECK CONSTRAINT [FK_ApplicantAcdemicResults_AspNetUsers_UserId]
GO
ALTER TABLE [Admission2019].[Applications]  WITH CHECK ADD  CONSTRAINT [FK_Applications_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [Admission2019].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Admission2019].[Applications] CHECK CONSTRAINT [FK_Applications_AspNetUsers_UserId]
GO
ALTER TABLE [Admission2019].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [Admission2019].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Admission2019].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [Admission2019].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [Admission2019].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Admission2019].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [Admission2019].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [Admission2019].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Admission2019].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [Admission2019].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [Admission2019].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Admission2019].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [Admission2019].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [Admission2019].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Admission2019].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [Admission2019].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [Admission2019].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Admission2019].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [Admission2019].[SubjectChoices]  WITH CHECK ADD  CONSTRAINT [FK_SubjectChoices_Applications_ApplicationId] FOREIGN KEY([ApplicationId])
REFERENCES [Admission2019].[Applications] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Admission2019].[SubjectChoices] CHECK CONSTRAINT [FK_SubjectChoices_Applications_ApplicationId]
GO
ALTER TABLE [Admission2019].[SubjectChoices]  WITH CHECK ADD  CONSTRAINT [FK_SubjectChoices_Subjects_SubjectId] FOREIGN KEY([SubjectId])
REFERENCES [Admission2019].[Subjects] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [Admission2019].[SubjectChoices] CHECK CONSTRAINT [FK_SubjectChoices_Subjects_SubjectId]
GO
