--#1
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e
INNER JOIN salaries s
ON (e.emp_no=s.emp_no);

--#2 
SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '1986-%';

--#3
SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
FROM dept_manager m
INNER JOIN departments d ON d.dept_no = m.dept_no
INNER JOIN employees e ON e.emp_no = m.emp_no;

--#4
SELECT n.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees e
INNER JOIN employee_number n ON n.emp_no = e.emp_no
INNER JOIN departments d ON d.dept_no = n.dept_no;

--#5
SELECT * FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--#6
SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees e
INNER JOIN employee_number n ON n.emp_no = e.emp_no
INNER JOIN departments d ON d.dept_no = n.dept_no
WHERE dept_name = 'Sales';

--#7
SELECT d.dept_name, e.emp_no, e.last_name, e.first_name
FROM employees e
INNER JOIN employee_number n ON n.emp_no = e.emp_no
INNER JOIN departments d ON d.dept_no = n.dept_no
WHERE dept_name = 'Sales' OR dept_name ='Development';

--#8
SELECT last_name, COUNT(last_name) AS count
FROM employees
GROUP BY last_name
ORDER BY "count" DESC