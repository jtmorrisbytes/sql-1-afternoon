select * from employee where city not ilike 'calgary';

-- youngest employee
select * from employee where reports_to = (select employee_id from employee where first_name ilike 'nancy')
--oldest employee
select * from employee where birth_date = (Select max(birth_date) from employee)
-- who reports to nancy
select * from employee where reports_to = (select employee_id from employee where first_name ilike 'nancy')
-- number of employees in lethbridge
select count(*) as "Number of employees in Lethbridge" from employee where city ilike 'lethbridge'
