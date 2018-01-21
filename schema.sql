CREATE TABLE users(
	email VARCHAR(255) PRIMARY KEY,
	created_at TIMESTAMP DEFAULT NOW()
);


INSERT INTO users (email) 
VALUES ('Katie34@yahoo.com'), ('Tunde@gmail.com');



--1-- FIND THE EARLIEST DATE A USER JOINED WHERE DATE IS FORMATED LIKE (October 25st 1993)
SELECT DATE_FORMAT(created_at, '%M %D %Y') AS earliest_date FROM users ORDER BY created_at LIMIT 1;
SELECT DATE_FORMAT(MIN(created_at), '%M %D %Y' ) as earliest_date FROM users;
--2-- FIND THE EMAIL OF THE EARLIEST USER
SELECT email, DATE_FORMAT(created_at, '%M %D %Y') AS earliest_date FROM users ORDER BY created_at LIMIT 1;
--3-- GIVE US A LIST OF MONTHS WITH HOW MANY USERS HAVE JOINED IN THOSE MONTHS
SELECT
	MONTHNAME(created_at) AS month,
	COUNT(email)
FROM users 
GROUP BY month 
ORDER BY 2 DESC;
--4--
SELECT
	COUNT(*) AS yahoo_users
FROM users
WHERE email LIKE '%@yahoo.com';
--5--
SELECT
COUNT(*)
FROM users
GROUP BY email 
CASE WHERE email LIKE '%@gmail.com' THEN 'gmail'
CASE WHERE email LIKE '%@yahoo.com' THEN 'yahoo'
CASE WHERE email LIKE '%@hotmail.com' THEN 'hotmail'
ELSE 'other' AS provider;

SELECT
	CASE 
		WHEN email LIKE '%@gmail.com' THEN 'gmail'
		WHEN email LIKE '%@yahoo.com' THEN 'yahoo'
		WHEN email LIKE '%@hotmail.com' THEN 'hotmail'
		ELSE 'other'
	END AS provider,
	COUNT(*) AS total_users
FROM users
GROUP BY provider
ORDER BY total_users DESC;



;




