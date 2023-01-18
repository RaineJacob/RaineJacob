--- Inspecting data
select *
from Project.dbo.Sales_October_2019

---checking unique values

select distinct Order_ID from Project.dbo.Sales_October_2019
select distinct Product from Project.dbo.Sales_October_2019
select distinct Quantity_Ordered from Project.dbo.Sales_October_2019
select distinct Price_Each from Project.dbo.Sales_October_2019
select distinct Order_Date from Project.dbo.Sales_October_2019
select distinct Purchase_Address from Project.dbo.Sales_October_2019

---Analysis 
---Starting by grouping sales by product

select Product ,sum(Price_each) as Revenue
from Project.dbo.Sales_October_2019
group by Product
order by 2 Desc


---what was the best sales in october 2019
select Order_Date ,sum(Price_each) as Revenue
from Project.dbo.Sales_October_2019
group by Order_Date
order by 2 Desc

---what product was most purchased by customer
select Order_date , Product  , sum (Price_Each) as Revenue ,count(Order_ID) as Total_quantity
from Project.dbo.Sales_October_2019
where Order_Date = '2027-10-19 21:14:00.0000000' 
group by Order_date , Product
order by 3 Desc

---who is the best customer according to address
select
	Purchase_Address,
	sum(Price_Each) as Revenue,
	avg (Price_each) as AverageMoneyGenerated,
	count(Order_ID) as Frequency,
	max (Order_Date) as lastOrderDate
	from Project.dbo.Sales_October_2019
	group by Purchase_Address



