USE SQLPractice;
GO

------------------------------- 3. REGEXP ----------------------------------------------------------------

-- 1. Find customers whose names start with A using REGEXP.

SELECT *
FROM Customers
WHERE REGEXP_lIKE (Customer_Name, '^A');

-- 2. Find customers whose names end with n using REGEXP.

SELECT * FROM Customers 
WHERE REGEXP_LIKE ( Customer_Name, 'n$');

-- 3. Find customers whose names contain only alphabetic characters.

SELECT * FROM Customers
WHERE REGEXP_LIKE (Customer_Name, '^[A-Za-z]+$');

-- 4. Find customers whose names contain at least one number.

SELECT * FROM Customers 
WHERE REGEXP_LIKE (Customer_Name, '^[0-9]');

-- 5. Find customers whose names contain no numbers.

SELECT * FROM Customers 
WHERE NOT REGEXP_LIKE (Customer_Name, '^[0-9]');

-- 6. Find customers whose names start with either A, B, or C.

SELECT * FROM Customers 
WHERE REGEXP_LIKE (Customer_Name, '^[A|B|C]');

-- 7. Find customers whose names are exactly 5 characters long using REGEXP.

SELECT * FROM Customers
WHERE REGEXP_LIKE (Customer_Name, '^[A-Za-z]{5}');

-- 8. Find customers whose email addresses end with email.com.

SELECT * FROM Customers 
WHERE REGEXP_LIKE ( email, 'email\.com$');

-- 9. Find customers whose email addresses follow a basic valid email pattern.

SELECT *
FROM Customers
WHERE REGEXP_LIKE(
    email, '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$');
