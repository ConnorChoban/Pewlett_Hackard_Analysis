-- As we'll need to draw data from the Titles and Employees I'll use t and e as the aliases
-- I'll use retirement_titles as the name of the table in order to be consistent with the CSV that'll be exported
-- We'll use an INNER JOIN as we want data that matches across both tables and join on emp_no (primary key)
-- We'll order by ASC instead of DESC

SELECT e.emp_no,
 e.first_name,
 e.last_name,
 t.title,
 t.from_date,
 t.to_date
INTO retirement_titles 
FROM employees as e
INNER JOIN titles as t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

SELECT * FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
-- Note that the the module uses '9999-01-01' as the while the CSV lists considers the date as 1999-01-01
-- to avoid making errors I'll need to use 1999 instead of 9999

SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles as rt
WHERE (rt.to_date = '1999-01-01')
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles

SELECT COUNT(ut.emp_no), ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title
ORDER BY COUNT(title) DESC;

SELECT * FROM retiring_titles

-- Deliverable 2




