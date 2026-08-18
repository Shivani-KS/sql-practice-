USE SQLPractice;
GO

SELECT DB_NAME() AS CurrentDatabase;

SELECT * FROM Customers;

---------------------------------- 2. String Functions ---------------------------------------------------

-- 1. Display every customer's name in uppercase.

SELECT UPPER(Customer_Name) FROM Customers;


-- 2. Display every customer's city in lowercase.

SELECT LOWER(city) FROM Customers;

-- 3. Display the customer's name along with the length of their name.

SELECT Customer_Name, LEN(Customer_Name)
FROM Customers;

-- 4. Display the first 3 characters of each customer's name.

SELECT Customer_Name, LEFT(Customer_Name,3) AS First_3_characters
FROM Customers;

-- 5. Display the last 2 characters of each customer's city.

SELECT Customer_Name, city, RIGHT(city,2) AS last_2_characters 
FROM Customers;

-- 6. Create a column containing:
          --Customer Name - City
          --Example: Alice - Chennai

SELECT CONCAT(Customer_Name, ' - ', city) AS Customer_Name_City
FROM Customers;

-- 7. Remove leading and trailing spaces from the customer name.

SELECT TRIM(Customer_Name) AS clean_name
FROM Customers;

-- 8. Replace the city name "Chennai" with "Madras" in the output.

SELECT Customer_Name, REPLACE(city,'Chennai', 'Madras') AS City
FROM Customers;

-- 9. Find customers whose names contain the letter "a" at least twice.

SELECT * FROM Customers 
WHERE Customer_Name LIKE '%a%a%';