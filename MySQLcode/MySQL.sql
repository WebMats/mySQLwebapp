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
SELECT SUM(stock_quantity) FROM books;

---41---
SELECT author_fname, AVG(released_year) FROM books GROUP BY author_fname, author_lname;

---42---
SELECT CONCAT(author_fname, " ", author_lname) FROM books ORDER BY pages LIMIT 1;
SELECT CONCAT(author_fname, " ", author_lname) FROM books WHERE pages=(SELECT MAX(pages) FROM books);

---42---
SELECT released_year AS year, COUNT(*) AS '# books', AVG(pages) AS 'avg pages' FROM books GROUP BY released_year;

---43---
CREATE TABLE inventory (
	item_name VARCHAR(255) NOT NULL PRIMARY KEY,
	price DECIMAL(8,2) NOT NULL,
	quantity INT NOT NULL
);

---44---
SELECT CURTIME();

---45---
SELECT CURDATE();

---46---
SELECT DAYOFWEEK(CURDATE());
SELECT DAYOFWEEK(NOW());
SELECT DATE_FORMAT(NOW(), '%w');

---47---
SELECT DAYNAME(NOW());
SELECT DATE_FORMAT(NOW(), '%W');

---48---
SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');

---49---
SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');

---50---
CREATE TABLE tweets (
	tweet VARCHAR(255) NOT NULL,
	username VARCHAR(20) NOT NULL PRIMARY KEY,
	created_at TIMESTAMP DEFAULT NOW()
);

---51---
SELECT 10 != 10; --FALSE === 0
SELECT 15 > 14 && 99 - 5 <= 94; --TRUE === 1
SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10; --TRUE === 1

---52---
SELECT * FROM books WHERE released_year < 1980;

---53---
SELECT * FROM books WHERE author_lname="Eggers" || author_lname="Carver";
SELECT * FROM books WHERE author_lname="Eggers" OR author_lname="Carver";
SELECT * FROM books WHERE author_lname IN ("Eggers","Carver");

---54---
SELECT * FROM books WHERE author_lname='Lahiri' AND released_year > 2000;

---55---
SELECT * FROM books WHERE pages >100 AND pages < 200;
SELECT * FROM books WHERE pages >100 && pages < 200;
SELECT * FROM books WHERE pages BETWEEN 100 AND 200;

---56---
SELECT * FROM books WHERE author_lname LIKE 'C%' || 'S%';
SELECT * FROM books WHERE SUBSTRING(author_lname,1,1) IN ('C', 'S');

---57---
SELECT title, author_lname,
		CASE 
			WHEN title LIKE "%stories%" THEN 'Short Stories'
			WHEN title LIKE "%Just Kids" OR title LIKE '%Heartbreaking%' THEN 'Memoir'
			ELSE 'Novel' 
		END AS TYPE
FROM books;

---58---
SELECT title, author_lname, 
	CASE 
		 WHEN COUNT(*) > 1 THEN CONCAT(COUNT(*), " books")
		 ELSE " 1 book"
	END AS COUNT
FROM books GROUP BY author_lname;

SELECT title, author_lname, 
	CASE 
		 WHEN COUNT(*) = 1 THEN "1 book"
		 ELSE CONCAT(COUNT(*), " books")
	END AS COUNT
FROM books GROUP BY author_lname;

---59---
CREATE TABLE students (
	ID INT AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL
);

CREATE TABLE papers (
	title VARCHAR(255) NOT NULL,
	grade INT NOT NULL,
	student_id INT,
	FOREIGN KEY(student_id) 
		REFERENCES students(ID)
		ON DELETE CASCADE
);

