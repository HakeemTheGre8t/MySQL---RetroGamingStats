-- Create a new database named RetroGamingStats
CREATE DATABASE RetroGamingStats;
USE RetroGamingStats;

-- Create a table for storing customer information
CREATE TABLE tbl_Customers (
customerID INT PRIMARY KEY AUTO_INCREMENT, -- Unique ID for each customer, auto-increment
first_Name VARCHAR(50) NOT NULL,           -- Customer's first name
last_Name VARCHAR(50) NOT NULL,            -- Customer's last name
email VARCHAR(100) UNIQUE,                 -- Customer's email, must be unique
phone_Number VARCHAR(15)                   -- Customer's phone number
);

-- Sample Data being inserted into the tbl_Customers table
insert into tbl_Customers (first_Name, last_Name, email, phone_Number) values ('Sophia', 'Young', 'sarah.jones@example.com', '07800 765432');
insert into tbl_Customers (first_Name, last_Name, email, phone_Number) values ('Asher', 'Hill', 'amanda.white@example.com', '07500 123456');
insert into tbl_Customers (first_Name, last_Name, email, phone_Number) values ('Hannah', 'Campbell', 'kevin.miller@example.com', '07788 234567');
insert into tbl_Customers (first_Name, last_Name, email, phone_Number) values ('Julian', 'Rivera', 'jane.smith@example.com', '07622 654321');
insert into tbl_Customers (first_Name, last_Name, email, phone_Number) values ('Olivia', 'Clark', 'lisa.johnson@example.com', '07500 123456');
insert into tbl_Customers (first_Name, last_Name, email, phone_Number) values ('Liam', 'Garcia', 'alexander.wang@example.com', '07588 123456');
insert into tbl_Customers (first_Name, last_Name, email, phone_Number) values ('Aiden', 'Jackson', 'john.doe@example.com', '07500 123456');
insert into tbl_Customers (first_Name, last_Name, email, phone_Number) values ('Wyatt', 'Richardson', 'david.brown@example.com', '07500 123456');
insert into tbl_Customers (first_Name, last_Name, email, phone_Number) values ('Amelia', 'Lewis', 'lisa.johnon@example.com', '07788 234567');
insert into tbl_Customers (first_Name, last_Name, email, phone_Number) values ('Oliver', 'White', 'david.bown@example.com', '07800 765432');


SELECT * FROM tbl_Customers;

SET FOREIGN_KEY_CHECKS = 0;   -- Disable foreign key checks
TRUNCATE TABLE tbl_Customers; -- Truncate or delete data in table
SET FOREIGN_KEY_CHECKS = 1; -- Renable foreign key checks



-- Create a table for storing product information 
CREATE TABLE tbl_Products (
productID INT PRIMARY KEY AUTO_INCREMENT, -- Unique ID for each product, auto-increments
name VARCHAR(100) NOT NULL,               -- Product name (text up to 100 characters)
DESCRIPTION TEXT,                         -- Product description (text)
Price DECIMAL(10,2),                      -- Product price with 3 decimal places
stock_quantity INT                        -- Quantity available in stock
);

SELECT * FROM tbl_Products;

-- Begin by selecting the table you want to alter
ALTER TABLE tbl_Products   
-- Specify that you want to modify an exisitng column in this table
MODIFY COLUMN Price DECIMAL(10,3);
-- Define the new data type and precision/scale for the column
-- I've set the column 'price' to a DECIMAL type with 10 digits in total, 
-- of which 3 are reserved for decimal places.

-- Show the tables you have under the database (RetroGamingStats)
SHOW TABLES; 

