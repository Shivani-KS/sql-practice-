------------------------------ 5. GROUP BY ---------------------------------------------------------------

-- 1. Count the number of customers in each city.

SELECT city, COUNT(*) AS Number_of_customers FROM Customers
GROUP BY city;

-- 2. Find the average age in each city.

SELECT city, AVG(age) AS average_age FROM Customers 
GROUP BY city;

-- 3. Find the average salary in each city.

SELECT city, AVG(salary) AS average_salary FROM Customers 
GROUP BY city;

-- 4. Find the highest salary in each city.

SELECT city, MAX(salary) AS highest_salary FROM Customers 
GROUP BY city;

-- 5. Find the lowest salary in each city.

SELECT city, MIN(salary) AS minimum_salary FROM Customers 
GROUP BY city;

-- 6. Find the total salary paid to customers in each city.

SELECT city, SUM(salary) AS total_salary_paid FROM Customers 
GROUP BY city;

-- 7. Find the number of customers in each age group.

SELECT
    CASE
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 50 THEN '36-50'
        ELSE '51+'
    END AS age_group,
    COUNT(*) AS customer_count
FROM Customers
GROUP BY
    CASE
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 50 THEN '36-50'
        ELSE '51+'
    END;
-- 8. Find the number of customers for each gender.

SELECT gender, COUNT(*) AS Number_of_customers FROM Customers 
GROUP BY gender;

-- 9. Find the average salary for each gender.

SELECT gender, AVG(salary) AS average_salary FROM Customers
GROUP BY gender;

-- 10. Display cities ordered by number of customers from highest to lowest.

SELECT city, COUNT(*) AS Customer_Count
FROM Customers
GROUP BY city
ORDER BY Customer_Count DESC;


---------------------------- 6. MULTIPLE COLUMNS - GROUP BY ----------------------------------------------

-- 1. Count customers by city and gender.

SELECT city,gender,
COUNT(*) AS Customer_Count
FROM Customers
GROUP BY city, gender
ORDER BY city, gender;

-- 2. Find the average salary by city and gender.

SELECT city,gender,
AVG(salary) AS Average_salary
FROM Customers
GROUP BY city, gender
ORDER BY city, gender;

-- 3. Find the average age by city and gender.

SELECT city,gender,
AVG(age) AS Average_Age
FROM Customers
GROUP BY city, gender
ORDER BY city, gender;

-- 4. Find the maximum salary by city and gender.

SELECT city,gender,
MAX(salary) AS Maximum_Salary
FROM Customers
GROUP BY city, gender
ORDER BY city, gender;

-- 5. Find the total salary by city and gender.

SELECT city,gender,
SUM(salary) AS Total_Salary
FROM Customers
GROUP BY city, gender
ORDER BY city, gender;

-- 6. Find cities where each gender has at least 2 customers.

SELECT city FROM Customers
GROUP BY city
HAVING COUNT(CASE WHEN gender = 'M' THEN 1 END) >= 2
AND COUNT(CASE WHEN gender = 'F' THEN 1 END) >= 2;

-- 7. Find the average salary for each city + gender combination, showing only combinations where average salary exceeds ₹60,000.

SELECT city,gender,
CAST(AVG(salary) AS DECIMAL(10,2)) AS Average_Salary
FROM Customers
GROUP BY city, gender
HAVING AVG(salary) > 60000;

-- 8. Find the number of customers for each city + age group combination.

SELECT city,
    CASE
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 50 THEN '36-50'
        WHEN age >= 51 THEN '51+'
    END AS Age_Group,
    COUNT(*) AS Customer_Count
FROM Customers
GROUP BY city,
    CASE
        WHEN age BETWEEN 18 AND 25 THEN '18-25'
        WHEN age BETWEEN 26 AND 35 THEN '26-35'
        WHEN age BETWEEN 36 AND 50 THEN '36-50'
        WHEN age >= 51 THEN '51+'
    END
ORDER BY city, Age_Group;

-- 9. Find the highest-paid gender within each city.

WITH GenderSalary AS (
    SELECT
        city,
        gender,
        AVG(salary) AS average_salary
    FROM Customers
    GROUP BY city, gender
)
SELECT
    city,
    gender,
    average_salary
FROM (
    SELECT
        city,
        gender,
        average_salary,
        RANK() OVER (
            PARTITION BY city
            ORDER BY average_salary DESC
        ) AS rnk
    FROM GenderSalary
) t
WHERE rnk = 1;




