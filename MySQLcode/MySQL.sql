---1---
CREATE TABLE employees (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	last_name VARCHAR(255) NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	middle_name VARCHAR(255),
	age INT NOT NULL,
	current_status VARCHAR(100) NOT NULL DEFAULT 'employed'
);

---2---
INSERT INTO employees (first_name, last_name, age) VALUES
('Dora', 'Smith', 58);

---3---
UPDATE cats SET name='Jack' WHERE name='Jackson';

---4---
UPDATE cats SET breed='British Shorthair' name='Ringo';

---5---
UPDATE cats SET age=12  WHERE breed='Maine Coons';

---6---
DELETE FROM cats WHERE age=4;

---7---
DELETE FROM cats WHERE cat_id=age;

---8---
DELETE FROM cats;

---9---
CREATE DATABASE shirts_db;

---10---
CREATE TABLE shirts (
	shirt_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
	article VARCHAR(255) NOT NULL,
	color VARCHAR(255) NOT NULL,
	shirt_size VARCHAR(255) NOT NULL,
	last_worn INT NOT NULL
);

---11---
INSERT INTO shirts (article, color, shirt_size, last_worn) VALUES 
('t-shirt','white','S',10),
('t-shirt','green','S',200),
('polo shirt','black','M',10),
('tank top','blue','S',50),
('t-shirt','pink','S',0),
('polo shirt','red','M',5),
('tank top','white','S',200),
('tank top','blue','M',15);

---12---
INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES ('polo shirt', 'purple', 'M', 50);

---13---
SELECT article, color FROM shirts;

---14---
SELECT article, color, shirt_size, last_worn FROM shirts WHERE shirt_size="M";

---15---
UPDATE shirts SET shirt_size="L" WHERE article="polo shirt";

---16---
UPDATE shirts SET last_worn=0 WHERE last_worn=15;

---17---
UPDATE shirts SET color="off white", shirt_size="XS" WHERE color="white";

---18---
DELETE FROM shirts WHERE last_worn=200;

---19---
DELETE FROM shirts WHERE article="tank top";

---20---
DELETE FROM shirts;

---21---
DROP TABLE shirts;

---22---
CREATE TABLE books (
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

---23---
INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

---24---
SELECT REVERSE(UPPER("Why does my cat look at me with such hatred?"));

---25---
SELECT REPLACE(title, " ", "->") AS title FROM books ;

---26---
SELECT author_lname AS forwards, REVERSE(author_lname) AS backwards FROM books;

---27---
SELECT UPPER(CONCAT(author_fname, " ", author_lname)) AS 'full name in caps' FROM books;

---28---
SELECT CONCAT(title, " was released in ", released_year) AS blurb FROM books; 

---29---
SELECT title, CHAR_LENGTH(title) AS 'character count' FROM books;

---30---
SELECT CONCAT(SUBSTRING(title, 1, 10), "...") AS 'short title', CONCAT(author_lname, ",", author_fname) AS author, CONCAT(stock_quantity, " in stock") AS quantity FROM books;

---31---
SELECT title FROM books WHERE title LIKE '%stories%';

---32---
SELECT title, pages FROM books ORDER BY pages DESC LIMIT 1;

---33---
SELECT CONCAT(title, " - ", released_year) AS summary FROM books ORDER BY released_year DESC LIMIT 3;

---34---
SELECT title, author_lname FROM books WHERE author_lname LIKE '% %';

---35---
SELECT title, released_year, stock_quantity FROM BOOKS ORDER BY stock_quantity LIMIT 3;

---36---
SELECT title, author_lname FROM books ORDER BY author_lname, title;
SELECT title, author_lname FROM books ORDER BY 2, 1;

---37---
SELECT UPPER(CONCAT("my favorite author is ", author_fname, " ", author_lname, "!")) AS yell FROM books ORDER BY author_lname;

---38---
SELECT COUNT(*) FROM books;

---39---
SELECT COUNT(*), released_year FROM books GROUP BY released_year;

---40---
SELECT SUM(stock_quantity) FROM books 

---41---
SELECT author_fname FROM books;

---42---
SELECT


