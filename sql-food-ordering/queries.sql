-- find the average price of our items in the MenuItems table
USE foodordering;

SELECT * FROM MenuItems;

SELECT AVG(price) AS Average_price
FROM MenuItems;

-- calculate the total quantity of items ordered across 
-- all orders from the OrderItems table

SELECT * FROM OrdersItems;

SELECT SUM(quantity) AS TotalQuantity
FROM OrdersItems;

-- group orders by customer_id and count the total number of orders each customer has placed
SELECT * FROM Orders;

SELECT customer_id, COUNT(order_id) AS numOfOrder
FROM Orders
GROUP BY customer_id;

-- use distinct to retrieve a list of unique item_ids from OrdersItems to identify 
-- which items have been ordered 

SELECT DISTINCT item_id
FROM OrdersItems;

-- Assume some names in the customers table contains extra spaces.
-- Use the TRIM function to remove these spaces when displaying results

SELECT * FROM Customers;

INSERT INTO Customers
VALUES
(4, ' Amy Williams ', 'amy@example.com', NOW());

SELECT name, TRIM(name) AS TrimmedName
FROM Customers;
