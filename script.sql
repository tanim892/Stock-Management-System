USE [master]
GO
/****** Object:  Database [Stock_DB]    Script Date: 8/20/2018 5:30:13 PM ******/
CREATE DATABASE [Stock_DB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Stock_DB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Stock_DB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Stock_DB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Stock_DB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Stock_DB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Stock_DB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Stock_DB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Stock_DB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Stock_DB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Stock_DB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Stock_DB] SET ARITHABORT OFF 
GO
ALTER DATABASE [Stock_DB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Stock_DB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Stock_DB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Stock_DB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Stock_DB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Stock_DB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Stock_DB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Stock_DB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Stock_DB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Stock_DB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Stock_DB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Stock_DB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Stock_DB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Stock_DB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Stock_DB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Stock_DB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Stock_DB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Stock_DB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Stock_DB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Stock_DB] SET  MULTI_USER 
GO
ALTER DATABASE [Stock_DB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Stock_DB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Stock_DB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Stock_DB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Stock_DB]
GO
/****** Object:  Table [dbo].[CategorySetup]    Script Date: 8/20/2018 5:30:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CategorySetup](
	[Sl] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CatagorySetup] PRIMARY KEY CLUSTERED 
(
	[Sl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Company]    Script Date: 8/20/2018 5:30:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[Sl] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED 
(
	[Sl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ItemSetup]    Script Date: 8/20/2018 5:30:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ItemSetup](
	[Sl] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](50) NULL,
	[CompanyName] [varchar](50) NULL,
	[ItemName] [varchar](50) NULL,
	[ReorderLevel] [int] NULL,
 CONSTRAINT [PK_ItemSetup] PRIMARY KEY CLUSTERED 
(
	[Sl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Login]    Script Date: 8/20/2018 5:30:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Login](
	[Username] [varchar](50) NOT NULL,
	[Eamil] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockIn]    Script Date: 8/20/2018 5:30:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockIn](
	[Sl] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NULL,
	[ItemId] [int] NULL,
	[AvailableQuantity] [int] NULL,
	[StockInQuantity] [int] NULL,
	[ReorderLevel] [int] NULL,
	[ItemName] [varchar](50) NULL,
 CONSTRAINT [PK_StockIn] PRIMARY KEY CLUSTERED 
(
	[Sl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockOut]    Script Date: 8/20/2018 5:30:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockOut](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ItemId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[StockOutQty] [int] NOT NULL,
	[ItemName] [varchar](100) NOT NULL,
	[StockStatus] [varchar](50) NOT NULL,
 CONSTRAINT [PK_StockOut_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[stockInView]    Script Date: 8/20/2018 5:30:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[stockInView] AS

SELECT CategoryName, CompanyName
FROM ItemSetup
GO
SET IDENTITY_INSERT [dbo].[CategorySetup] ON 

INSERT [dbo].[CategorySetup] ([Sl], [Name]) VALUES (1009, N'Soap')
INSERT [dbo].[CategorySetup] ([Sl], [Name]) VALUES (1010, N'TV')
INSERT [dbo].[CategorySetup] ([Sl], [Name]) VALUES (1011, N'Perfume')
SET IDENTITY_INSERT [dbo].[CategorySetup] OFF
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([Sl], [Name]) VALUES (1, N'Intel')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (18, N'Unilever')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (19, N'Tibet')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (20, N'Axe')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (21, N'Kool')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (22, N'Sony')
SET IDENTITY_INSERT [dbo].[Company] OFF
SET IDENTITY_INSERT [dbo].[ItemSetup] ON 

INSERT [dbo].[ItemSetup] ([Sl], [CategoryName], [CompanyName], [ItemName], [ReorderLevel]) VALUES (10, N'0', N'0', N'32 LED Smart TV', 0)
INSERT [dbo].[ItemSetup] ([Sl], [CategoryName], [CompanyName], [ItemName], [ReorderLevel]) VALUES (11, N'0', N'0', N'32 LED Smart TV', 0)
INSERT [dbo].[ItemSetup] ([Sl], [CategoryName], [CompanyName], [ItemName], [ReorderLevel]) VALUES (12, N'0', N'0', N'32 LED Smart TV', 0)
INSERT [dbo].[ItemSetup] ([Sl], [CategoryName], [CompanyName], [ItemName], [ReorderLevel]) VALUES (13, N'1010', N'22', N'32 LED Smart TV', 0)
SET IDENTITY_INSERT [dbo].[ItemSetup] OFF
INSERT [dbo].[Login] ([Username], [Eamil], [Password]) VALUES (N'Admin', N'admin@gmail.com', N'admin')
INSERT [dbo].[Login] ([Username], [Eamil], [Password]) VALUES (N'Hridoy', N'hridoy@gmail.com', N'hridoy')
ALTER TABLE [dbo].[StockIn]  WITH CHECK ADD  CONSTRAINT [FK_StockIn_Company1] FOREIGN KEY([CompanyId])
REFERENCES [dbo].[Company] ([Sl])
GO
ALTER TABLE [dbo].[StockIn] CHECK CONSTRAINT [FK_StockIn_Company1]
GO
ALTER TABLE [dbo].[StockIn]  WITH CHECK ADD  CONSTRAINT [FK_StockIn_ItemSetup] FOREIGN KEY([Sl])
REFERENCES [dbo].[ItemSetup] ([Sl])
GO
ALTER TABLE [dbo].[StockIn] CHECK CONSTRAINT [FK_StockIn_ItemSetup]
GO
ALTER TABLE [dbo].[StockOut]  WITH CHECK ADD  CONSTRAINT [FK_StockOut_Company] FOREIGN KEY([id])
REFERENCES [dbo].[Company] ([Sl])
GO
ALTER TABLE [dbo].[StockOut] CHECK CONSTRAINT [FK_StockOut_Company]
GO
ALTER TABLE [dbo].[StockOut]  WITH CHECK ADD  CONSTRAINT [FK_StockOut_ItemSetup] FOREIGN KEY([id])
REFERENCES [dbo].[ItemSetup] ([Sl])
GO
ALTER TABLE [dbo].[StockOut] CHECK CONSTRAINT [FK_StockOut_ItemSetup]
GO
USE [master]
GO
ALTER DATABASE [Stock_DB] SET  READ_WRITE 
GO
