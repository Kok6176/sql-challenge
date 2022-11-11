--List the employee number, last name, first name, sex, and salary of each employee.
select e.emp_no, last_name, first_name, sex, salary 
from employees as e
join salaries as s
on e.emp_no = s.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986
select first_name, last_name, hire_date
from employees
where hire_date between '01/01/1986' and '12/31/1986';

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
select dm.dept_no, dept_name, dm.emp_no, last_name, first_name
from dept_manager dm
join departments dp
on dm.dept_no = dp.dept_no
join employees e
on dm.emp_no = e.emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select de.dept_no, e.emp_no, last_name, first_name, dept_name
from dept_emp de
join departments d
on de.dept_no = d.dept_no
join employees e
on e.emp_no = de.emp_no;

--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and last_name like 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.
select e.emp_no, last_name, first_name 
from dept_emp de
join departments d
on de.dept_no = d.dept_no
and dept_name = 'Sales'
join employees e
on de.emp_no = e.emp_no;

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
select e.emp_no, last_name, first_name ,d.dept_name
from dept_emp de
join departments d
on de.dept_no = d.dept_no
and dept_name in ('Sales','Development')
join employees e
on de.emp_no = e.emp_no;

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select last_name, count(*) frequency
from employees
group by last_name
order by frequency desc;

