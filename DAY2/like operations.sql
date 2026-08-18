------------------------------- 1. LIKE & String Filtering-----------------------------------------------

-- 1. Find all customers whose name starts with the letter A.

SELECT * FROM Customers 
WHERE Customer_Name LIKE 'A%';

-- 2. Find customers whose name ends with the letter n.

SELECT * FROM Customers 
WHERE customer_name LIKE '%n';

-- 3. Find customers whose city contains the substring "oim".

SELECT Customer_Name, city 
FROM Customers 
WHERE city LIKE '%oim%';

-- 4. Find customers whose name has exactly 5 characters.

SELECT Customer_Name FROM Customers 
WHERE Customer_Name LIKE '_____';

-- 5. Find customers whose name has at least 6 characters.

SELECT Customer_Name FROM Customers 
WHERE Customer_Name LIKE '%______';

-- 6. Find customers whose city starts with "Ch".

SELECT Customer_Name, city FROM Customers
WHERE city LIKE 'Ch%';

-- 7. Find customers whose second character in their name is 'a'.

SELECT * FROM Customers 
WHERE customer_name LIKE '_a%';

-- 8. Find customers whose name contains either 'a' or 'e'.

SELECT * FROM Customers 
WHERE Customer_Name LIKE '%a%' 
OR Customer_Name LIKE '%e%';

-- 9. Find customers whose city does not start with "C".

SELECT Customer_Name AS Name, city FROM Customers
WHERE city NOT LIKE 'C%';

-- 10. Find customers whose name starts with A and has exactly 5 characters.

SELECT * FROM Customers
WHERE Customer_Name LIKE 'A____';