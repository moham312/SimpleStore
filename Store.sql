USE [Store]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 5/12/2019 11:57:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Phone] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Goods]    Script Date: 5/12/2019 11:57:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Goods](
	[GoodID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Type] [nvarchar](50) NULL,
	[Price] [nvarchar](50) NULL,
	[UseId] [nvarchar](128) NULL,
PRIMARY KEY CLUSTERED 
(
	[GoodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sales]    Script Date: 5/12/2019 11:57:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sales](
	[SaleID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[GoodID] [int] NOT NULL,
	[SaleDate] [datetime] NOT NULL,
	[UserEmail] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SaleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Phone]) VALUES (1, N'medo', N'Meto', N'+49300074321')
INSERT [dbo].[Customers] ([CustomerID], [FirstName], [LastName], [Phone]) VALUES (2, N'Mohammed', N'nahhal', N'+49300074395')
SET IDENTITY_INSERT [dbo].[Customers] OFF
SET IDENTITY_INSERT [dbo].[Goods] ON 

INSERT [dbo].[Goods] ([GoodID], [Title], [Type], [Price], [UseId]) VALUES (2, N'Apple', N'Fruits', N'11.9$', NULL)
INSERT [dbo].[Goods] ([GoodID], [Title], [Type], [Price], [UseId]) VALUES (3, N'Banana', N'Fruits', N'13.9$', NULL)
INSERT [dbo].[Goods] ([GoodID], [Title], [Type], [Price], [UseId]) VALUES (4, N'Strawberry', N'Fruits', N'8.9$', NULL)
INSERT [dbo].[Goods] ([GoodID], [Title], [Type], [Price], [UseId]) VALUES (5, N'Peach', N'Fruits', N'21.9$', NULL)
INSERT [dbo].[Goods] ([GoodID], [Title], [Type], [Price], [UseId]) VALUES (6, N'Apricot', N'Fruits', N'18.9$', NULL)
INSERT [dbo].[Goods] ([GoodID], [Title], [Type], [Price], [UseId]) VALUES (7, N'Cucumber', N'vegtables', N'6.5$', NULL)
INSERT [dbo].[Goods] ([GoodID], [Title], [Type], [Price], [UseId]) VALUES (8, N'Tomato', N'vegtables', N'6.9$', NULL)
INSERT [dbo].[Goods] ([GoodID], [Title], [Type], [Price], [UseId]) VALUES (9, N'Carrots', N'vegtables', N'16.3$', NULL)
SET IDENTITY_INSERT [dbo].[Goods] OFF
SET IDENTITY_INSERT [dbo].[Sales] ON 

INSERT [dbo].[Sales] ([SaleID], [CustomerID], [GoodID], [SaleDate], [UserEmail]) VALUES (1, 1, 2, CAST(0x0000AB1A00000000 AS DateTime), N'medo@hotmail.com')
INSERT [dbo].[Sales] ([SaleID], [CustomerID], [GoodID], [SaleDate], [UserEmail]) VALUES (2, 2, 4, CAST(0x0000AB1A00000000 AS DateTime), N'm@hotmail.com')
SET IDENTITY_INSERT [dbo].[Sales] OFF
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Sales]  WITH CHECK ADD FOREIGN KEY([GoodID])
REFERENCES [dbo].[Goods] ([GoodID])
GO
