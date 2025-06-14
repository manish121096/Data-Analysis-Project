select * from pizza_sales;

-- Aggrigation funciton (KPI's)

SELECT SUM(total_price) AS Total_Revenue from pizza_sales

SELECT SUM(total_price)/COUNT(DISTINCT order_id) AS Total_AVG_Value FROM pizza_sales

SELECT SUM(quantity) AS Total_pizza_sold from pizza_sales;

SELECT COUNT(DISTINCT order_id) as Total_No_of_order from pizza_sales

SELECT CAST(CAST(SUM(quantity) AS DECIMAL(10,2))/
		CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS Average_pizza_per_order  from pizza_sales

--Charts and Requrements

SELECT DATENAME(DW, order_date) as Order_Day, COUNT(DISTINCT order_id) from pizza_sales
	GROUP BY DATENAME(DW, order_date)
	
SELECT DATENAME(MONTH, order_date) as Order_Month, COUNT(DISTINCT order_id) as Order_Count from pizza_sales
	GROUP BY DATENAME(MONTH, order_date)

