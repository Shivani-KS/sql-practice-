---------------------------------------- 8. HAVING -------------------------------------------------------


-- 1. Find cities having more than 5 customers.

SELECT city,
    COUNT(*) AS Customer_Count
FROM Customers
GROUP BY city
HAVING COUNT(*) > 5;

-- 2. Find cities having an average salary greater than ₹30,000.

SELECT city, AVG(salary) AS average_salary
FROM Customers GROUP BY city
HAVING AVG(salary) > 30000;

-- 3. Find cities where the total salary exceeds ₹100,000.

SELECT city, SUM(salary) AS total_salary
FROM Customers GROUP BY city
HAVING SUM(salary) > 100000;

-- 4. Find cities where the maximum salary is greater than ₹500,00.

SELECT city, MAX(salary) AS total_salary
FROM Customers GROUP BY city
HAVING MAX(salary) > 50000;

-- 5. Find cities having at least 3 customers older than 20.

SELECT city,
COUNT(CASE WHEN age > 20 THEN 1 END) AS Customers_Above_20
FROM Customers
GROUP BY city
HAVING COUNT(CASE WHEN age > 20 THEN 1 END) >= 3;

-- 6. Find cities where the average age is greater than 30.

SELECT city, AVG(age) AS average_age 
FROM Customers
GROUP BY city
HAVING AVG(age) > 30;

-- 7. Find genders having more than 5 customers.

SELECT gender,
COUNT(*) AS Customer_Count
FROM Customers
GROUP BY gender
HAVING COUNT(*) > 5;

-- 8. Find cities where the difference between the highest and lowest salary is greater than ₹10,000.

SELECT city, MAX(salary) - MIN(salary) AS salary_difference
FROM Customers
GROUP BY city
HAVING MAX(salary) - MIN(salary) >10000;