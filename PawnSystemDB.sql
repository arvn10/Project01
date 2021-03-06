USE [PawnSystem]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserType]') AND type in (N'U'))
ALTER TABLE [dbo].[UserType] DROP CONSTRAINT IF EXISTS [DF__UserType__Modifi__0A9D95DB]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserType]') AND type in (N'U'))
ALTER TABLE [dbo].[UserType] DROP CONSTRAINT IF EXISTS [DF__UserType__Create__09A971A2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
ALTER TABLE [dbo].[User] DROP CONSTRAINT IF EXISTS [DF__User__ModifiedDa__0E6E26BF]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
ALTER TABLE [dbo].[User] DROP CONSTRAINT IF EXISTS [DF__User__CreatedDat__0D7A0286]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransactionItem]') AND type in (N'U'))
ALTER TABLE [dbo].[TransactionItem] DROP CONSTRAINT IF EXISTS [DF__tmp_ms_xx__Modif__18EBB532]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransactionItem]') AND type in (N'U'))
ALTER TABLE [dbo].[TransactionItem] DROP CONSTRAINT IF EXISTS [DF__tmp_ms_xx__Creat__17F790F9]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transaction]') AND type in (N'U'))
ALTER TABLE [dbo].[Transaction] DROP CONSTRAINT IF EXISTS [DF_Transaction_OldTransactionID]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ItemType]') AND type in (N'U'))
ALTER TABLE [dbo].[ItemType] DROP CONSTRAINT IF EXISTS [DF__ItemType__Modifi__787EE5A0]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ItemType]') AND type in (N'U'))
ALTER TABLE [dbo].[ItemType] DROP CONSTRAINT IF EXISTS [DF__ItemType__Create__1BC821DD]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Client]') AND type in (N'U'))
ALTER TABLE [dbo].[Client] DROP CONSTRAINT IF EXISTS [DF__Client__Modified__74AE54BC]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Client]') AND type in (N'U'))
ALTER TABLE [dbo].[Client] DROP CONSTRAINT IF EXISTS [DF__Client__CreatedD__73BA3083]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AuctionDate]') AND type in (N'U'))
ALTER TABLE [dbo].[AuctionDate] DROP CONSTRAINT IF EXISTS [DF__AuctionDa__Modif__70DDC3D8]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AuctionDate]') AND type in (N'U'))
ALTER TABLE [dbo].[AuctionDate] DROP CONSTRAINT IF EXISTS [DF__AuctionDa__Creat__6FE99F9F]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 2017-09-30 10:53:44 PM ******/
DROP TABLE IF EXISTS [dbo].[UserType]
GO
/****** Object:  Table [dbo].[User]    Script Date: 2017-09-30 10:53:44 PM ******/
DROP TABLE IF EXISTS [dbo].[User]
GO
/****** Object:  Table [dbo].[TransactionItem]    Script Date: 2017-09-30 10:53:44 PM ******/
DROP TABLE IF EXISTS [dbo].[TransactionItem]
GO
/****** Object:  Table [dbo].[Transaction]    Script Date: 2017-09-30 10:53:44 PM ******/
DROP TABLE IF EXISTS [dbo].[Transaction]
GO
/****** Object:  Table [dbo].[TicketType]    Script Date: 2017-09-30 10:53:44 PM ******/
DROP TABLE IF EXISTS [dbo].[TicketType]
GO
/****** Object:  Table [dbo].[ItemType]    Script Date: 2017-09-30 10:53:44 PM ******/
DROP TABLE IF EXISTS [dbo].[ItemType]
GO
/****** Object:  Table [dbo].[IdType]    Script Date: 2017-09-30 10:53:44 PM ******/
DROP TABLE IF EXISTS [dbo].[IdType]
GO
/****** Object:  Table [dbo].[Client]    Script Date: 2017-09-30 10:53:44 PM ******/
DROP TABLE IF EXISTS [dbo].[Client]
GO
/****** Object:  Table [dbo].[AuctionDate]    Script Date: 2017-09-30 10:53:44 PM ******/
DROP TABLE IF EXISTS [dbo].[AuctionDate]
GO
USE [master]
GO
/****** Object:  Database [PawnSystem]    Script Date: 2017-09-30 10:53:44 PM ******/
DROP DATABASE IF EXISTS [PawnSystem]
GO
/****** Object:  Database [PawnSystem]    Script Date: 2017-09-30 10:53:44 PM ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'PawnSystem')
BEGIN
CREATE DATABASE [PawnSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PawnSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\PawnSystem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'PawnSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.SQLEXPRESS\MSSQL\DATA\PawnSystem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
END

GO
ALTER DATABASE [PawnSystem] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PawnSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PawnSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PawnSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PawnSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PawnSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PawnSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [PawnSystem] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [PawnSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PawnSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PawnSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PawnSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PawnSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PawnSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PawnSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PawnSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PawnSystem] SET  ENABLE_BROKER 
GO
ALTER DATABASE [PawnSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PawnSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PawnSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PawnSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PawnSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PawnSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PawnSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PawnSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PawnSystem] SET  MULTI_USER 
GO
ALTER DATABASE [PawnSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PawnSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PawnSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PawnSystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PawnSystem] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PawnSystem] SET QUERY_STORE = OFF
GO
USE [PawnSystem]
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [PawnSystem]
GO
/****** Object:  Table [dbo].[AuctionDate]    Script Date: 2017-09-30 10:53:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AuctionDate]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AuctionDate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[ItemFrom] [date] NOT NULL,
	[ItemTo] [date] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Auction] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Client]    Script Date: 2017-09-30 10:53:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Client]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Client](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](255) NOT NULL,
	[ContactNumber] [nvarchar](50) NOT NULL,
	[ImagePath] [text] NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[IdType]    Script Date: 2017-09-30 10:53:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IdType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IdType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK__IdType__3214EC27E25F2CAD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ItemType]    Script Date: 2017-09-30 10:53:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ItemType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ItemType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[Interest] [int] NOT NULL,
	[Penalty] [int] NOT NULL,
	[AppraiseValue] [int] NULL,
	[WithServiceCharge] [nvarchar](5) NULL,
	[DaysToMature] [int] NOT NULL,
	[DaysToPenalty] [int] NOT NULL,
	[DaysToExpire] [int] NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_ItemType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TicketType]    Script Date: 2017-09-30 10:53:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TicketType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TicketType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TicketType] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_TicketType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Transaction]    Script Date: 2017-09-30 10:53:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Transaction]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Transaction](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OldTransactionID] [int] NULL,
	[ClientID] [int] NOT NULL,
	[ItemTypeID] [int] NOT NULL,
	[AuctionDateID] [int] NOT NULL,
	[IdTypeID] [int] NOT NULL,
	[TicketTypeID] [int] NOT NULL,
	[PawnTicketNumber] [nvarchar](50) NOT NULL,
	[TransactionType] [nvarchar](50) NOT NULL,
	[DateLoan] [date] NOT NULL,
	[DateMaturity] [date] NOT NULL,
	[DateExpiry] [date] NOT NULL,
	[DatePenalty] [date] NOT NULL,
	[DateClosed] [date] NULL,
	[Principal] [float] NOT NULL,
	[Interest] [float] NOT NULL,
	[Penalty] [float] NOT NULL,
	[AppraiseValue] [float] NOT NULL,
	[ServiceCharge] [float] NOT NULL,
	[NetProceed] [float] NOT NULL,
	[Status] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Transaction] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TransactionItem]    Script Date: 2017-09-30 10:53:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TransactionItem]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TransactionItem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TransactionID] [int] NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_TransactionItem] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[User]    Script Date: 2017-09-30 10:53:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserTypeID] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Status] [nvarchar](20) NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 2017-09-30 10:53:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserType]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[CreatedBy] [nvarchar](50) NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_UserType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[AuctionDate] ON 

INSERT [dbo].[AuctionDate] ([ID], [Date], [ItemFrom], [ItemTo], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, CAST(N'2017-04-30' AS Date), CAST(N'2017-04-01' AS Date), CAST(N'2017-04-29' AS Date), N'Service Account', CAST(N'2017-04-15T16:59:03.080' AS DateTime), N'Service Account', CAST(N'2017-04-26T15:58:35.290' AS DateTime))
INSERT [dbo].[AuctionDate] ([ID], [Date], [ItemFrom], [ItemTo], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, CAST(N'2017-04-26' AS Date), CAST(N'2017-04-04' AS Date), CAST(N'2017-04-27' AS Date), N'Service Account', CAST(N'2017-04-26T14:57:50.837' AS DateTime), N'Service Account', CAST(N'2017-04-26T15:58:35.290' AS DateTime))
INSERT [dbo].[AuctionDate] ([ID], [Date], [ItemFrom], [ItemTo], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, CAST(N'2017-04-26' AS Date), CAST(N'2017-04-01' AS Date), CAST(N'2017-04-25' AS Date), N'Service Account', CAST(N'2017-04-26T14:58:49.220' AS DateTime), N'Service Account', CAST(N'2017-04-26T15:58:35.290' AS DateTime))
INSERT [dbo].[AuctionDate] ([ID], [Date], [ItemFrom], [ItemTo], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, CAST(N'2017-05-31' AS Date), CAST(N'2017-05-01' AS Date), CAST(N'2017-05-30' AS Date), N'Service Account', CAST(N'2017-05-19T14:11:55.670' AS DateTime), N'Service Account', CAST(N'2017-05-19T14:12:09.410' AS DateTime))
INSERT [dbo].[AuctionDate] ([ID], [Date], [ItemFrom], [ItemTo], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7, CAST(N'2017-07-31' AS Date), CAST(N'2017-05-01' AS Date), CAST(N'2017-06-30' AS Date), N'Service Account', CAST(N'2017-05-28T03:49:24.633' AS DateTime), N'Service Account', CAST(N'2017-05-28T03:49:24.637' AS DateTime))
INSERT [dbo].[AuctionDate] ([ID], [Date], [ItemFrom], [ItemTo], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (8, CAST(N'2017-06-03' AS Date), CAST(N'2017-06-03' AS Date), CAST(N'2017-06-03' AS Date), N'Service Account', CAST(N'2017-06-03T03:28:41.733' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[AuctionDate] OFF
SET IDENTITY_INSERT [dbo].[Client] ON 

INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Address], [ContactNumber], [ImagePath], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'test client', N'test client', N'test client', N'test client', N'', N'Service Account', CAST(N'2017-05-05T15:27:22.410' AS DateTime), N'Service Account', CAST(N'2017-05-06T11:19:44.180' AS DateTime))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Address], [ContactNumber], [ImagePath], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'Test Client1', N'Test Client1', N'Test Address1', N'123456789', N'', N'Service Account', CAST(N'2017-05-06T09:18:26.997' AS DateTime), N'Service Account', CAST(N'2017-05-06T11:19:44.180' AS DateTime))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Address], [ContactNumber], [ImagePath], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'Customer', N'Customer', N'Qweqqrqrqq', N'12314111', N'', N'Service Account', CAST(N'2017-05-19T16:54:24.710' AS DateTime), N'Service Account', CAST(N'2017-05-06T11:19:44.180' AS DateTime))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Address], [ContactNumber], [ImagePath], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'Dennis', N'Vizcarra', N'3310 Lopez De Leon St, Tambo Paranque City', N'11111', N'', N'Service Account', CAST(N'2017-05-19T17:06:22.813' AS DateTime), N'Service Account', CAST(N'2017-05-06T11:19:44.180' AS DateTime))
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Address], [ContactNumber], [ImagePath], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, N'Test Client', N'Test Lastname', N'Test Address', N'', N'', N'Service Admin Account', CAST(N'2017-06-10T13:01:44.500' AS DateTime), NULL, NULL)
INSERT [dbo].[Client] ([ID], [FirstName], [LastName], [Address], [ContactNumber], [ImagePath], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (9, N'Camacho', N'Arvin Jenry', N'455 Mabini Padre Pio St. Caridad Cavite City', N'', N'', N'Service Admin Account', CAST(N'2017-07-17T01:50:38.460' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Client] OFF
SET IDENTITY_INSERT [dbo].[IdType] ON 

INSERT [dbo].[IdType] ([ID], [Type], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'Barangay Id', N'Service Account', CAST(N'2017-04-28T23:47:09.100' AS DateTime), N'1', CAST(N'2017-05-04T14:06:21.683' AS DateTime))
INSERT [dbo].[IdType] ([ID], [Type], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'SSS Id', N'Service Account', CAST(N'2017-04-28T23:48:38.823' AS DateTime), N'Service Account', CAST(N'2017-05-04T14:06:21.683' AS DateTime))
INSERT [dbo].[IdType] ([ID], [Type], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, N'Pag Ibig Id', N'Service Account', CAST(N'2017-04-28T23:49:48.367' AS DateTime), N'Service Account', CAST(N'2017-05-04T14:06:21.683' AS DateTime))
INSERT [dbo].[IdType] ([ID], [Type], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, N'Voters Id', N'Service Account', CAST(N'2017-04-28T23:50:38.760' AS DateTime), N'Service Account', CAST(N'2017-05-04T14:06:21.683' AS DateTime))
INSERT [dbo].[IdType] ([ID], [Type], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, N'Philhealth Id', N'Service Account', CAST(N'2017-04-28T23:51:21.360' AS DateTime), N'Service Account', CAST(N'2017-05-04T14:06:21.683' AS DateTime))
SET IDENTITY_INSERT [dbo].[IdType] OFF
SET IDENTITY_INSERT [dbo].[ItemType] ON 

INSERT [dbo].[ItemType] ([ID], [Description], [Interest], [Penalty], [AppraiseValue], [WithServiceCharge], [DaysToMature], [DaysToPenalty], [DaysToExpire], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'Jewelry', 3, 2, 10, N'Yes', 30, 30, 90, N'Service Account', CAST(N'2017-05-08T13:00:01.380' AS DateTime), NULL, CAST(N'2017-06-08T23:53:36.767' AS DateTime))
INSERT [dbo].[ItemType] ([ID], [Description], [Interest], [Penalty], [AppraiseValue], [WithServiceCharge], [DaysToMature], [DaysToPenalty], [DaysToExpire], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'Appliance', 7, 2, 10, N'No', 30, 120, 90, N'Service Account', CAST(N'2017-05-19T17:03:34.547' AS DateTime), NULL, CAST(N'2017-06-03T03:41:07.187' AS DateTime))
SET IDENTITY_INSERT [dbo].[ItemType] OFF
SET IDENTITY_INSERT [dbo].[TicketType] ON 

INSERT [dbo].[TicketType] ([ID], [TicketType], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'White', N'Service Account', CAST(N'2017-05-28T02:15:23.090' AS DateTime), N'Service Account', CAST(N'2017-05-28T02:16:05.803' AS DateTime))
INSERT [dbo].[TicketType] ([ID], [TicketType], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'Blue', N'Service Account', CAST(N'2017-05-28T02:16:11.130' AS DateTime), N'Service Account', CAST(N'2017-05-28T02:16:11.130' AS DateTime))
SET IDENTITY_INSERT [dbo].[TicketType] OFF
SET IDENTITY_INSERT [dbo].[Transaction] ON 

INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, 0, 9, 1, 8, 1, 1, N'0001', N'Pawn', CAST(N'2017-06-05' AS Date), CAST(N'2017-07-05' AS Date), CAST(N'2017-10-03' AS Date), CAST(N'2017-07-05' AS Date), CAST(N'2017-08-05' AS Date), 1000, 30, 0, 1100, 5, 965, N'Closed', N'Service Admin Account', CAST(N'2017-08-05T12:58:37.747' AS DateTime), N'Service Admin Account', CAST(N'2017-08-05T12:58:52.057' AS DateTime))
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, 1, 9, 1, 8, 1, 1, N'0001', N'Redeem', CAST(N'2017-06-05' AS Date), CAST(N'2017-07-05' AS Date), CAST(N'2017-10-03' AS Date), CAST(N'2017-07-05' AS Date), CAST(N'2017-08-05' AS Date), 1000, 70, 40, 1100, 5, 925, N'Closed', N'Service Admin Account', CAST(N'2017-08-05T12:58:54.770' AS DateTime), NULL, NULL)
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, 0, 9, 1, 8, 1, 1, N'0002', N'Pawn', CAST(N'2017-08-05' AS Date), CAST(N'2017-09-04' AS Date), CAST(N'2017-12-03' AS Date), CAST(N'2017-09-04' AS Date), CAST(N'2017-08-05' AS Date), 1000, 30, 0, 1100, 5, 965, N'Closed', N'Service Admin Account', CAST(N'2017-08-05T13:01:11.833' AS DateTime), N'Service Admin Account', CAST(N'2017-08-05T13:02:47.373' AS DateTime))
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, 3, 9, 1, 7, 1, 1, N'0003', N'Renew', CAST(N'2017-08-05' AS Date), CAST(N'2017-09-04' AS Date), CAST(N'2017-12-03' AS Date), CAST(N'2017-09-04' AS Date), CAST(N'2017-09-13' AS Date), 1000, 30, 0, 1100, 5, 965, N'Closed', N'Service Admin Account', CAST(N'2017-08-05T13:02:47.387' AS DateTime), N'Service Admin Account', CAST(N'2017-09-13T21:29:52.417' AS DateTime))
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, 0, 9, 1, 7, 1, 1, N'0004', N'Pawn', CAST(N'2017-04-05' AS Date), CAST(N'2017-05-05' AS Date), CAST(N'2017-08-03' AS Date), CAST(N'2017-05-05' AS Date), CAST(N'2017-09-13' AS Date), 1000, 30, 0, 1100, 5, 965, N'Closed', N'Service Admin Account', CAST(N'2017-08-05T14:30:03.410' AS DateTime), N'Service Admin Account', CAST(N'2017-09-13T21:29:46.287' AS DateTime))
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, 0, 9, 1, 7, 1, 1, N'0006', N'Pawn', CAST(N'2017-08-05' AS Date), CAST(N'2017-09-04' AS Date), CAST(N'2017-12-03' AS Date), CAST(N'2017-09-04' AS Date), CAST(N'2017-08-05' AS Date), 1500, 45, 0, 1650, 5, 1450, N'Closed', N'Service Admin Account', CAST(N'2017-08-05T19:16:14.783' AS DateTime), N'Service Admin Account', CAST(N'2017-08-05T19:16:17.787' AS DateTime))
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7, 6, 9, 1, 7, 1, 1, N'0006', N'Redeem', CAST(N'2017-08-05' AS Date), CAST(N'2017-09-04' AS Date), CAST(N'2017-12-03' AS Date), CAST(N'2017-09-04' AS Date), CAST(N'2017-08-05' AS Date), 1500, 45, 0, 1650, 5, 1450, N'Closed', N'Service Admin Account', CAST(N'2017-08-05T19:16:17.797' AS DateTime), NULL, NULL)
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (8, 0, 9, 1, 7, 1, 1, N'0010', N'Pawn', CAST(N'2017-09-04' AS Date), CAST(N'2017-10-04' AS Date), CAST(N'2018-01-02' AS Date), CAST(N'2017-10-04' AS Date), CAST(N'2017-09-04' AS Date), 1500, 45, 0, 1650, 5, 1450, N'Closed', N'Service Admin Account', CAST(N'2017-09-04T17:36:18.707' AS DateTime), N'Service Admin Account', CAST(N'2017-09-04T17:52:19.770' AS DateTime))
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (9, 8, 9, 1, 7, 1, 1, N'0011', N'Renew', CAST(N'2017-09-04' AS Date), CAST(N'2017-10-04' AS Date), CAST(N'2018-01-02' AS Date), CAST(N'2017-10-04' AS Date), CAST(N'2017-09-04' AS Date), 1500, 45, 0, 1650, 5, 1450, N'Closed', N'Service Admin Account', CAST(N'2017-09-04T17:52:19.793' AS DateTime), N'Service Admin Account', CAST(N'2017-09-04T17:56:28.537' AS DateTime))
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (10, 9, 9, 1, 7, 1, 1, N'0012', N'Renew', CAST(N'2017-09-04' AS Date), CAST(N'2017-10-04' AS Date), CAST(N'2018-01-02' AS Date), CAST(N'2017-10-04' AS Date), CAST(N'2017-09-04' AS Date), 1500, 45, 0, 1650, 5, 1450, N'Closed', N'Service Admin Account', CAST(N'2017-09-04T17:56:28.543' AS DateTime), N'Service Admin Account', CAST(N'2017-09-04T18:01:42.233' AS DateTime))
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (11, 10, 9, 1, 7, 1, 1, N'0013', N'Renew', CAST(N'2017-09-04' AS Date), CAST(N'2017-10-04' AS Date), CAST(N'2018-01-02' AS Date), CAST(N'2017-10-04' AS Date), CAST(N'2017-09-04' AS Date), 1500, 45, 0, 1650, 5, 1450, N'Closed', N'Service Admin Account', CAST(N'2017-09-04T18:01:42.240' AS DateTime), N'Service Admin Account', CAST(N'2017-09-04T18:07:12.623' AS DateTime))
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (12, 11, 9, 1, 7, 1, 1, N'0014', N'Renew', CAST(N'2017-09-04' AS Date), CAST(N'2017-10-04' AS Date), CAST(N'2018-01-02' AS Date), CAST(N'2017-10-04' AS Date), CAST(N'2017-09-04' AS Date), 1500, 45, 0, 1650, 5, 1450, N'Closed', N'Service Admin Account', CAST(N'2017-09-04T18:07:12.627' AS DateTime), N'Service Admin Account', CAST(N'2017-09-04T18:12:06.627' AS DateTime))
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (13, 12, 9, 1, 7, 1, 1, N'0015', N'Renew', CAST(N'2017-09-04' AS Date), CAST(N'2017-10-04' AS Date), CAST(N'2018-01-02' AS Date), CAST(N'2017-10-04' AS Date), CAST(N'2017-09-04' AS Date), 1500, 45, 0, 1650, 5, 1450, N'Closed', N'Service Admin Account', CAST(N'2017-09-04T18:12:06.637' AS DateTime), N'Service Admin Account', CAST(N'2017-09-04T18:16:38.533' AS DateTime))
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (14, 13, 9, 1, 7, 1, 1, N'0016', N'Renew', CAST(N'2017-09-04' AS Date), CAST(N'2017-10-04' AS Date), CAST(N'2018-01-02' AS Date), CAST(N'2017-10-04' AS Date), CAST(N'2017-09-04' AS Date), 1500, 45, 0, 1650, 5, 1450, N'Closed', N'Service Admin Account', CAST(N'2017-09-04T18:16:38.540' AS DateTime), N'Service Admin Account', CAST(N'2017-09-04T18:47:35.047' AS DateTime))
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (15, 14, 9, 1, 7, 1, 1, N'0017', N'Renew', CAST(N'2017-09-04' AS Date), CAST(N'2017-10-04' AS Date), CAST(N'2018-01-02' AS Date), CAST(N'2017-10-04' AS Date), CAST(N'2017-09-13' AS Date), 1500, 45, 0, 1650, 5, 1450, N'Closed', N'Service Admin Account', CAST(N'2017-09-04T18:47:35.060' AS DateTime), N'Service Admin Account', CAST(N'2017-09-13T21:29:33.773' AS DateTime))
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (16, 15, 9, 1, 7, 1, 1, N'0017', N'Redeem', CAST(N'2017-09-04' AS Date), CAST(N'2017-10-04' AS Date), CAST(N'2018-01-02' AS Date), CAST(N'2017-10-04' AS Date), CAST(N'2017-09-13' AS Date), 1500, 45, 0, 1650, 5, 1450, N'Closed', N'Service Admin Account', CAST(N'2017-09-13T21:29:33.803' AS DateTime), NULL, NULL)
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (17, 5, 9, 1, 7, 1, 1, N'0004', N'Redeem', CAST(N'2017-04-05' AS Date), CAST(N'2017-05-05' AS Date), CAST(N'2017-08-03' AS Date), CAST(N'2017-05-05' AS Date), CAST(N'2017-09-13' AS Date), 1000, 130, 100, 1100, 5, 865, N'Closed', N'Service Admin Account', CAST(N'2017-09-13T21:29:46.290' AS DateTime), NULL, NULL)
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (18, 4, 9, 1, 7, 1, 1, N'0003', N'Redeem', CAST(N'2017-08-05' AS Date), CAST(N'2017-09-04' AS Date), CAST(N'2017-12-03' AS Date), CAST(N'2017-09-04' AS Date), CAST(N'2017-09-13' AS Date), 1000, 50, 20, 1100, 5, 945, N'Closed', N'Service Admin Account', CAST(N'2017-09-13T21:29:52.423' AS DateTime), NULL, NULL)
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (19, 0, 9, 1, 7, 1, 1, N'0020', N'Pawn', CAST(N'2017-09-13' AS Date), CAST(N'2017-10-13' AS Date), CAST(N'2018-01-11' AS Date), CAST(N'2017-10-13' AS Date), CAST(N'2017-09-13' AS Date), 1500, 45, 0, 1650, 5, 1450, N'Closed', N'Service Admin Account', CAST(N'2017-09-13T21:30:28.157' AS DateTime), N'Service Admin Account', CAST(N'2017-09-13T21:31:03.720' AS DateTime))
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (20, 19, 9, 1, 7, 1, 1, N'0020', N'Redeem', CAST(N'2017-09-13' AS Date), CAST(N'2017-10-13' AS Date), CAST(N'2018-01-11' AS Date), CAST(N'2017-10-13' AS Date), CAST(N'2017-09-13' AS Date), 1500, 45, 0, 1650, 5, 1450, N'Closed', N'Service Admin Account', CAST(N'2017-09-13T21:31:03.733' AS DateTime), NULL, NULL)
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (21, 0, 9, 1, 8, 1, 1, N'0026', N'Pawn', CAST(N'2017-09-06' AS Date), CAST(N'2017-10-06' AS Date), CAST(N'2018-01-04' AS Date), CAST(N'2017-10-06' AS Date), CAST(N'2017-09-13' AS Date), 1500, 45, 0, 1650, 5, 1450, N'Closed', N'Service Admin Account', CAST(N'2017-09-13T21:32:54.067' AS DateTime), N'Service Admin Account', CAST(N'2017-09-13T21:40:44.263' AS DateTime))
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (22, 21, 9, 1, 8, 1, 1, N'0026', N'Redeem', CAST(N'2017-09-06' AS Date), CAST(N'2017-10-06' AS Date), CAST(N'2018-01-04' AS Date), CAST(N'2017-10-06' AS Date), CAST(N'2017-09-13' AS Date), 1500, 45, 0, 1650, 5, 1450, N'Closed', N'Service Admin Account', CAST(N'2017-09-13T21:40:44.283' AS DateTime), NULL, NULL)
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (23, 0, 9, 1, 8, 1, 1, N'0027', N'Pawn', CAST(N'2017-09-06' AS Date), CAST(N'2017-10-06' AS Date), CAST(N'2018-01-04' AS Date), CAST(N'2017-10-06' AS Date), CAST(N'2017-09-13' AS Date), 1500, 45, 0, 1650, 5, 1450, N'Closed', N'Service Admin Account', CAST(N'2017-09-13T21:46:44.673' AS DateTime), N'Service Admin Account', CAST(N'2017-09-13T21:47:24.850' AS DateTime))
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (24, 23, 9, 1, 7, 1, 1, N'0028', N'Renew', CAST(N'2017-09-13' AS Date), CAST(N'2017-10-13' AS Date), CAST(N'2018-01-11' AS Date), CAST(N'2017-10-13' AS Date), CAST(N'2017-10-01' AS Date), 1500, 45, 0, 1650, 5, 1450, N'Closed', N'Service Admin Account', CAST(N'2017-09-13T21:47:24.860' AS DateTime), N'Service Admin Account', CAST(N'2017-09-13T22:00:21.353' AS DateTime))
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (25, 25, 9, 1, 7, 1, 1, N'0029', N'Renew', CAST(N'2017-09-13' AS Date), CAST(N'2017-10-13' AS Date), CAST(N'2018-01-11' AS Date), CAST(N'2017-10-13' AS Date), NULL, 1500, 45, 0, 1650, 5, 1450, N'Open', N'Service Admin Account', CAST(N'2017-09-13T22:00:21.373' AS DateTime), N'Service Admin Account', CAST(N'2017-09-13T22:26:24.777' AS DateTime))
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (26, 0, 9, 1, 7, 1, 1, N'00052', N'Pawn', CAST(N'2017-01-01' AS Date), CAST(N'2017-01-31' AS Date), CAST(N'2017-05-01' AS Date), CAST(N'2017-01-31' AS Date), NULL, 1560, 46.8, 0, 1716, 5, 1508.2, N'Expired', N'Service Admin Account', CAST(N'2017-09-16T14:40:26.247' AS DateTime), NULL, NULL)
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (27, 0, 9, 1, 7, 1, 1, N'0032', N'Pawn', CAST(N'2017-09-16' AS Date), CAST(N'2017-10-16' AS Date), CAST(N'2018-01-14' AS Date), CAST(N'2017-10-16' AS Date), CAST(N'2017-09-16' AS Date), 1500, 45, 0, 1650, 5, 1450, N'Closed', N'Service Admin Account', CAST(N'2017-09-16T17:24:09.653' AS DateTime), N'Service Admin Account', CAST(N'2017-09-16T17:24:14.827' AS DateTime))
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (28, 27, 9, 1, 7, 1, 1, N'0032', N'Redeem', CAST(N'2017-09-16' AS Date), CAST(N'2017-10-16' AS Date), CAST(N'2018-01-14' AS Date), CAST(N'2017-10-16' AS Date), CAST(N'2017-09-16' AS Date), 1500, 45, 0, 1650, 5, 1450, N'Closed', N'Service Admin Account', CAST(N'2017-09-16T17:24:14.837' AS DateTime), NULL, NULL)
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (29, 0, 9, 1, 7, 1, 1, N'0034', N'Pawn', CAST(N'2017-09-16' AS Date), CAST(N'2017-10-16' AS Date), CAST(N'2018-01-14' AS Date), CAST(N'2017-10-16' AS Date), CAST(N'2017-09-16' AS Date), 1500, 45, 0, 1650, 5, 1450, N'Closed', N'Service Admin Account', CAST(N'2017-09-16T17:30:09.663' AS DateTime), N'Service Admin Account', CAST(N'2017-09-16T17:30:26.227' AS DateTime))
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (30, 29, 9, 1, 7, 1, 1, N'0035', N'Renew', CAST(N'2017-09-16' AS Date), CAST(N'2017-10-16' AS Date), CAST(N'2018-01-14' AS Date), CAST(N'2017-10-16' AS Date), CAST(N'2017-09-16' AS Date), 1500, 45, 0, 1650, 5, 1450, N'Closed', N'Service Admin Account', CAST(N'2017-09-16T17:30:26.263' AS DateTime), N'Service Admin Account', CAST(N'2017-09-16T17:31:26.240' AS DateTime))
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (31, 30, 9, 1, 7, 1, 1, N'0035', N'Redeem', CAST(N'2017-09-16' AS Date), CAST(N'2017-10-16' AS Date), CAST(N'2018-01-14' AS Date), CAST(N'2017-10-16' AS Date), CAST(N'2017-09-16' AS Date), 1500, 45, 0, 1650, 5, 1450, N'Closed', N'Service Admin Account', CAST(N'2017-09-16T17:31:26.297' AS DateTime), NULL, NULL)
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (32, 0, 9, 1, 8, 1, 1, N'00045', N'Pawn', CAST(N'2017-09-16' AS Date), CAST(N'2017-10-16' AS Date), CAST(N'2018-01-14' AS Date), CAST(N'2017-10-16' AS Date), CAST(N'2017-09-16' AS Date), 1500, 45, 0, 1650, 5, 1450, N'Closed', N'Service Admin Account', CAST(N'2017-09-16T18:30:38.657' AS DateTime), N'Service Admin Account', CAST(N'2017-09-16T18:31:00.090' AS DateTime))
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (33, 32, 9, 1, 8, 1, 1, N'00045', N'Redeem', CAST(N'2017-09-16' AS Date), CAST(N'2017-10-16' AS Date), CAST(N'2018-01-14' AS Date), CAST(N'2017-10-16' AS Date), CAST(N'2017-09-16' AS Date), 1500, 45, 0, 1650, 5, 1450, N'Closed', N'Service Admin Account', CAST(N'2017-09-16T18:31:00.130' AS DateTime), NULL, NULL)
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (34, 0, 9, 1, 7, 1, 1, N'0039', N'Pawn', CAST(N'2017-09-16' AS Date), CAST(N'2017-10-16' AS Date), CAST(N'2018-01-14' AS Date), CAST(N'2017-10-16' AS Date), CAST(N'2017-09-16' AS Date), 1500, 45, 0, 1650, 5, 1450, N'Closed', N'Service Admin Account', CAST(N'2017-09-16T18:44:24.767' AS DateTime), N'Service Admin Account', CAST(N'2017-09-16T18:44:36.410' AS DateTime))
INSERT [dbo].[Transaction] ([ID], [OldTransactionID], [ClientID], [ItemTypeID], [AuctionDateID], [IdTypeID], [TicketTypeID], [PawnTicketNumber], [TransactionType], [DateLoan], [DateMaturity], [DateExpiry], [DatePenalty], [DateClosed], [Principal], [Interest], [Penalty], [AppraiseValue], [ServiceCharge], [NetProceed], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (35, 34, 9, 1, 7, 1, 1, N'0040', N'Renew', CAST(N'2017-09-16' AS Date), CAST(N'2017-10-16' AS Date), CAST(N'2018-01-14' AS Date), CAST(N'2017-10-16' AS Date), NULL, 1500, 45, 0, 1650, 5, 1450, N'Open', N'Service Admin Account', CAST(N'2017-09-16T18:44:36.440' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Transaction] OFF
SET IDENTITY_INSERT [dbo].[TransactionItem] ON 

INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, 1, N'test', N'Service Admin Account', CAST(N'2017-08-05T12:58:37.777' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, 2, N'test', N'Service Admin Account', CAST(N'2017-08-05T12:58:54.777' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, 3, N'test', N'Service Admin Account', CAST(N'2017-08-05T13:01:11.860' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (4, 4, N'test', N'Service Admin Account', CAST(N'2017-08-05T13:02:47.393' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (5, 5, N'test', N'Service Admin Account', CAST(N'2017-08-05T14:30:03.440' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (6, 6, N'test', N'Service Admin Account', CAST(N'2017-08-05T19:16:14.820' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (7, 7, N'test', N'Service Admin Account', CAST(N'2017-08-05T19:16:17.800' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (8, 8, N'asdasdasdasdasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-04T17:36:18.743' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (9, 8, N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-04T17:36:18.750' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (10, 8, N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-04T17:36:18.753' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (11, 9, N'asdasdasdasdasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-04T17:52:19.803' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (12, 9, N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-04T17:52:19.810' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (13, 9, N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-04T17:52:19.810' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (14, 10, N'asdasdasdasdasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-04T17:56:28.547' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (15, 10, N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-04T17:56:28.553' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (16, 10, N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-04T17:56:28.553' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (17, 11, N'asdasdasdasdasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-04T18:01:42.247' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (18, 11, N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-04T18:01:42.250' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (19, 11, N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-04T18:01:42.250' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (20, 12, N'asdasdasdasdasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-04T18:07:12.633' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (21, 12, N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-04T18:07:12.637' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (22, 12, N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-04T18:07:12.637' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (23, 13, N'asdasdasdasdasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-04T18:12:06.650' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (24, 13, N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-04T18:12:06.660' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (25, 13, N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-04T18:12:06.663' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (26, 14, N'asdasdasdasdasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-04T18:16:38.550' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (27, 14, N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-04T18:16:38.557' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (28, 14, N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-04T18:16:38.560' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (29, 15, N'asdasdasdasdasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-04T18:47:35.067' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (30, 15, N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-04T18:47:35.073' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (31, 15, N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-04T18:47:35.073' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (32, 16, N'asdasdasdasdasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-13T21:29:33.823' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (33, 16, N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-13T21:29:33.830' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (34, 16, N'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', N'Service Admin Account', CAST(N'2017-09-13T21:29:33.830' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (35, 17, N'test', N'Service Admin Account', CAST(N'2017-09-13T21:29:46.293' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (36, 18, N'test', N'Service Admin Account', CAST(N'2017-09-13T21:29:52.430' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (37, 19, N'test', N'Service Admin Account', CAST(N'2017-09-13T21:30:28.160' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (38, 20, N'test', N'Service Admin Account', CAST(N'2017-09-13T21:31:03.753' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (39, 21, N'qweqweqwe', N'Service Admin Account', CAST(N'2017-09-13T21:32:54.093' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (40, 22, N'qweqweqwe', N'Service Admin Account', CAST(N'2017-09-13T21:40:44.293' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (41, 23, N'test123', N'Service Admin Account', CAST(N'2017-09-13T21:46:44.757' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (42, 24, N'test123', N'Service Admin Account', CAST(N'2017-09-13T21:47:24.860' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (43, 25, N'test123', N'Service Admin Account', CAST(N'2017-09-13T22:00:21.380' AS DateTime), N'Service Admin Account', CAST(N'2017-09-13T22:26:24.817' AS DateTime))
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (44, 26, N'asd', N'Service Admin Account', CAST(N'2017-09-16T14:40:26.317' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (45, 27, N'test', N'Service Admin Account', CAST(N'2017-09-16T17:24:09.680' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (46, 28, N'test', N'Service Admin Account', CAST(N'2017-09-16T17:24:14.843' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (47, 29, N'test', N'Service Admin Account', CAST(N'2017-09-16T17:30:09.713' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (48, 30, N'test', N'Service Admin Account', CAST(N'2017-09-16T17:30:26.267' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (49, 31, N'test', N'Service Admin Account', CAST(N'2017-09-16T17:31:26.310' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (50, 32, N'test', N'Service Admin Account', CAST(N'2017-09-16T18:30:38.743' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (51, 33, N'test', N'Service Admin Account', CAST(N'2017-09-16T18:31:00.133' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (52, 34, N'test', N'Service Admin Account', CAST(N'2017-09-16T18:44:24.830' AS DateTime), NULL, NULL)
INSERT [dbo].[TransactionItem] ([ID], [TransactionID], [Description], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (53, 35, N'test', N'Service Admin Account', CAST(N'2017-09-16T18:44:36.440' AS DateTime), NULL, NULL)
SET IDENTITY_INSERT [dbo].[TransactionItem] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [UserTypeID], [UserName], [Password], [FirstName], [LastName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, 1, N'admin', N'password', N'Service Admin', N'Account', N'Active', N'Service Account', CAST(N'2017-04-17T10:12:50.460' AS DateTime), N'Service Admin Account', CAST(N'2017-06-03T10:59:19.530' AS DateTime))
INSERT [dbo].[User] ([ID], [UserTypeID], [UserName], [Password], [FirstName], [LastName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, 2, N'user', N'P@ssword', N'Service User', N'Account', N'Not Active', N'Service Account', CAST(N'2017-04-17T13:12:11.743' AS DateTime), N'Service Admin Account', CAST(N'2017-04-27T09:59:12.917' AS DateTime))
INSERT [dbo].[User] ([ID], [UserTypeID], [UserName], [Password], [FirstName], [LastName], [Status], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (3, 1, N'test', N'password', N'test account', N'test account', N'Active', N'Service Account', CAST(N'2017-04-17T13:13:33.430' AS DateTime), N'Service Admin Account', CAST(N'2017-04-17T13:13:33.430' AS DateTime))
SET IDENTITY_INSERT [dbo].[User] OFF
SET IDENTITY_INSERT [dbo].[UserType] ON 

INSERT [dbo].[UserType] ([ID], [Type], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (1, N'Administrator', N'Service Account', CAST(N'2017-04-17T10:11:32.387' AS DateTime), N'Service Account', CAST(N'2017-04-17T10:11:53.163' AS DateTime))
INSERT [dbo].[UserType] ([ID], [Type], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (2, N'User', N'Service Account', CAST(N'2017-04-17T10:11:53.163' AS DateTime), N'Service Account', CAST(N'2017-04-17T10:11:53.163' AS DateTime))
SET IDENTITY_INSERT [dbo].[UserType] OFF
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__AuctionDa__Creat__6FE99F9F]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AuctionDate] ADD  CONSTRAINT [DF__AuctionDa__Creat__6FE99F9F]  DEFAULT (getdate()) FOR [CreatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__AuctionDa__Modif__70DDC3D8]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[AuctionDate] ADD  CONSTRAINT [DF__AuctionDa__Modif__70DDC3D8]  DEFAULT (getdate()) FOR [ModifiedDate]
END

GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Client__CreatedD__73BA3083]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Client] ADD  CONSTRAINT [DF__Client__CreatedD__73BA3083]  DEFAULT (getdate()) FOR [CreatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__Client__Modified__74AE54BC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Client] ADD  CONSTRAINT [DF__Client__Modified__74AE54BC]  DEFAULT (getdate()) FOR [ModifiedDate]
END

GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__ItemType__Create__1BC821DD]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ItemType] ADD  CONSTRAINT [DF__ItemType__Create__1BC821DD]  DEFAULT (getdate()) FOR [CreatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__ItemType__Modifi__787EE5A0]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[ItemType] ADD  CONSTRAINT [DF__ItemType__Modifi__787EE5A0]  DEFAULT (getdate()) FOR [ModifiedDate]
END

GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Transaction_OldTransactionID]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Transaction] ADD  CONSTRAINT [DF_Transaction_OldTransactionID]  DEFAULT ((0)) FOR [OldTransactionID]
END

GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__tmp_ms_xx__Creat__17F790F9]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TransactionItem] ADD  CONSTRAINT [DF__tmp_ms_xx__Creat__17F790F9]  DEFAULT (getdate()) FOR [CreatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__tmp_ms_xx__Modif__18EBB532]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[TransactionItem] ADD  CONSTRAINT [DF__tmp_ms_xx__Modif__18EBB532]  DEFAULT (getdate()) FOR [ModifiedDate]
END

GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__User__CreatedDat__0D7A0286]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF__User__CreatedDat__0D7A0286]  DEFAULT (getdate()) FOR [CreatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__User__ModifiedDa__0E6E26BF]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF__User__ModifiedDa__0E6E26BF]  DEFAULT (getdate()) FOR [ModifiedDate]
END

GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__UserType__Create__09A971A2]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[UserType] ADD  CONSTRAINT [DF__UserType__Create__09A971A2]  DEFAULT (getdate()) FOR [CreatedDate]
END

GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__UserType__Modifi__0A9D95DB]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[UserType] ADD  CONSTRAINT [DF__UserType__Modifi__0A9D95DB]  DEFAULT (getdate()) FOR [ModifiedDate]
END

GO
USE [master]
GO
ALTER DATABASE [PawnSystem] SET  READ_WRITE 
GO
