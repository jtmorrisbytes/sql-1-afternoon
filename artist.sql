-- 1.
insert into artist (name) VALUES ('Margarethe');
insert into artist (name) VALUES ('Carolee');
insert into artist (name) VALUES ('Niels');

--2. 
select * FROM (select  *  FROM artist ORDER BY name desc) as sub limit 10;
--3. 
select * FROM (select  *  FROM artist ORDER BY name asc) as sub limit 5;
--4
select * FROM artist WHERE "name" LIKE 'Black%';
select * FROM artist WHERE "name" LIKE '%Black%';
