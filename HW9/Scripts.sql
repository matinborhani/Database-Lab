USE [Restaurants]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2020/06/02 11:35:32 عـصـر ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[Lastname] [nvarchar](100) NOT NULL,
	[Address] [nvarchar](100) NULL,
	[Phonenumber] [nchar](15) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2020/06/02 11:35:32 عـصـر ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[customer_id] [int] NULL,
	[food_id] [int] NULL,
	[orderDate] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[CustomerDetails]    Script Date: 2020/06/02 11:35:32 عـصـر ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
create view [dbo].[CustomerDetails]
As
select Customer.ID, Customer.name,Customer.Phonenumber,count(*) As countAll
from Customer right join Orders on Customer.ID = Orders.customer_id
group by ID,name,Phonenumber
GO
/****** Object:  Table [dbo].[Food]    Script Date: 2020/06/02 11:35:32 عـصـر ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Food](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[cost] [bigint] NOT NULL,
	[ramaining] [int] NULL,
	[type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Food] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([ID], [name], [Lastname], [Address], [Phonenumber]) VALUES (1, N'Matin', N'Borhani', N'Esfahan,Mir Street', N'09359127520    ')
INSERT [dbo].[Customer] ([ID], [name], [Lastname], [Address], [Phonenumber]) VALUES (2, N'Ali', N'Ebrahimi', N'Tehran', NULL)
INSERT [dbo].[Customer] ([ID], [name], [Lastname], [Address], [Phonenumber]) VALUES (3, N'Ali', N'Safi', N'Esfahan', NULL)
INSERT [dbo].[Customer] ([ID], [name], [Lastname], [Address], [Phonenumber]) VALUES (4, N'Ali', N'Mohammadi', N'Esfahan', NULL)
INSERT [dbo].[Customer] ([ID], [name], [Lastname], [Address], [Phonenumber]) VALUES (5, N'Ali', N'Bababe', N'Esfahan', NULL)
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[Food] ON 

INSERT [dbo].[Food] ([ID], [name], [cost], [ramaining], [type]) VALUES (1, N'Pizza', 20000, NULL, N'fastfood')
INSERT [dbo].[Food] ([ID], [name], [cost], [ramaining], [type]) VALUES (3, N'Pasta', 25000, NULL, N'fastfood')
INSERT [dbo].[Food] ([ID], [name], [cost], [ramaining], [type]) VALUES (4, N'Kebab', 18000, NULL, N'classic')
INSERT [dbo].[Food] ([ID], [name], [cost], [ramaining], [type]) VALUES (5, N'Fish', 30000, NULL, N'sea')
INSERT [dbo].[Food] ([ID], [name], [cost], [ramaining], [type]) VALUES (6, N'Salad', 10000, NULL, N'vegetal')
INSERT [dbo].[Food] ([ID], [name], [cost], [ramaining], [type]) VALUES (7, N'Hamburger', 20000, NULL, N'fastfood')
SET IDENTITY_INSERT [dbo].[Food] OFF
INSERT [dbo].[Orders] ([customer_id], [food_id], [orderDate]) VALUES (1, 1, CAST(N'2020-05-31T04:12:52.987' AS DateTime))
INSERT [dbo].[Orders] ([customer_id], [food_id], [orderDate]) VALUES (1, 3, CAST(N'2020-05-31T04:13:33.533' AS DateTime))
INSERT [dbo].[Orders] ([customer_id], [food_id], [orderDate]) VALUES (1, 4, CAST(N'2020-05-31T04:13:47.283' AS DateTime))
INSERT [dbo].[Orders] ([customer_id], [food_id], [orderDate]) VALUES (1, 5, CAST(N'2020-05-31T04:26:40.297' AS DateTime))
INSERT [dbo].[Orders] ([customer_id], [food_id], [orderDate]) VALUES (1, 5, CAST(N'2020-05-31T04:27:09.453' AS DateTime))
INSERT [dbo].[Orders] ([customer_id], [food_id], [orderDate]) VALUES (1, 6, CAST(N'2020-05-31T04:27:38.517' AS DateTime))
INSERT [dbo].[Orders] ([customer_id], [food_id], [orderDate]) VALUES (1, 7, CAST(N'2020-05-31T04:27:47.843' AS DateTime))
INSERT [dbo].[Orders] ([customer_id], [food_id], [orderDate]) VALUES (2, 3, CAST(N'2020-06-01T17:06:49.713' AS DateTime))
INSERT [dbo].[Orders] ([customer_id], [food_id], [orderDate]) VALUES (2, 5, CAST(N'2020-06-01T17:07:23.950' AS DateTime))
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([customer_id])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Food] FOREIGN KEY([food_id])
REFERENCES [dbo].[Food] ([ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Food]
GO
ALTER TABLE [dbo].[Food]  WITH CHECK ADD  CONSTRAINT [CK_Food] CHECK  (([type]='sea' OR [type]='vegetal' OR [type]='fastfood' OR [type]='classic'))
GO
ALTER TABLE [dbo].[Food] CHECK CONSTRAINT [CK_Food]
GO
/****** Object:  StoredProcedure [dbo].[findOrders]    Script Date: 2020/06/02 11:35:32 عـصـر ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[findOrders](
	-- Add the parameters for the stored procedure here
	@idCustomer int
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select  Orders.customer_id,Food.name
	from Orders join Food on Orders.food_id = Food.ID
	where Orders.customer_id = @idCustomer
END
GO
