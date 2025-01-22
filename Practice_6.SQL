SELECT a.employee_id
FROM Employees AS a
LEFT JOIN Employees AS b
ON A.manager_id = B.employee_id
WHERE a.salary <30000 and b.manager_id IS NULL



-- bai 8 --- 
SELECT count (distinct company_id)

FROM
(SELECT company_id,
count (job_id)
FROM job_listings
group by company_id, title, description
HAVING count (job_id) >1) AS A
