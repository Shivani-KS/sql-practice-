
------------------------- 1: combining SELECT, WHERE, and ORDER BY -----------------------------------

--1. Display the names and cities of customers who are older than 25, ordered by age descending.

SELECT customer_name, city FROM Customers 
WHERE age >25 
ORDER BY age DESC;

--2. Display all customers except those from Madurai.

SELECT * FROM Customers 
WHERE city != 'Madurai';

--3. Show customer names and ages where age is between 25 and 35, ordered by name alphabetically.

SELECT customer_name, age  FROM Customers
WHERE age BETWEEN 25 AND 35 
ORDER BY customer_name;

--4. Display customers whose name starts with A, ordered by age descending.

SELECT * FROM Customers 
WHERE customer_name LIKE 'A%'
ORDER BY age DESC;

--5. Find customers whose age is not 30 and who belong to Chennai.

SELECT * FROM Customers 
WHERE age != 30 AND city = 'Chennai';


------------------------------- 2: logical operators -----------------------------------------------

-- 6. Find customers who are from Chennai and have a non-NULL email.

SELECT * FROM Customers 
WHERE city = 'Chennai' AND email IS NOT NULL;

-- 7. Display customers who are from Chennai, Coimbatore, or Madurai and whose age is greater than 28.

SELECT * FROM Customers 
WHERE city IN ('Chennai', 'Coimbatore', 'Madurai') AND age > 28;


---------------------------------- 3: NULL handling ------------------------------------------------

--1. Find the top 2 oldest customers whose email is NULL.

SELECT TOP 2 * FROM Customers 
WHERE email IS NULL
ORDER BY age DESC;

--2. Display customers whose email is NULL or whose age is less than 25.

SELECT * FROM Customers 
WHERE email IS NULL OR age <25;


----------------------------------- 4: DISTINCT ----------------------------------------------------

--1. Display all unique cities in alphabetical order.

SELECT DISTINCT city FROM Customers ORDER BY city;

--2. Display distinct ages greater than 25.

SELECT DISTINCT age FROM Customers WHERE age > 25; 

--3. Find the number of unique cities represented in the table.

SELECT COUNT(DISTINCT(city)) FROM Customers;

--4. Display unique combinations of city and age ordered by city.

SELECT DISTINCT city, age
FROM Customers 
ORDER BY city;

--5. Display distinct cities excluding Chennai.

SELECT DISTINCT city FROM Customers 
WHERE city != 'Chennai';


------------------------------------- 5: aliases (AS) ----------------------------------------------

--1. Display customer_name as Customer_Name and cities as Customer_City.

SELECT customer_name AS Customer_Name, city AS Customer_City
FROM Customers;

--2. Display age as Customer_Age and order by the alias.

SELECT age AS Customer_Age FROM Customers
ORDER BY Customer_Age;

--3. Display a calculated column called Age_After_10_Years.

SELECT customer_name,age,
      age + 10 AS Age_After_10_Years
FROM Customers;

--4. Display customer names in uppercase and alias the column as NAME_UPPER.

SELECT UPPER(customer_name) AS Name_Upper
FROM Customers;

--5. Display city as Location and age as Years, ordered by Years descending.

SELECT city AS location, age AS Years 
FROM Customers 
ORDER BY Years;