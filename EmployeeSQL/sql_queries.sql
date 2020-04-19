*** List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT employees.emp_no, employees.last_name,
employees.first_name, employees.gender, salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no = salaries.emp_no;


***List employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date >= '1986-01-01' AND
      hire_date < '1987-01-01'

SELECT first_name, last_name, hire_date 
FROM employees
WHERE extract(year from hire_date) = 1986



***List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

SELECT department.dept_no, department.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name, dept_manager.from_date, dept_manager.to_date
FROM department
JOIN dept_manager
ON department.dept_no = dept_manager.dept_no
JOIN employees
ON dept_manager.emp_no = employees.emp_no;




***List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT department.dept_name, dept_emp.emp_no, employees.last_name, employees.first_name
FROM department
JOIN dept_emp
ON department.dept_no = dept_emp.dept_no
JOIN employees
ON dept_emp.emp_no = employees.emp_no;




***List all employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';



***List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT employees.last_name, employees.first_name, dept_emp.emp_no, department.dept_name
FROM employees
JOIN dept_emp 
ON employees.emp_no = dept_emp.emp_no
JOIN department
ON department.dept_no = dept_emp.dept_no
WHERE dept_name = 'Sales';



***List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT employees.last_name, employees.first_name, dept_emp.emp_no, department.dept_name
FROM employees
JOIN dept_emp 
ON employees.emp_no = dept_emp.emp_no
JOIN department
ON department.dept_no = dept_emp.dept_no
WHERE department.dept_name = 'Sales'
OR department.dept_name = 'Development';


***In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name,
COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC;
