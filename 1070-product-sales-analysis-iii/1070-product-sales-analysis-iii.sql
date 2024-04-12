# Write your MySQL query statement below
select product_id, year as first_year, quantity as quantity,price 
from sales
where (product_id,year) in (select s.product_id,min(s.year) from sales s group by s.product_id);