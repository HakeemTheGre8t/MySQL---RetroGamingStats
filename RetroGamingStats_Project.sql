-- Create a new database named RetroGamingStats
CREATE DATABASE RetroGamingStats;

-- Create a table for storing product information 
CREATE TABLE Products (
productID INT PRIMARY KEY AUTO_INCREMENT, -- Unique ID for each product, auto-increments
name VARCHAR(100) NOT NULL,
DESCRIPTION TEXT,
Price DECIMAL(10,2),
stock_quantity INT
);

SHOW TABLES;
ALTER TABLE Products RENAME TO tbl_Products; -- Rename the table for better reference.

-- Create a table for storing customer information
CREATE TABLE tbl_Customers (
customerID INT PRIMARY KEY AUTO_INCREMENT, -- Unique ID for each customer, auto-increment
first_Name VARCHAR(50) NOT NULL,           -- Customer's first name
last_Name VARCHAR(50) NOT NULL,            -- Customer's last name
email VARCHAR(100) UNIQUE,                 -- Customer's email, must be unique
phone_Number VARCHAR(15)                   -- Customer's phone number
);

-- Create a table for storing game statistics
CREATE TABLE tbl_GameStats (
gameID INT PRIMARY KEY AUTO_INCREMENT, -- Unique ID for each game entry, auto-increments
customerID INT,                        -- References the customer who played the game
game_Name VARCHAR(100),                -- Name of the game
times_Played INT,                      -- Number of times the game was played
total_Playtime INT,                    -- Total time spent playing the game (in minutes)
average_High_Score DECIMAL(5, 2),      -- Average high score with 2 decimal places
FOREIGN KEY (customerID) REFERENCES tbl_Customers(customerID) -- Links to the Customers table
);



-- The ON DELETE CASCADE ensures that if a customer or product is deleted, related purchases are also deleted automatically.
CREATE TABLE tbl_purchase (
purchaseID INT PRIMARY KEY AUTO_INCREMENT,  -- Unique ID for each purchase entry, auto-increment
customerID INT,                             -- References the customer who made the purchase
productID INT,                              -- References the purchased product
purchase_Date DATE,                         -- Date of purchase
quantity INT,                               -- Quantity of the product purchased
FOREIGN KEY (customerID) REFERENCES tbl_Customers(customerID) ON DELETE CASCADE, -- Links to Customers
FOREIGN KEY (productID) REFERENCES tbl_Products(productID) ON DELETE CASCADE -- Links to products
);

-- Create a table for storing customer reviews of products 
CREATE TABLE tbl_Reviews (
reviewID INT PRIMARY KEY AUTO_INCREMENT,  -- Unique ID for each review, auto-increments 
gameID INT,                               -- References the game being reviewed
ratingID INT CHECK (rating >= 1 AND rating <= 5), -- Rating (must be between 1 and 5)
review_Text TEXT,                         -- Text of the review
review_Date DATE,                         -- Date the review was submitted
FOREIGN KEY (gameID) REFERENCES tbl_gamestats(gameID) ON DELETE CASCADE -- Links to GameStats
);

SHOW TABLES;