-- Sample Data being inserted into the tbl_Products table
insert into tbl_Products (Name , Description, Price, Stock_quantity) values ('Hyperkin RetroN 5', 'An old-school gaming system that captures the essence of retro gaming culture', '750', 205);
insert into tbl_Products (Name , Description, Price, Stock_quantity) values ('Sega CD', 'A vintage gaming system that showcases the evolution of video game technology', '3100', 35);
insert into tbl_Products (Name , Description, Price, Stock_quantity) values ('Atari 2600', 'A beloved gaming device that has left a lasting impact on the gaming community', '2300', 330);
insert into tbl_Products (Name , Description, Price, Stock_quantity) values ('Nintendo DS', 'An old-school console that pays homage to the pioneers of the gaming industry', '3850', 90);
insert into tbl_Products (Name , Description, Price, Stock_quantity) values ('Anbernic RG351P', 'A classic gaming console with a wide variety of games from the 80s and 90s', '800', 395);
insert into tbl_Products (Name , Description, Price, Stock_quantity) values ('Sony PlayStation', 'A classic gaming device that captures the magic of playing games with friends', '2900', 165);
insert into tbl_Products (Name , Description, Price, Stock_quantity) values ('WonderSwan', 'A nostalgic gaming platform that transports players back to the golden age of video games', '1850', 235);
insert into tbl_Products (Name , Description, Price, Stock_quantity) values ('Sega Saturn', 'A popular console that revolutionized the gaming industry with its innovative features', '850', 320);
insert into tbl_Products (Name , Description, Price, Stock_quantity) values ('Nintendo 3DS', 'An iconic gaming console that defined a generation of gamers with its groundbreaking titles', '2250', 55);
insert into tbl_Products (Name , Description, Price, Stock_quantity) values ('TurboGrafx-16', 'A retro gaming console that preserves the heritage of classic video games', '700', 85);


SELECT * FROM tbl_GameStats;


-- Create a table for storing game statistics
CREATE TABLE tbl_GameStats (
gameID INT PRIMARY KEY AUTO_INCREMENT, -- Unique ID for each game entry, auto-increments
customerID INT,                        -- References the customer who played the game
game_Name VARCHAR(100),                -- Name of the game
times_Played INT,                      -- Number of times the game was played
total_Playtime INT,                    -- Total time spent playing the game (in minutes)
average_High_Score DECIMAL(5, 2),      -- Average high score with 2 decimal places
CONSTRAINT customerID 
FOREIGN KEY (customerID) REFERENCES tbl_Customers(customerID) -- Links to the Customers table
ON DELETE CASCADE 
ON UPDATE CASCADE
);


insert into tbl_GameStats (customerID, game_Name, times_Played, total_Playtime, average_High_Score) values (1, 'Undersea Exploration', 30, 210, 113);
insert into tbl_GameStats (customerID, game_Name, times_Played, total_Playtime, average_High_Score) values (2, 'Monster Mayhem', 375, 150, 111);
insert into tbl_GameStats (customerID, game_Name, times_Played, total_Playtime, average_High_Score) values (3, 'Cybernetic Warfare', 65, 510, 79);
insert into tbl_GameStats (customerID, game_Name, times_Played, total_Playtime, average_High_Score) values (4, 'Spy Thriller', 330, 260, 55);
insert into tbl_GameStats (customerID, game_Name, times_Played, total_Playtime, average_High_Score) values (5, 'Battle Royale', 255, 310, 124);
insert into tbl_GameStats (customerID, game_Name, times_Played, total_Playtime, average_High_Score) values (6, 'Magic Academy', 175, 690, 84);
insert into tbl_GameStats (customerID, game_Name, times_Played, total_Playtime, average_High_Score) values (7, 'Ancient Ruins', 175, 130, 65);
insert into tbl_GameStats (customerID, game_Name, times_Played, total_Playtime, average_High_Score) values (8, 'Ancient Ruins', 245, 670, 51);
insert into tbl_GameStats (customerID, game_Name, times_Played, total_Playtime, average_High_Score) values (9, 'Underwater Odyssey', 305, 500, 123);
insert into tbl_GameStats (customerID, game_Name, times_Played, total_Playtime, average_High_Score) values (10, 'Spy Mission', 20, 810, 105);

SELECT * FROM tbl_GameStats;

