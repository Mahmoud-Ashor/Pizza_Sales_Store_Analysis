
----A.KPI's
--1.Total Revenue:
select sum(total_price) as Total_Revenue from pizza_sales;

--2.Average Order Value:
select sum(total_price) / Count(DISTINCT Order_id) AS AVG_Order_Value from pizza_sales;

--3.Total Pizza Sold
select sum(quantity) AS Total_Pizza_Sold from pizza_sales;

--4.Total Order
select count(distinct order_id) AS Total_Order from pizza_sales;

--5.Average Pizzas Sold Per Order:

select cast (cast (sum(quantity) AS DECIMAL(10,2)) /cast (count(distinct order_id) AS DECIMAL(10,2)) AS DECIMAL (10,2))
 AS Average_pizzas_Per_Orders from pizza_sales;


----B. Problem Statement
     --Charts Requirement

--1.Daily Trend For Total Orders:

SELECT DATENAME(DW,order_date) AS THE_DAY , COUNT(DISTINCT order_id) AS TOTAL_ORDERS 
from pizza_sales 
GROUP BY DATENAME(DW,order_date) 
ORDER BY TOTAL_ORDERS DESC;

--2.Monthly Trend For Orders:

SELECT DATENAME(MONTH,order_date) AS The_Month, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales 
GROUP BY DATENAME(MONTH,order_date) 
ORDER BY Total_Orders DESC ;


--3.Percentage Of Sales By Pizza Category:

--Using Sub Query:

SELECT pizza_category,SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales) AS Percentage_Sales_Of_Pizza_Category
FROM pizza_sales 
GROUP BY pizza_category 
ORDER BY SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales) DESC;

--Using Window Function:
SELECT pizza_category,
       CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_Price,
       SUM(total_price) * 100 / SUM(SUM(total_price)) OVER()
        AS Percentage_Sales_Of_Pizza_Category
FROM pizza_sales
GROUP BY pizza_category 
ORDER BY Percentage_Sales_Of_Pizza_Category DESC;


--4.Percentage Of Sales By Pizza Size:
SELECT pizza_size,
       CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_price,
       CAST(SUM(total_price) *100 / SUM(SUM(total_price)) OVER()
       AS DECIMAL(10,2))  AS Percentage_Sales_Of_Pizza_Size
FROM pizza_sales 
GROUP BY pizza_size
ORDER BY Percentage_Sales_Of_Pizza_Size DESC;


--5.Total Pizza Sold By Pizza Category:

SELECT pizza_category,
       SUM(quantity) AS Total_Units_Sold
FROM pizza_sales 
GROUP BY pizza_category
ORDER BY Total_Units_Sold DESC;


--6.Top 5 Pizza By Revenue:

SELECT Top 5 pizza_name,
       SUM(total_price) AS Total_Revenue

FROM pizza_sales 
GROUP BY pizza_name
ORDER BY Total_Revenue DESC;


--7.Top 5 Pizza By Quantity In January:

SELECT Top 5 pizza_name,
	   SUM(quantity) AS Unit_Sold
FROM pizza_sales
WHERE MONTH(order_date)=1
GROUP BY pizza_name
ORDER BY Unit_Sold DESC ;


--8. Bottom 5 Pizza By Revenue:
SELECT TOP 5 pizza_name,
       SUM(total_price) AS Total_Revenue

FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Revenue ASC;


--9.Bottom 5 Pizza By Quantity In First Quarter:

select top 5 pizza_name,
       sum(quantity) as total_sold
from pizza_sales
where datepart(quarter,order_date)=1
group by pizza_name
order by total_sold asc;














