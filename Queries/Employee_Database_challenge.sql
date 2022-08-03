-- Create the Retirement titles table ---------------------------------------------
-------------------------------------------------------------------------------
select 
	emp.emp_no, emp.first_name, emp.last_name, 
	ti.title, ti.from_date, ti.to_date 
into retirement_titles
from employees emp 
inner join titles ti
on emp.emp_no = ti.emp_no 
WHERE (emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
     order by emp.emp_no



-- Use Dictinct with Orderby to remove duplicate rows-------------------------
-- and create the Unique titles table---------------------------------------------
------------------------------------------------------------------------------
SELECT DISTINCT ON (emp.emp_no) 
	emp.emp_no,
	emp.first_name,
	emp.last_name,
	ti.title
INTO unique_titles
FROM employees emp 
inner join titles ti
	on emp.emp_no = ti.emp_no 
WHERE (emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND ti.to_date = '9999-01-01'
ORDER BY emp.emp_no,ti.to_date DESC;


--Create the Retiring titles table ---------------------------------------------
----------------------------------------------------------------------------
select count(emp_no) , title 
into retiring_titles
from unique_titles 
group by  title
order by count(emp_no) desc


--Create the Mentorship Eligibility table ---------------------------------------------
----------------------------------------------------------------------------

SELECT * INTO mentorship_eligibility FROM
 (select distinct on (emp.emp_no) 
	emp.emp_no, emp.first_name, emp.last_name, emp.birth_date,
 	de.from_date, de.to_date, 
	ti.title 
from  employees emp 
inner join dept_emp de  
on (emp.emp_no = de.emp_no)
inner join titles ti  
on (emp.emp_no = ti.emp_no) 
WHERE (emp.birth_date BETWEEN '1965-1-1' AND '1965-12-31') 
AND ti.to_date = '9999-01-01' order by emp.emp_no) temp


--Create the Mentorship Eligibility count of titles table ---------------------------------------------
----------------------------------------------------------------------------
select count(emp_no) , title 
into mentorship_titles
from mentorship_eligibility
group by  title
order by count(emp_no) desc

--------------------------------------------------------------------------------------------------------
Determine percentage of current employees that are elibile for retirement
--------------------------------------------------------------------------------------------------------
1. Create table of all employees currently working 

SELECT DISTINCT ON (emp.emp_no) 
	emp.emp_no,
	emp.first_name,
	emp.last_name,
	ti.title
into all_current_emps
FROM employees emp 
inner join titles ti
	on emp.emp_no = ti.emp_no 
WHERE ti.to_date = '9999-01-01'
ORDER BY emp.emp_no,ti.to_date DESC;

2. Get count of all employees currently working

SELECT COUNT(*) FROM all_current_emps  (240124)

3. Get count of all retirement eligible employees

SELECT COUNT(*) FROM unique_titles  (72458)

5. Get percentage of current employees who are retirement eligible
 72458/240124 = 30.2% of current employees are retirement eligible.

--------------------------------------------------------------------------------------------------------
Determine percentage of current employees that are elibile for mentorship (excluding retirement eligible)
--------------------------------------------------------------------------------------------------------

4. Get count of all mentorship eligible employees

SELECT COUNT(*) FROM mentorship_eligibility  (1549)

5. Get percentage of current employees who are mentorship eligible.
1549/(240124-72458) = .9% of current employees are mentorship eligible.







