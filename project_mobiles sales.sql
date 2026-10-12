create database mobile_sales ;
use mobile_sales ; 
select*from mobile;
-- How many mobile phones are in the dataset --
select count(*) as totale_phones from mobile ;
-- How many unique mobile brands are represented -- 
select count(distinct Brands) as totale_barnds from mobile;
-- What is the average, minimum, and maximum mobile phone price -- 
select 
min(Price) as minimum ,
MAX(Price) as maximum ,
round(avg(Price),2) as moyennesz
from mobile;
-- Are there duplicate records in the dataset --
SELECT
    Phone_name,
    Brands,
    Price,
    COUNT(*) AS occurrences
FROM mobile
GROUP BY Phone_name, Brands, Price
HAVING COUNT(*) > 1;
-- Which brands have the highest number of mobile phones in the dataset --
select 
	Brands,
    count(*) as totale_phones
from mobile 
group by Brands
order by totale_phones desc limit 5;
-- What is the average price for each brand --
SELECT
    Brands,
    COUNT(*) AS total_phones,
    ROUND(AVG(Price), 2) AS average_price
FROM mobile
GROUP BY Brands
ORDER BY average_price DESC;
-- What are the 10 most expensive mobile phones -- 
SELECT
    Phone_name,
    Brands,
    Price
FROM mobile
ORDER BY Price DESC
LIMIT 10;
-- Which operating system is the most common --
SELECT
    Operating_System_Type,
    COUNT(*) AS total_phones
FROM mobile
GROUP BY Operating_System_Type
ORDER BY total_phones DESC;
-- What is the distribution of phones by RAM capacity -- 
SELECT
    RAM_Storage,
    COUNT(*) AS total_phones,
    ROUND(AVG(Price), 2) AS average_price
FROM mobile
GROUP BY RAM_Storage
ORDER BY total_phones DESC;
-- Which phones have a battery capacity of 5000 mAh -- 
SELECT
    Phone_name,
    Brands,
    Price,
    Battery_Capacity
FROM mobile
WHERE Battery_Capacity = '5000 mAh';





















