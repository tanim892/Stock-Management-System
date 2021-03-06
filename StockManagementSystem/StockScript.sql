CREATE TABLE [dbo].[CategorySetup](
	[Sl] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CatagorySetup] PRIMARY KEY CLUSTERED 
(
	[Sl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Company]    Script Date: 5/4/2018 9:31:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[ItemSetup]    Script Date: 5/4/2018 9:31:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  Table [dbo].[StockIn]    Script Date: 5/4/2018 9:31:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockIn](
	[Sl] [int] IDENTITY(1,1) NOT NULL,
	[CompanyId] [int] NULL,
	[ItemId] [int] NULL,
	[AvailableQuantity] [int] NULL,
	[StockInQuantity] [int] NULL,
	[ItemName] [varchar](50) NULL,
 CONSTRAINT [PK_StockIn] PRIMARY KEY CLUSTERED 
(
	[Sl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StockOut]    Script Date: 5/4/2018 9:31:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StockOut](
	[ItemId] [int] NOT NULL,
	[CompanyId] [int] NOT NULL,
	[StockOutQty] [int] NOT NULL,
	[Id] [int] NOT NULL,
	[ItemName] [varchar](100) NOT NULL,
	[StockStatus] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[CategorySetup] ON 

INSERT [dbo].[CategorySetup] ([Sl], [Name]) VALUES (1, N'Desktops')
INSERT [dbo].[CategorySetup] ([Sl], [Name]) VALUES (2, N'Notebook')
INSERT [dbo].[CategorySetup] ([Sl], [Name]) VALUES (4, N'Netbook-Mini')
INSERT [dbo].[CategorySetup] ([Sl], [Name]) VALUES (5, N'NotePad')
INSERT [dbo].[CategorySetup] ([Sl], [Name]) VALUES (6, N'USB Removal')
INSERT [dbo].[CategorySetup] ([Sl], [Name]) VALUES (7, N'USB HDD')
INSERT [dbo].[CategorySetup] ([Sl], [Name]) VALUES (8, N'USB Accesories')
INSERT [dbo].[CategorySetup] ([Sl], [Name]) VALUES (9, N'Desktop Accessories')
INSERT [dbo].[CategorySetup] ([Sl], [Name]) VALUES (1001, N'Mr.Mia')
INSERT [dbo].[CategorySetup] ([Sl], [Name]) VALUES (1002, N'Mr.JHG')
INSERT [dbo].[CategorySetup] ([Sl], [Name]) VALUES (1003, N'Mr.Xaterer')
INSERT [dbo].[CategorySetup] ([Sl], [Name]) VALUES (1004, N'4566')
INSERT [dbo].[CategorySetup] ([Sl], [Name]) VALUES (1005, N'Jahangir vai')
SET IDENTITY_INSERT [dbo].[CategorySetup] OFF
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([Sl], [Name]) VALUES (1, N'Intel')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (2, N'Foxconn')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (3, N'Gigabyte')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (4, N'Samsung')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (5, N'MSI')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (6, N'Apacer')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (7, N'Transcend')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (8, N'Esonic')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (9, N'Bio-Star')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (10, N'HP')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (11, N'Apple')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (12, N'Dell')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (13, N'Fujitsu')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (14, N'Acer')
INSERT [dbo].[Company] ([Sl], [Name]) VALUES (15, N'ASUS')
SET IDENTITY_INSERT [dbo].[Company] OFF
SET IDENTITY_INSERT [dbo].[ItemSetup] ON 

INSERT [dbo].[ItemSetup] ([Sl], [CategoryName], [CompanyName], [ItemName], [ReorderLevel]) VALUES (1, N'1', N'5', N'Slim', 2)
INSERT [dbo].[ItemSetup] ([Sl], [CategoryName], [CompanyName], [ItemName], [ReorderLevel]) VALUES (2, N'2', N'10', N'Pavilion G6', 10)
INSERT [dbo].[ItemSetup] ([Sl], [CategoryName], [CompanyName], [ItemName], [ReorderLevel]) VALUES (3, N'7', N'4', N'Ultra', 2)
INSERT [dbo].[ItemSetup] ([Sl], [CategoryName], [CompanyName], [ItemName], [ReorderLevel]) VALUES (4, N'9', N'7', N'Keyboard', 100)
SET IDENTITY_INSERT [dbo].[ItemSetup] OFF
SET IDENTITY_INSERT [dbo].[StockIn] ON 

INSERT [dbo].[StockIn] ([Sl], [CompanyId], [ItemId], [AvailableQuantity], [StockInQuantity], [ItemName]) VALUES (1, 4, 3, 1, 2, N'Ultra')
INSERT [dbo].[StockIn] ([Sl], [CompanyId], [ItemId], [AvailableQuantity], [StockInQuantity], [ItemName]) VALUES (2, 10, 2, 24, 2, N'Pavilion G6')
INSERT [dbo].[StockIn] ([Sl], [CompanyId], [ItemId], [AvailableQuantity], [StockInQuantity], [ItemName]) VALUES (3, 5, 1, 90, 100, N'Slim')
SET IDENTITY_INSERT [dbo].[StockIn] OFF
INSERT [dbo].[StockOut] ([ItemId], [CompanyId], [StockOutQty], [Id], [ItemName], [StockStatus]) VALUES (3, 4, 10, 1, N'Ultra', N'Sell')
INSERT [dbo].[StockOut] ([ItemId], [CompanyId], [StockOutQty], [Id], [ItemName], [StockStatus]) VALUES (3, 4, 10, 1, N'Ultra', N'Sell')
INSERT [dbo].[StockOut] ([ItemId], [CompanyId], [StockOutQty], [Id], [ItemName], [StockStatus]) VALUES (3, 4, 10, 1, N'Ultra', N'Sell')
INSERT [dbo].[StockOut] ([ItemId], [CompanyId], [StockOutQty], [Id], [ItemName], [StockStatus]) VALUES (1, 5, 2, 1, N'Slim', N'Sell')
INSERT [dbo].[StockOut] ([ItemId], [CompanyId], [StockOutQty], [Id], [ItemName], [StockStatus]) VALUES (1, 5, 10, 1, N'Slim', N'Sell')
ALTER TABLE [dbo].[StockOut] ADD  CONSTRAINT [DF_StockOut_StockOutId]  DEFAULT ((1)) FOR [Id]
GO
USE [master]
GO
ALTER DATABASE [StockManagementSystem] SET  READ_WRITE 
GO
