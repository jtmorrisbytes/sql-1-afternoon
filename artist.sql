-- 1.
insert into artist (name) values ('Margarethe');
insert into artist (name) values ('Carolee');
insert into artist (name) values ('Niels');

--2. 
select * from (select  *  from artist order by name desc) as sub limit 10;
--3. 
select * from (select  *  from artist order by name asc) as sub limit 5;
--4
select * from artist where "name" LIKE 'Black%';
select * from artist where "name" LIKE '%Black%';
