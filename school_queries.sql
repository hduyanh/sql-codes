USE employees;

SELECT DISTINCT CONCAT(e.first_name,' ' ,e.last_name) AS Full_name, s.salary
FROM employees e
INNER JOIN salaries s
ON e.emp_no = s.emp_no
AND to_date = '9999-01-01'
ORDER BY s.salary DESC
LIMIT 5;

SELECT
employees.first_name, employees.last_name, employees.emp_no, titles.title
FROM employees 
INNER JOIN titles 
ON titles.emp_no = employees.emp_no
WHERE titles.to_date < '9999-01-01' AND titles.title ='Engineer';

SELECT t.title,s.emp_no,e.first_name, e.last_name, AVG(s.salary)
FROM titles t
INNER JOIN salaries s
ON t.emp_no = s.emp_no
INNER JOIN employees e 
ON e.emp_no = s.emp_no
WHERE t.title = 'Engineer'
GROUP BY s.emp_no;

SELECT t.title,s.emp_no,e.first_name, e.last_name, MIN(s.salary)
FROM titles t
INNER JOIN salaries s
ON t.emp_no = s.emp_no
INNER JOIN employees e 
ON e.emp_no = s.emp_no
WHERE t.title = 'Staff'
GROUP BY s.emp_no
ORDER BY s.salary ASC
LIMIT 10;

SELECT t.title , COUNT(e.emp_no)
FROM titles t
INNER JOIN employees e
ON t.emp_no = e.emp_no
WHERE to_date = '9999-01-01'
GROUP BY t.title;


