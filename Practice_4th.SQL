--ex1: datalemur-laptop-mobile-viewership.
SELECT count (*) as SL,
CASE 
WHEN device_type = 'laptop' THEN 'laptopviews'
ELSE 'mobileviews'
end as total_views
FROM viewership
group by total_views



--ex2: datalemur-triangle-judgement.
SELECT *,
CASE
WHEN x + y > z THEN 'yes'
ELSE 'no' 
END AS tam_giac
FROM Triangle

--ex3: datalemur-uncategorized-calls-percentage.

SELECT 
    survived,
    COUNT(CASE WHEN pclass = 1 THEN 1 END) AS first_class
FROM titanic
GROUP BY survived


--ex4: datalemur-find-customer-referee.


--ex5: stratascratch the-number-of-survivors.
