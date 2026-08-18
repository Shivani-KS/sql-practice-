------------------------------- 7. WHERE + GROUP BY ------------------------------------------------------

-- 1. Find the number of customers in each city who are older than 30.

SELECT city, COUNT(*) FROM Customers 
WHERE age > 30
GROUP BY city;

-- 2. Find the average salary in each city for customers whose salary is greater than ₹50,000.


SELECT city, 
    CAST(AVG(salary) AS DECIMAL(10,2)) AS Average_Salary
FROM Customers
WHERE salary > 50000
GROUP BY city;

-- 3. Find the total salary in each city for customers aged above 25.

SELECT city, 
    CAST(AVG(salary) AS DECIMAL(10,2)) AS Average_Salary
FROM Customers
WHERE salary > 50000
GROUP BY city;

-- 4. Find the number of male and female customers in each city.

SELECT city, 
    SUM(CASE WHEN gender = 'M' THEN 1 Else 0 END) AS Male_Customers,
    SUM(CASE WHEN gender = 'F' THEN 1 Else 0 END) AS Female_Customers
FROM Customers
GROUP BY city;

-- 5. Find the average age by city for customers whose age is between 25 and 35.

SELECT City, AVG(age) AS average_age FROM Customers
WHERE age BETWEEN 25 AND 35 
GROUP BY city;

-- 6. Find the highest salary in each city among customers who earn more than ₹40,000.

SELECT city, MAX(salary) FROM Customers
WHERE salary > 40000
GROUP BY city;



