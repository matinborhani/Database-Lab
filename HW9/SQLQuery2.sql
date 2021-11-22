/****** Script for SelectTopNRows command from SSMS  ******/
select * from dbo.Orders

select name,sum(cost)
from Orders join Food on dbo.Orders.food_id = dbo.Food.ID
group by name;