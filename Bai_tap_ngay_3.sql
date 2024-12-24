
---- ex1: hackerank-revising-the-select-query. 
SELECT NAME
FROM CITY 
WHERE COUNTRYCODE = 'USA' 
AND POPULATION > 120000
--- EX 3
  SELECT CITY, STATE
---- ex2
  SELECT *
FROM CITY
WHERE COUNTRYCODE = "JPN"
FROM STATION
--- ex9: leetcode-recyclable-and-low-fat-products. 
SELECT product_id
from Products
WHERE low_fats = "Y" and recyclable = "Y"
--- EX4
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE "a%" or CITY LIKE "e%" or CITY LIKE "i%" or CITY LIKE "o%" 
or CITY LIKE "u%" 
--- ex5
SELECT DISTINCT CITY
FROM STATION
WHERE CITY LIKE "%a" or CITY LIKE "%e" or CITY LIKE "%i" or CITY LIKE "%o" 
or CITY LIKE "%u" 
--- ex6
SELECT DISTINCT CITY
FROM STATION
WHERE CITY not LIKE "a%" AND CITY not LIKE "e%" AND CITY not LIKE "i%" AND CITY NOT LIKE "o%" 
AND CITY not LIKE "u%" 

--ex 7
SELECT name
FROM Employee
ORDER BY name ASC

---- ex8
SELECT name
FROM Employee
WHERE salary > 2000
AND months < 10
ORDER BY employee_id ASC

---- ex10
SELECT name
FROM Customer
WHERE referee_id IS NULL
OR referee_id <> 2


--- ex11
SELECT name, population, area
FROM World
WHERE area >= 3000000
OR population >= 25000000

ORDER BY name

--- ex12
SELECT DISTINCT author_id as id
FROM Views
WHERE author_id = viewer_id
ORDER BY author_id ASC

--ex13
SELECT part, assembly_step
FROM parts_assembly
WHERE finish_date IS NULL

--ex14

SELECT * 
FROM lyft_drivers
WHERE yearly_salary <= 30000 OR yearly_salary >= 70000


--ex15
select advertising_channel
from uber_advertising
where money_spent > 100000 and year = 2019













