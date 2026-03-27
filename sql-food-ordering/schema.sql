-- Create a database called FoodOrdering.
CREATE DATABASE FoodOrdering;
use FoodOrdering;

-- Create a Customers table that contains customer_id, name, email, and created_at
CREATE TABLE Customers (
	customer_id INT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	email VARCHAR(255) NOT NULL,
	created_at DATETIME 
);

-- Create MenuItems table that contains item_id, name, description, price, and availability
CREATE TABLE MenuItems(
	item_id INT PRIMARY KEY,
	name VARCHAR(100) NOT NULL,
	description VARCHAR(255),
	price DECIMAL(4,2) NOT NULL,
	availability BOOLEAN
);

-- Create an orders table that contains order_id, customer_id, and date.
CREATE TABLE Orders(
	order_id INT PRIMARY KEY,
	customer_id INT NOT NULL,
	date DATETIME,
	FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create an OrdersItems table that contains order_item_id, order_id, item_id, quantity
CREATE TABLE OrdersItems(
	order_item_id INT PRIMARY KEY,
	order_id INT NOT NULL,
	item_id INT NOT NULL,
	quantity INT NOT NULL,
	FOREIGN KEY (order_id) REFERENCES Orders(order_id),
	foreign key (item_id) references MenuItems(item_id)
);

-- Add a primary and foreign key constraints on the id fields

-- Insert sample data into the tables to simulate customer data
INSERT INTO Customers
VALUES
(1, 'Agnes Smith', 'agnes002@example.com', NOW()),
(2, 'Mel Nun', 'mel238@example.com', NOW()),
(3, 'Sonia Dug', 'sonia@example.com', NOW());

INSERT INTO MenuItems
VALUES
(1, 'Hotdog', 'Smoking hotdog', 2.99, TRUE),
(2, 'Yoghurt', 'Cool yoghurt', 1.49, TRUE),
(3, 'Pizza', '12-inch meat feast', 9.99, TRUE),
(4, 'Fries', 'Golden fried potato fries', 2.49, TRUE);

INSERT INTO Orders
VALUES
(1, 1, '2015-07-17 10:15:00'),
(2, 2, '2022-04-21 12:30:00'),
(3, 3, '2024-10-31 14:45:00');

INSERT INTO OrdersItems
VALUES
(1, 1, 1, 2), -- Order 1 includes 2 hotdogs
(2, 1, 4, 1), -- Order 1 includes 1 Fries
(3, 2, 2, 1), -- Order 2 includes 1 Yoghurt
(4, 3, 3, 1), -- Order 3 includes 1  Pizza
(5, 3, 4, 2); -- Order 3 includes 2 Fries
