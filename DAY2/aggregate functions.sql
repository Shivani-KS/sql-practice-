
USE SQLPractice;
GO


SELECT DB_NAME() AS CurrentDatabase;

------------------------------- 4. AGGREGATE FUNCTIONS ---------------------------------------------------

-- 1. Find the total number of customers.

SELECT COUNT(customer_id) FROM Customers;

-- 2. Find the average age of customers.

SELECT AVG(age) FROM Customers;

-- 3. Find the minimum and maximum age.

SELECT MIN(age) FROM Customers;
SELECT MAX(age) FROM Customers;

-- 4. Find the average salary of all customers.

SELECT AVG(salary) FROM Customers;

-- 5. Find the total salary paid to all customers.

SELECT SUM(salary) FROM Customers;


-- 6. Find the highest salary.

SELECT MAX(salary) AS Highest_salary FROM Customers;

-- 7. Find the lowest salary.

SELECT MIN(salary) AS Lowest_salary FROM Customers;

-- 8. Count how many customers have a non-null city.

SELECT COUNT(customer_id) FROM Customers 
WHERE city IS NOT NULL; 

-- 9. Count the number of unique cities.

SELECT COUNT(DISTINCT(city)) FROM Customers;

-- 10. Find the difference between the highest and lowest salary.

SELECT MAX(salary) - MIN(salary) AS Salary_difference 
FROM Customers;

