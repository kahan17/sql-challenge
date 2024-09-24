SELECT e.last_name, e.first_name, e.emp_no, e.sex, s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no;

SELECT last_name, first_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

SELECT e.last_name, e.first_name, dm.dept_no, d.dept_name, dm.emp_no
FROM dept_manager dm
JOIN employees e ON dm.emp_no = e.emp_no
JOIN departments d ON dm.dept_no = d.dept_no;

SELECT e.last_name, e.first_name, e.emp_no, d.dept_no, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no;

SELECT last_name, first_name, sex
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT e.last_name, e.first_name, de.emp_no, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales';

SELECT e.last_name, e.first_name, de.emp_no, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

SELECT last_name, Count(last_name) AS name_count
FROM employees
GROUP BY last_name
ORDER BY last_name DESC; 