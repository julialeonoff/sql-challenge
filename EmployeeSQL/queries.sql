--List emp. no, last name, first name, gender and salary
--Use an inner join to display the data
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees e
INNER JOIN salaries s ON
e.emp_no=s.emp_no
ORDER BY emp_no;

--List employees hired in 1986
SELECT *
FROM employees
WHERE EXTRACT(YEAR from hire_date) = 1986
ORDER BY emp_no;

--List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name, m.from_date, m.to_date
FROM departments d
INNER JOIN dept_manager m ON
d.dept_no=m.dept_no
INNER JOIN employees e ON
m.emp_no=e.emp_no
ORDER BY dept_no;

--List the department of each employee with the following information: employee number, last name, 
--first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de ON
e.emp_no=de.emp_no
INNER JOIN departments d ON
de.dept_no=d.dept_no
ORDER BY emp_no;

--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * 
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'
ORDER BY emp_no;

--List all employees in the Sales department, including their employee number, last name, 
--first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de ON
e.emp_no=de.emp_no
INNER JOIN departments d ON
de.dept_no=d.dept_no
WHERE d.dept_name = 'Sales'
ORDER BY emp_no;

--List all employees in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de ON
e.emp_no=de.emp_no
INNER JOIN departments d ON
de.dept_no=d.dept_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development'
ORDER BY emp_no;

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) as "count"
FROM employees
GROUP BY last_name
ORDER BY "count" DESC;