-- The ON DELETE CASCADE ensures that if a customer or product is deleted, related purchases are also deleted automatically.
CREATE TABLE tbl_Purchase (
purchaseID INT PRIMARY KEY AUTO_INCREMENT,  -- Unique ID for each purchase entry, auto-increment
customerID INT,                             -- References the customer who made the purchase
productID INT,                              -- References the purchased product
purchase_Date DATE,                         -- Date of purchase
quantity INT,                               -- Quantity of the product purchased
FOREIGN KEY (customerID) REFERENCES tbl_Customers(customerID) ON DELETE CASCADE ON UPDATE CASCADE, -- Links to Customers
FOREIGN KEY (productID) REFERENCES tbl_Products(productID) ON DELETE CASCADE ON UPDATE CASCADE -- Links to products
);

-- Alter the foreign key on customerID in tbl_Purchase to add referential actions
ALTER TABLE tbl_Purchase
DROP FOREIGN KEY fk_customerID, -- Remove the existing foreign key
ADD CONSTRAINT fk_customerID -- Add a new one with CASCADE actions
FOREIGN KEY (customerID)
REFERENCES tbl_customers(customerID)
ON DELETE CASCADE -- If a customer is deleted, their purchases will also be deleted
ON UPDATE CASCADE; -- If a customer's ID is updated, the change will reflect in Purchases


-- Insert sample data into tbl_Purchase to record customer purchases 
 -- Each row connects a customer to a product, specifying the purhcase date and quantity.
INSERT INTO tbl_Purchase (customerID, productID, purchase_Date, quantity)
VALUES
(1,2, '2024-11-15', 3), -- Customer 1 bought 3 units of Product 2 on 15th November 2024
(2,3, '2024-11-14', 1), -- Customer 2 bought 1 unit of Product 3 on 14th November 2024
(3,1, '2024-11-13', 5); -- Customer 3 bought 5 units of Product 1 on 13th November 2024

SELECT * FROM tbl_Purchase;

SHOW CREATE TABLE tbl_Purchase;

-- Create a table for storing customer reviews of products 
CREATE TABLE tbl_Reviews (
reviewID INT PRIMARY KEY AUTO_INCREMENT,  -- Unique ID for each review, auto-increments 
gameID INT,                               -- References the game being reviewed
ratingID INT CHECK (ratingID BETWEEN 1 AND 5), -- Rating (must be between 1 and 5)
review_Text TEXT,                         -- Text of the review
review_Date DATE,                         -- Date the review was submitted
FOREIGN KEY (gameID) REFERENCES tbl_GameStats(gameID) ON DELETE CASCADE ON UPDATE CASCADE -- Links to GameStats
);


-- Alter the foreign key on productID in tbl_Reviews to add referential actions
ALTER TABLE tbl_Reviews
DROP FOREIGN KEY fk_productID, -- Remove the existing foreign key
ADD CONSTRAINT fk_productID -- Add a new one with CASCADE actions
FOREIGN KEY (productID)
REFERENCES tbl_Products(productID)
ON DELETE CASCADE -- If a product is deleted, related reviews will be deleted
ON UPDATE CASCADE; -- If a product's ID is updated, changes will reflect in Reviews


SELECT * FROM tbl_Reviews;

-- Insert sample data into tbl_Reviews to store customer feedback on games and products
-- Each row links a game and product to a review comment.
INSERT INTO tbl_Reviews (gameID, ratingID, review_Text, review_Date)
VALUES
(4,2, 'Amazing gameplay and product quality!', '2022-10-10'), -- Review for Game 1 and Product 2 
(2,3, 'Good value for money, but could improve.','2023-10-10'), -- Review for Game 2 and Product 3
(3,1, 'Loved the game, the product works great,','2024-10-10'); -- Review for Game 3 and Product 1


-- Advance Queries
-- Dividing 'total_Playtime' by 'times_Played' gives the average playtime for each game.
-- The 'WHERE' times_Played > 0 ensures there's no division by zero.
SELECT game_Name, total_Playtime / times_Played AS avg_Playtime
FROM tbl_GameStats
WHERE times_Played > 0; 


