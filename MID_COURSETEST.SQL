---- bai so 2 --- 

SELECT count (*) as so_luong,
CASE 
	WHEN replacement_cost BETWEEN 9.99 AND 19.99 THEN 'low'
	WHEN replacement_cost BETWEEN 20.00 AND 24.99 THEN 'medium'
	WHEN replacement_cost BETWEEN 25.00 AND 29.99 THEN 'high'
	ELSE 'other'
END as type_film
FROM film
GROUP BY type_film



