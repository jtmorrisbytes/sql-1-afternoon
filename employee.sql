select * FROM employee WHERE city NOT ILIKE 'calgary';

-- youngest employee
select * FROM employee WHERE reports_to = (select employee_id FROM employee WHERE first_name ILIKE 'nancy')
--oldest employee
select * FROM employee WHERE birth_date = (Select max(birth_date) FROM employee)
-- who reports to nancy
select * FROM employee WHERE reports_to = (select employee_id FROM employee WHERE first_name ILIKE 'nancy')
-- number of employees IN lethbridge
select count(*) as "Number of employees IN Lethbridge" FROM employee WHERE city ILIKE 'lethbridge'
