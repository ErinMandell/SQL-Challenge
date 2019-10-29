-- 1) List the following details of each employee: employee number, last name, 
-- first name, gender, and salary.
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e
JOIN salaries s
ON (e.emp_no = s.emp_no);

-- 2) List the employees who were hired in 1986
ALTER TABLE employees
ALTER COLUMN hire_date TYPE VARCHAR;
SELECT *
FROM employees
WHERE 
	hire_date LIKE '1986%'
ORDER BY hire_date ASC;


-- 3) List the manager of each department with the following information: dept number, dept name, 
-- the manager's emp number, last name, first name, and start + end employment dates.
SELECT m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
FROM dept_manager  m
INNER JOIN employees e ON m.emp_no = e.emp_no
INNER JOIN departments d ON m.dept_no=d.dept_no;

