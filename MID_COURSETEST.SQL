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

---- bai so 3 --- 
SELECT A.title, A.length, C.name as category_name
FROM film AS A
JOIN film_category AS B ON A.film_id = B.film_id
JOIN category AS C ON C.category_id = B.category_id
WHERE C.name in ('Drama','Sports')
ORDER BY A.length DESC


--- bai so 4--- 
SELECT C.name as category_name, count (*) as SL
FROM film AS A
JOIN film_category AS B ON A.film_id = B.film_id
JOIN category AS C ON C.category_id = B.category_id
GROUP BY C.name
ORDER BY count (*) DESC

--- bai so 5 -----
SELECT C.actor_id, C.first_name, C.last_name, count (A.film_id) as SL
FROM film as A
	JOIN film_actor as B ON A.film_id = B.film_id
	JOIN actor as C ON B.actor_id = C.actor_id
GROUP BY C.actor_id, C.first_name, C.last_name
ORDER BY SL DESC


--- bai so 6--- 
select count (*) as so_luong_null
from address as A
LEFT JOIN customer as B 
ON A.address_id = B.address_id
WHERE B.address_id is null

---- bai 7 ---- 
select A.city, sum (D.amount) as Doanh_thu
from city AS A
	JOIN address as B ON A.city_id = B.city_id
	JOIN customer as C ON B.address_id = C.address_id
	JOIN payment as D ON D.customer_id = C.customer_id
GROUP BY A.city
order by doanh_thu DESC

--- bai 8----- 
select A.city, E.country, sum (D.amount) as tong_doanh_thu
from city AS A
	JOIN address as B ON A.city_id = B.city_id
	JOIN customer as C ON B.address_id = C.address_id
	JOIN payment as D ON D.customer_id = C.customer_id
	JOIN country as E ON E.country_id = A.country_id
GROUP by A.city, E.country
0-------




