SELECT a.employee_id
FROM Employees AS a
LEFT JOIN Employees AS b
ON A.manager_id = B.employee_id
WHERE a.salary <30000 and b.manager_id IS NULL