---60---
INSERT INTO students (first_name) VALUES 
('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);

---61---
--inner join is the cross over of two tables 
--right join is the cross over of two tables and then everything in the subtable--

--inner join--
SELECT first_name, title, grade FROM students
INNER JOIN papers ON ID = student_id
ORDER BY grade DESC;
--right join--
SELECT first_name, title, grade FROM students
RIGHT JOIN papers ON students.id = papers.student_id
ORDER BY grade DESC;

---62---
--left join is the cross over of two tables and then everything in the primary table--
SELECT first_name, title, grade FROM students
LEFT JOIN papers ON students.id = papers.student_id;

---63---
SELECT 
	first_name, 
	IFNULL(title, 'MISSING'), 
	IFNULL(grade, 0)
FROM students
LEFT JOIN papers ON students.id = papers.student_id;

---64---
SELECT 
	first_name, 
	IFNULL(AVG(grade), 0) AS average
FROM students
LEFT JOIN papers 
	ON students.id = papers.student_id
GROUP BY students.id
ORDER BY average DESC;

---65---
SELECT 
	first_name, 
	IFNULL(AVG(grade), 0) AS average,
	CASE
		WHEN AVG(grade) < 75 OR AVG(grade) IS NULL THEN 'FAILING'
		ELSE 'PASSING'
	END AS passing_status
FROM students
LEFT JOIN papers 
	ON students.id = papers.student_id
GROUP BY students.id
ORDER BY average DESC;

---66---
CREATE TABLE reviewers (
	id INT AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR(100) NOT NULL
);
CREATE TABLE series (
	id INT AUTO_INCREMENT PRIMARY KEY,
	title VARCHAR(255) NOT NULL,
	released_year YEAR(4) NOT NULL,
	genre VARCHAR(100) NOT NULL
);
INSERT INTO series (title, released_year, genre) VALUES
    ('Archer', 2009, 'Animation'),
    ('Arrested Development', 2003, 'Comedy'),
    ("Bob's Burgers", 2011, 'Animation'),
    ('Bojack Horseman', 2014, 'Animation'),
    ("Breaking Bad", 2008, 'Drama'),
    ('Curb Your Enthusiasm', 2000, 'Comedy'),
    ("Fargo", 2014, 'Drama'),
    ('Freaks and Geeks', 1999, 'Comedy'),
    ('General Hospital', 1963, 'Drama'),
    ('Halt and Catch Fire', 2014, 'Drama'),
    ('Malcolm In The Middle', 2000, 'Comedy'),
    ('Pushing Daisies', 2007, 'Comedy'),
    ('Seinfeld', 1989, 'Comedy'),
    ('Stranger Things', 2016, 'Drama');
INSERT INTO reviewers (first_name, last_name) VALUES
    ('Thomas', 'Stoneman'),
    ('Wyatt', 'Skaggs'),
    ('Kimbra', 'Masters'),
    ('Domingo', 'Cortes'),
    ('Colt', 'Steele'),
    ('Pinkie', 'Petit'),
    ('Marlon', 'Crafford');
CREATE TABLE reviews (
	id INT AUTO_INCREMENT PRIMARY KEY,
	rating DECIMAL(2,1) NOT NULL,
	series_id INT,
	reviewer_id INT, 
	FOREIGN KEY(series_id) REFERENCES series(id),
	FOREIGN KEY(reviewer_id) REFERENCES reviewers(id)
);
INSERT INTO reviews(series_id, reviewer_id, rating) VALUES
    (1,1,8.0),(1,2,7.5),(1,3,8.5),(1,4,7.7),(1,5,8.9),
    (2,1,8.1),(2,4,6.0),(2,3,8.0),(2,6,8.4),(2,5,9.9),
    (3,1,7.0),(3,6,7.5),(3,4,8.0),(3,3,7.1),(3,5,8.0),
    (4,1,7.5),(4,3,7.8),(4,4,8.3),(4,2,7.6),(4,5,8.5),
    (5,1,9.5),(5,3,9.0),(5,4,9.1),(5,2,9.3),(5,5,9.9),
    (6,2,6.5),(6,3,7.8),(6,4,8.8),(6,2,8.4),(6,5,9.1),
    (7,2,9.1),(7,5,9.7),
    (8,4,8.5),(8,2,7.8),(8,6,8.8),(8,5,9.3),
    (9,2,5.5),(9,3,6.8),(9,4,5.8),(9,6,4.3),(9,5,4.5),
    (10,5,9.9),
    (13,3,8.0),(13,4,7.2),
    (14,2,8.5),(14,3,8.9),(14,4,8.9);

---67---
SELECT title, rating FROM reviews
INNER JOIN series
	ON series.id = reviews.series_id;

---68---
SELECT title, AVG(rating) AS avg_rating FROM reviews
INNER JOIN series
	ON series.id = reviews.series_id
GROUP BY series.id
ORDER BY avg_rating;

---69---
SELECT first_name, last_name, rating FROM reviewers
INNER JOIN reviews ON reviewers.id = reviews.reviewer_id;

---70---
SELECT title AS unreviewed_series FROM series
LEFT JOIN reviews ON series.id = reviews.series_id
WHERE rating IS NULL;

---71---
SELECT genre, ROUND(AVG(rating), 2) AS avg_rating FROM series 
JOIN reviews ON series.id = reviews.series_id
GROUP BY genre;

---72---
SELECT 
		first_name,
		last_name,
		COUNT(rating) AS COUNT,
		IFNULL(MIN(rating), 0) AS MIN,
		IFNULL(MAX(rating), 0) AS MAX,
		IFNULL(AVG(rating), 0) AS AVG,
		CASE
			WHEN COUNT(rating) >= 1 THEN 'ACTIVE'
			ELSE 'INACTIVE'
		END AS STATUS
	FROM reviewers
		LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id
	GROUP BY reviewers.id; 

SELECT 
		first_name,
		last_name,
		COUNT(rating) AS COUNT,
		IFNULL(MIN(rating), 0) AS MIN,
		IFNULL(MAX(rating), 0) AS MAX,
		IFNULL(AVG(rating), 0) AS AVG,
		IF(COUNT(rating) >= 1,  'ACTIVE', 'INACTIVE') AS STATUS
	FROM reviewers
		LEFT JOIN reviews ON reviewers.id = reviews.reviewer_id
	GROUP BY reviewers.id; 

---73---
SELECT 
		title, 
		rating, 
		CONCAT(first_name, " ", last_name) AS reviewer 
	FROM reviewers
	INNER JOIN reviews 
		ON reviewers.id = reviews.reviewer_id
	INNER JOIN series
		ON series.id = reviews.series_id
ORDER BY title;
	






