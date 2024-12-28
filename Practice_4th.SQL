--ex1: datalemur-laptop-mobile-viewership.
SELECT count (*) as SL,
CASE 
WHEN device_type = 'laptop' THEN 'laptopviews'
ELSE 'mobileviews'
end as total_views
FROM viewership
group by total_views



--ex2: datalemur-triangle-judgement.
--ex3: datalemur-uncategorized-calls-percentage.
--ex4: datalemur-find-customer-referee.
--ex5: stratascratch the-number-of-survivors.
