/****** Script for SelectTopNRows command from SSMS  ******/
select Orders.customer_id,Customer.name,SUM(Food.cost) As costs
from Orders join Customer on Orders.customer_id = Customer.ID
			join Food on Orders.food_id = Food.ID
where Food.type = 'sea'
group by customer_id,Customer.name
having SUM(Food.cost) > 100000

select * from Orders