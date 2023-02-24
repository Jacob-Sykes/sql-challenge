-- Query tables

SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;
SELECT * FROM titles;
--Not able to import data into dept_emp table.


-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.emp_no, employees.first_name, employees.last_name, employees.sex, salaries.salary
FROM employees, salaries
WHERE employees.emp_no=salaries.emp_no;


--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01';


--List the manager of each department along with their department number, department name, 
--employee number, last name, and first name.
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM departments, dept_manager, employees, titles
WHERE dept_manager.emp_no=employees.emp_no
AND titles.title_id=employees.emp_title_id;

--List the department number for each employee along with that employee’s employee number, 
--last name, first name, and department name.
SELECT dept_emp.dept_no, employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM departments, employees
WHERE


--List first name, last name, and sex of each employee whose first name is Hercules 
--and whose last name begins with the letter B.
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE employees.first_name = 'Hercules'
AND employees.last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, 
--and first name.
SELECT emp_title_id, emp_no, last_name, first_name
FROM employees
WHERE emp_title_id = (
	SELECT emp_no
	FROM )

--List each employee in the Sales and Development departments, including their employee number, 
--last name, first name, and department name.



--List the frequency counts, in descending order, of all the employee last names 
--(that is, how many employees share each last name).
SELECT last_name, count(*)
FROM employees
GROUP BY last_name
ORDER BY COUNT(*) DESC;
