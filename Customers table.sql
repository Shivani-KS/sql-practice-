
CREATE DATABASE SQLPractice;

USE SQLPractice;
GO

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    age INT,
    email VARCHAR(100)
);

INSERT INTO customers (customer_id, customer_name, city, age, email) VALUES
(1, 'Alice', 'Chennai', 25, 'alice@email.com'),
(2, 'Bob', 'Coimbatore', 30, NULL),
(3, 'Charlie', 'Chennai', 22, 'charlie@email.com'),
(4, 'David', 'Madurai', 35, NULL),
(5, 'Eva', 'Coimbatore', 28, 'eva@email.com'),
(6, 'Arun', 'Chennai', 31, 'arun@email.com'),
(7, 'Priya', 'Madurai', 27, 'priya@email.com'),
(8, 'Rahul', 'Salem', 24, NULL),
(9, 'Anita', 'Chennai', 29, 'anita@email.com'),
(10, 'Karan', 'Coimbatore', 40, 'karan@email.com'),
(11, 'Aishwarya', 'Trichy', 33, 'aish@email.com'),
(12, 'Manoj', 'Chennai', 26, NULL),
(13, 'Sneha', 'Salem', 21, 'sneha@email.com'),
(14, 'Ajay', 'Madurai', 30, 'ajay@email.com'),
(15, 'Meera', 'Coimbatore', 38, NULL);


-- 1. Retrieve all records from the customers table.
SELECT *
FROM customers;


SELECT DB_NAME() AS CurrentDatabase;