
--1
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary FROM employees as e
inner join salaries as s on e.emp_no = s.emp_no;

--2
SELECT first_name, last_name, hire_date FROM employees WHERE hire_date BETWEEN '1-1-1986' AND '12-31-1986';

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986/01/01' AND '1986/12/31';

--3
SELECT m.dept_no, d.dept_no, m.emp_no, e.last_name, e.first_name
FROM departments as d 
inner join dept_manager as m on d.dept_no = m.dept_no
inner join employees as e on m.emp_no = e.emp_no;

--4
select e.emp_no, e.last_name, e.first_name, d.dept_name
from departments as d
inner join dept_emp as f on d.dept_no = f.dept_no
inner join employees as e on f.emp_no = e.emp_no;

--5
SELECT first_name, last_name, sex FROM employees 
WHERE first_name = 'Hercules' and last_name Like 'B%';

--6
select e.emp_no, e.last_name, e.first_name, d.dept_name
from departments as d
inner join dept_emp as f on d.dept_no = f.dept_no
inner join employees as e on f.emp_no = e.emp_no
WHERE d.dept_name = 'Sales';

--7
select e.emp_no, e.last_name, e.first_name, d.dept_name
from departments as d
inner join dept_emp as f on d.dept_no = f.dept_no
inner join employees as e on f.emp_no = e.emp_no
WHERE d.dept_name in ('Sales', 'Development');

--8
select last_name, count(last_name) from employees 
group by last_name
order by count(last_name) desc;