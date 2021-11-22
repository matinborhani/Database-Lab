USE [Restaurants]
GO

/****** Object:  View [dbo].[CustomerDetails]    Script Date: 2020/06/02 04:03:04 кмемб ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Script for SelectTopNRows command from SSMS  ******/
ALTER view [dbo].[CustomerDetails]
As
select Customer.ID, Customer.name,Customer.Phonenumber,count(*) As countAll
from Customer right join Orders on Customer.ID = Orders.customer_id
group by ID,name,Phonenumber
GO


