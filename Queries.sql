
SELECT * FROM Customers;


-- 2. Display only the customer_name and city columns.

SELECT customer_name, city FROM Customers; 


-- 3. Find customers who are older than 30 years.

SELECT * FROM Customers WHERE age >30;


-- 4.Find all customers from Chennai.

SELECT * FROM Customers 
WHERE city = 'Chennai';


-- 5. Show customers from Chennai or Coimbatore.

SELECT * FROM Customers 
WHERE (city = 'Chennai' OR city = 'Coimbatore');


-- 6. Display customers whose age is between 25 and 35.

SELECT * FROM Customers 
WHERE age BETWEEN 25 AND 35;


-- 7. Find customers whose email is missing (NULL).

SELECT * FROM Customers
WHERE email IS NULL;


-- 8. Retrieve unique cities from the customers table.

SELECT DISTINCT city 
FROM Customers;


-- 9. Sort customers by age in descending order.

SELECT * FROM Customers
ORDER BY age DESC;


-- 10. Display the top 5 oldest customers.

SELECT TOP 5 * 
FROM Customers
ORDER BY age DESC;



