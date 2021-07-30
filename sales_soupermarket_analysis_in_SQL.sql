select * 
from project_SQL..sales

select [Product line],[Unit price],Quantity,Date
from project_SQL..sales

----Customer gender

select Gender,count(Gender)as customer_type
from project_SQL..sales
group by Gender


--looking for total quantity of products by gender

select [Product line],Gender,sum (Quantity) as total_quntity_by_Gender
from project_SQL..sales
Group by [Product line],Gender
order by total_quntity_by_Gender desc

--LOOKING FOR TOTAL QUANTITY OF PRODUCT BY CITY 

select City,[Product line],sum(Quantity)as sum_quantity_by_city
from project_SQL..sales
GROUP BY City, [Product line]
order by  sum_quantity_by_city desc

--AVG Rating from stores

select Branch,City,avg(Rating)as AVG_Rating
from project_SQL..sales
GROUP BY Branch,City
order by AVG_Rating desc

--Total grocc income of product

select [Product line],sum([gross income]) as total_grocc_income_of_product
from project_SQL..sales
group by [Product line]
order by  total_grocc_income_of_product desc

--min and max Payment method by Gender 

select Gender,min(Payment)as min_payment_by_Gender,max(Payment)as max_payment_Gender
from project_SQL..sales
GROUP BY Gender


--Income by Customer type

select [Customer type],sum([gross income])as income_by_customer_type
from project_SQL..sales
Group by [Customer type]
order by income_by_customer_type desc

--Tax by customer type
select [Customer type],sum([Tax 5%])as tax_by_customer_type
from project_SQL..sales
Group by [Customer type]
order by tax_by_customer_type desc

--AVG Payment method 
select Payment,avg(total)as AVG_payment_method 
from project_SQL..sales
group by Payment

--payment cash, Ewallet,Credit card

select [Product line],count(Payment)as payment_cash 
from project_SQL..sales
where Payment='cash'
group by Payment,[Product line]

select [Product line],count(Payment)as payment_ewallet
from project_SQL..sales
where Payment='Ewallet'
group by Payment,[Product line]

select [Product line],count(Payment)as payment_credit_card
from project_SQL..sales
where Payment='credit card'
group by Payment,[Product line]

--AVG grocc income
select Date,count(Payment)as AVG_gross_income
from project_SQL..sales
group by Date

-- SALES OF PRODUCT IN PERIOD 1/1/2019-30/3/19
select Date,[Product line],sum(Quantity)AS SALES_period
from project_SQL..sales
group by Date ,[Product line]
order by SALES_period desc











