-- 1/6
SELECT * FROM employee
WHERE firstname = 'Antonio'

SELECT * FROM employee
WHERE dateofbirth > '01-01-1979'

SELECT * FROM employee
WHERE gender = 'M'

SELECT * FROM employee
WHERE lastname LIKE 'T%'

SELECT * FROM employee
WHERE hiredate = '01-01-1988'

SELECT * FROM employee
WHERE lastname LIKE 'J%' AND hiredate = '01-01-1988'

-- 2/6
SELECT * FROM employee
WHERE firstname = 'Antonio'
ORDER BY lastname

SELECT * FROM employee
ORDER BY firstname

SELECT * FROM employee
WHERE gender = 'M'
ORDER BY hiredate DESC

SELECT * FROM customer
-- 3/6
SELECT region FROM businessentity
UNION ALL
SELECT regionname FROM customer

SELECT region FROM businessentity
UNION
SELECT regionname FROM customer

SELECT region FROM businessentity
INTERSECT
SELECT regionname FROM customer

-- 4/6
CREATE TABLE IF NOT EXISTS "Order" (orderID INT PRIMARY KEY, 
					  				orderDate DATE CHECK(orderdate >= '2010-01-01')
					 				)
					 
CREATE TABLE IF NOT EXISTS Product (
	productID INT PRIMARY KEY,
	productName VARCHAR(100),
	cost DECIMAL(10,2),
	price DECIMAL(10,2) CHECK (price >= 1.2 * cost)
)

CREATE TABLE IF NOT EXISTS Product (
	description VARCHAR(500) UNIQUE
)