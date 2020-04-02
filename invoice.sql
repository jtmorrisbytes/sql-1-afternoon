--1.
select count(*) as "Number of orders from USA" from invoice where billing_country = 'USA';
--2
select max(total) as "smallest order" from invoice;
--3
select min(total) as "largest order" from invoice;
--4
select * from invoice where total > 5;
--5
select COUNT(*) AS "num orders" from invoice where total < 5;
--6
select count(*) as "num orders in CA, TX, or AZ" from invoice where billing_state in ('CA', 'TX', 'AZ')
--7
select avg(total) as "Average order price" from invoice;
--8
select sum(total) asa "Sum of order totals" from invoice;