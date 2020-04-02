--1.
select count(*) as "Number of orders FROM USA" FROM invoice WHERE billing_country = 'USA';
--2
select max(total) as "smallest order" FROM invoice;
--3
select min(total) as "largest order" FROM invoice;
--4
select * FROM invoice WHERE total > 5;
--5
select COUNT(*) AS "num orders" FROM invoice WHERE total < 5;
--6
select count(*) as "num orders IN CA, TX, OR AZ" FROM invoice WHERE billing_state IN ('CA', 'TX', 'AZ')
--7
select avg(total) as "Average order price" FROM invoice;
--8
select sum(total) asa "Sum of order totals" FROM invoice;