-- PROJECT: Data Digger

/*

OBJECTIVE: 
"Data Digger" is a practical SQL project that provides hands-on experience in managing a            
MySQL database using CRUD operations, clauses, operators, aggregate functions, primary keys,
and foreign keys. Students will design and manipulate a structured relational database for an 
E-Commerce Store to gain deeper insights into SQL query execution. 

*/

/*

PROJECT SCOPE:
Students will work on the following four relational tables:

1. Customers Table
Fields:
-CustomerId
-Name
-Email
-Address

•Queries to perform:
1. Insert at least 5 sample customers into the Customers table.
2. Retrieve all customer details.
3. Update a customer's address.
4. Delete a customer using their CustomerID.
5. Display all customers whose name is 'Alice'.

2. Orders Table
Fields:
-OrderId
-CustomerId
-OrderDate
-TotalAmount

Queries to perform:
Insert at least 5 sample orders into the Orders table.
Retrieve all orders for a specific customer.
Update an order's total amount.
Delete an order using its OrderID.
Retrieve orders placed in the last 30 days.
Retrieve the highest, lowest, and average order amount using aggregate functions.

3. Products Table
Fields:
-ProductId
-ProductName
-Price
-Stock

Queries to perform:
Insert at least 5 sample products into the Products table.
Retrieve all products sorted by price in descending order.
Update the price of a specific product.
Delete a product if it's out of stock.
Retrieve products whose price is between ₹500 and ₹2000.
Retrieve the most expensive and cheapest product using MAX() and MIN().

4. OrderDetails Table
Fields:
-OrderDetailId
-OrderId
-ProductId
-Quantity
-SubTotal

Queries to perform:
Insert at least 5 sample order details into the OrderDetails table.
Retrieve all order details for a specific order.
Calculate total revenue generated from all orders using SUM().
Retrieve the top 3 most ordered products.
Count how many times a specific product has been sold using COUNT().

*/

-- ==== Start of SQL Script ====

-- Create the database
DROP DATABASE IF EXISTS DataDigger;
CREATE DATABASE DataDigger;
USE DataDigger;

-- 1. Customers Table
CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL UNIQUE,
    Address VARCHAR(100) NOT NULL 
);

-- Insert at least 5 sample customers 
INSERT INTO Customers (Name, Email, Address) VALUES
('Amit Shah', 'amit.shah@gmail.com', 'Ahmedabad, Gujarat'),
('Maya Nair', 'maya.nair@yahoo.com', 'Kochi, Kerala'),
('Alice Thomas', 'alice.t@gmail.com', 'Bengaluru, Karnataka'),
('Ram Kumar', 'ramkumar123@gmail.com', 'Chennai, Tamil Nadu'),
('Neha Patel', 'neha.patel@rediffmail.com', 'Mumbai, Maharashtra');

-- 2. Orders Table
CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT NOT NULL,
    OrderDate DATE NOT NULL,
    TotalAmount DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

-- Insert at least 5 sample orders
INSERT INTO Orders (CustomerID, OrderDate, TotalAmount) VALUES
(1, '2025-07-10', 3500.00),
(3, '2025-07-29', 1100.50),
(2, '2025-07-20', 2200.00),
(4, '2025-06-28', 1550.75),
(5, '2025-07-25', 500.00);

-- 3. Products Table
CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(50) NOT NULL UNIQUE,
    Price DECIMAL(10,2) NOT NULL,
    Stock INT NOT NULL DEFAULT 0
);

-- Insert at least 5 sample products
INSERT INTO Products (ProductName, Price, Stock) VALUES
('Samsung Mobile', 12000.00, 10),
('Phillips Mixer Grinder', 1800.00, 5),
('Tata Tea Package', 550.00, 25),
('Inspiron Laptop', 50000.00, 3),
('Sony Headphones', 2000.00, 0);

-- 4. OrderDetails Table
CREATE TABLE OrderDetails (
    OrderDetailID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT NOT NULL UNIQUE,
    ProductID INT NOT NULL UNIQUE,
    Quantity INT NOT NULL DEFAULT 0,
    SubTotal DECIMAL(10,2) NOT NULL DEFAULT 0.00,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Insert at least 5 sample order details
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, SubTotal) VALUES
(1, 1, 1, 12000.00),
(1, 2, 1, 1800.00),
(2, 3, 2, 1100.00),
(3, 5, 1, 2000.00),
(4, 4, 1, 50000.00);

-- ==== Example Queries to Perform ====

-- Customers Table Queries

-- Retrieve all customer details
SELECT * FROM Customers;

-- Update a customer's address
UPDATE Customers SET Address = 'Pune, Maharashtra' WHERE CustomerID = 2;

-- Delete a customer using their CustomerID
DELETE FROM Customers WHERE CustomerID = 5;

-- Display all customers whose name is 'Alice'
SELECT * FROM Customers WHERE Name LIKE 'Alice%';

-- Orders Table Queries

-- Retrieve all orders made by a specific customer (e.g., CustomerID = 3)
SELECT * FROM Orders WHERE CustomerID = 3;

-- Update an order’s total amount
UPDATE Orders SET TotalAmount = 2500.00 WHERE OrderID = 2;

-- Delete an order using its OrderID
DELETE FROM Orders WHERE OrderID = 4;

-- Retrieve orders placed in the last 30 days
SELECT * FROM Orders WHERE OrderDate >= CURDATE() - INTERVAL 30 DAY;

-- Retrieve highest, lowest, and average order amount
SELECT MAX(TotalAmount) AS Highest, MIN(TotalAmount) AS Lowest, AVG(TotalAmount) AS Average FROM Orders;

-- Products Table Queries

-- Retrieve all products sorted by price in descending order
SELECT * FROM Products ORDER BY Price DESC;

-- Update the price of a specific product
UPDATE Products SET Price = 1900.00 WHERE ProductID = 2;

-- Delete a product if it’s out of stock
DELETE FROM Products WHERE Stock = 0;

-- Retrieve products whose price is between ₹500 and ₹2000
SELECT * FROM Products WHERE Price BETWEEN 500 AND 2000;

-- Retrieve the most expensive and cheapest product
SELECT MAX(Price) AS Most_Expensive, MIN(Price) AS Cheapest FROM Products;

-- OrderDetails Table Queries

-- Retrieve all order details for a specific order (e.g., OrderID = 1)
SELECT * FROM OrderDetails WHERE OrderID = 1;

-- Calculate total revenue generated from all orders using SUM()
SELECT SUM(SubTotal) AS Total_Revenue FROM OrderDetails;

-- Retrieve the top 3 most ordered products
SELECT ProductID, SUM(Quantity) AS TotalOrdered FROM OrderDetails
GROUP BY ProductID
ORDER BY TotalOrdered DESC
LIMIT 3;

-- Count how many times a specific product has been sold (e.g., ProductID = 1)
SELECT COUNT(*) AS Times_Sold FROM OrderDetails WHERE ProductID = 1;

-- ==== End of Script ====

