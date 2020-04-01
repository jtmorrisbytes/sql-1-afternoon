DROP TABLE person;

CREATE TABLE person (
  person_id SERIAL PRIMARY KEY,
  person_name VARCHAR(255),
  city VARCHAR(200),
  age INT,
  height_cm int,
  favorite_color VARCHAR(25)
);
-- sample data
INSERT INTO person (person_name, city, age, height_cm, favorite_color) VALUES ('Jilleen Parncutt', 'Zhongguan', 58, 436, 'Blue');
INSERT INTO person (person_name, city, age, height_cm, favorite_color) VALUES ('Benjamen Adran', 'Orleans', 16, 129, 'Maroon');
INSERT INTO person (person_name, city, age, height_cm, favorite_color) VALUES ('Ebenezer Tilling', 'Waoundé', 76, 540, 'Red');
INSERT INTO person (person_name, city, age, height_cm, favorite_color) VALUES ('Magdalena Coombe', 'San Bernardino', 21, 988, 'Fuscia');
INSERT INTO person (person_name, city, age, height_cm, favorite_color) VALUES ('Clementina Smallacombe', 'Struga', 44, 80, 'Orange');
INSERT INTO person (person_name, city, age, height_cm, favorite_color) VALUES ('Neill French', 'Buerarema', 67, 480, 'Goldenrod');
INSERT INTO person (person_name, city, age, height_cm, favorite_color) VALUES ('Georgeta Clerc', 'La Concepcion', 66, 296, 'Yellow');
INSERT INTO person (person_name, city, age, height_cm, favorite_color) VALUES ('Chic McGannon', 'Motygino', 77, 293, 'Green');
INSERT INTO person (person_name, city, age, height_cm, favorite_color) VALUES ('Ozzie Kauscher', 'Junglinster', 67, 216, 'Blue');
INSERT INTO person (person_name, city, age, height_cm, favorite_color) VALUES ('Vikki Mewett', 'Binglincha', 35, 914, 'Purple');
INSERT INTO person (person_name, city, age, height_cm, favorite_color) VALUES ('Harlen Zanetto', 'Kanggye-si', 43, 417, 'Green');
INSERT INTO person (person_name, city, age, height_cm, favorite_color) VALUES ('Nert Milne', 'Jinshan', 42, 835, 'Aquamarine');
INSERT INTO person (person_name, city, age, height_cm, favorite_color) VALUES ('Koressa Tallyn', 'Abu Dhabi', 72, 261, 'Aquamarine');
INSERT INTO person (person_name, city, age, height_cm, favorite_color) VALUES ('Emlyn Gisburne', 'Huqiu', 52, 346, 'Khaki');
INSERT INTO person (person_name, city, age, height_cm, favorite_color) VALUES ('Claudius MacLice', 'Skrzyszów', 79, 71, 'Blue');
INSERT INTO person (person_name, city, age, height_cm, favorite_color) VALUES ('Gare Tregian', 'Krzynowłoga Mała', 44, 995, 'Purple');
INSERT INTO person (person_name, city, age, height_cm, favorite_color) VALUES ('Ralina Hindes', 'Nggalak', 78, 117, 'Turquoise');
INSERT INTO person (person_name, city, age, height_cm, favorite_color) VALUES ('Lemmy Neat', 'Dolní Cerekev', 61, 580, 'Yellow');
INSERT INTO person (person_name, city, age, height_cm, favorite_color) VALUES ('Dierdre Whatman', 'Phôngsali', 37, 296, 'Red');

-- 2.
SELECT * FROM person order by height_cm DESC;
-- 3.
SELECT * FROM person ORDER BY height_cm ASC;
-- 4.
SELECT * FROM person  ORDER BY age DESC;
-- 5.
SELECT * FROM person WHERE age > 20;
-- 6.
SELECT * FROM person WHERE age = 18;
-- 7.
SELECT * FROM person WHERE age < 20 AND age > 30;
-- 8.
SELECT * FROM person WHERE age != 27;
-- 9.
SELECT * FROM person WHERE favorite_color not ILIKE 'red';
-- 10.
SELECT * FROM person WHERE favorite_color not ILIKE 'red' and favorite_color not ILIKE 'blue';
--queries start here