-- SUM(total_Playtime) adds up the playtimes for all games played by a specific customer. 
-- 'GROUP BY cusutomerID' groups the data by customerID, so each row represents a single customer.
SELECT customerID, SUM(total_Playtime) AS total_playtime
FROM tbl_GameStats
GROUP BY customerID;


-- Select the customerID and game_Name columns for output
SELECT customerID, game_Name,
-- Calculate the total times each game was played by a customer
SUM(times_Played) AS total_times_played
-- From the tbl_GameStats table
FROM tbl_GameStats 
-- Group the data by customer and game
GROUP BY customerID, game_Name
-- Filter the results to include only games played more than 10 times
HAVING SUM(times_Played) > 10;

SELECT * FROM tbl_GameStats;

SHOW TABLES;

-- Confirm that the foreign keys are correctly set up with the appropriate 'ON DELETE' and 'ON UPDATE' actions CASCADE
SHOW CREATE TABLE tbl_Customers; 
SHOW CREATE TABLE tbl_Products; 
SHOW CREATE TABLE tbl_GameStats; 
SHOW CREATE TABLE tbl_Purchase; 
SHOW CREATE TABLE tbl_Reviews;

-- Aligned Sample data
SELECT * FROM tbl_Customers WHERE customerID IN (1,2,3);
SELECT * FROM tbl_Products where productID IN (1,2,3);
SELECT * FROM tbl_GameStats;


SELECT * FROM tbl_Products;

-- Joined the tbl_Purchase table with tbl_Customers and tbl_Products
-- to combine customer purchase data and product details.
SELECT 
tbl_Purchase.purchaseID,
tbl_Customers.first_Name,
tbl_Customers.last_Name,
tbl_Products.Price,
tbl_Purchase.purchase_Date,
tbl_Purchase.quantity
FROM tbl_Purchase
JOIN tbl_Customers ON tbl_Purchase.customerID = tbl_Customers.customerID
JOIN tbl_Products ON tbl_Purchase.productID = tbl_Products.productID;

-- Using aggregate functions to calculate the total number of purchases
-- and total revenue for each product.
SELECT 
pr.name AS product,
SUM(p.quantity * pr.Price) AS total_sales,
COUNT(p.purchaseID) AS total_purchases
FROM tbl_Purchase p
JOIN tbl_Products pr ON p.productID = pr.productID
GROUP BY pr.name;
-- Calculating total sales and total number of purchases for each product.
-- SUM() calculates total revenue (quantity * price),
-- and COUNT() calculates how many times each product was purchased.


-- Filtering with WHERE and Aggregate Functions
SELECT 
pr.name AS product,
SUM(p.quantity * pr.Price) AS total_sales,
COUNT(p.purchaseID) AS total_purchases
FROM tbl_Purchase p
JOIN tbl_Products pr ON p.productID = pr.productID
GROUP BY pr.name
HAVING SUM(p.quantity * pr.Price) > 2000; -- Filtering total sales greater than 2000

-- Filerting the Date:
SELECT 
pr.name AS product,
SUM(p.quantity * pr.Price) AS total_sales,
COUNT(p.purchaseID) AS total_purchases
FROM tbl_Purchase p
JOIN tbl_Products pr ON p.productID = pr.productID
WHERE p.purchase_Date > '2024-01-01' -- Filter purchases made after January 1st 2024
GROUP BY pr.name;


-- Update and Delete Operations:
UPDATE tbl_Products
SET stock_quantity = stock_quantity + 50 -- Add 50 to the current stock quantity
WHERE productID = 2; -- Update stock for the product with ID = 2
-- SET stock_quantity + 50 updates the stock by adding 50 units.
-- WHERE productID = 2 ensures only products with productID 2 is updated.

DELETE FROM tbl_Products
WHERE productID = 2; -- Delete the product with ID = 2

SELECT * FROM tbl_Purchase;

