CREATE TABLE orders (order_id SERIAL, person_id INT, product_name TEXT, product_price FLOAT, quantity INT

);
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (1, 'PEPPERONI PIZZA', 15.99, 5),
       (1, 'SAUSAGE PIZZA', 15.99, 2),
       (2, 'Chicken Nuggets', 24.99, 3),
       (2, 'bagel bites', 7.99, 7),
       (2, 'Peanut butter', 5.99, 4)
--3. 
SELECT * FROM orders;
--4.
SELECT sum(quantity) FROM orders
--5
SELECT sum(quantity*product_price) FROM orders
SELECT sum(quantity*product_price) FROM orders group by person_id