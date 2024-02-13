-- Project SQL - Clothing Store

-- 1. Create a "Clothing Store" Database

CREATE DATABASE Clothing_Store;

-- 2. Create a "Supplier" table with the following columns:
-- Supplier_Id
-- Supplier_Name
-- Supplier_Address
-- Supplier_NIP
-- Contract_Signing_Date_With_Producer

-- Set the appropriate "constraint" for each column

USE Clothing_Store;

CREATE TABLE Supplier(
Supplier_Id INT PRIMARY KEY,
Supplier_Name VARCHAR(20) UNIQUE,
Supplier_Address VARCHAR(30),
Supplier_NIP BIGINT,
Contract_Signing_Date_With_Producer DATE
);

-- 3. Create a "Product" table with the following columns:
-- Product_Id
-- Supplier_Name
-- Product_Name
-- Product_Description
-- Net_Purchase_Price
-- Gross_Purchase_Price
-- Net_Selling_Price
-- Gross_Seling_Price
-- Sales_VAT_Percentage

-- Set the appropriate "constraint" for each column

CREATE TABLE Product(
Product_Id INT PRIMARY KEY,
Supplier_Name VARCHAR(20) NOT NULL,
Product_Name VARCHAR(20) NOT NULL,
Product_Description VARCHAR(10),
Net_Purchase_Price FLOAT NOT NULL,
Gross_Purchase_Price FLOAT NOT NULL,
Net_Selling_Price FLOAT NOT NULL,
Gross_Selling_Price FLOAT NOT NULL,
Sales_VAT_Percentage FLOAT NOT NULL
);

-- 4. Create a "Orders" table with the following columns:
-- Order_Id,
-- Customer_Id,
-- Product_Id,
-- Order_Date

-- Set the appropriate "constraint" for each column

CREATE TABLE Orders(
Order_Id INT PRIMARY KEY,
Customer_Id INT,
Product_Id INT,
Order_Date DATE
);

-- 5. Create a "Customer" table with the following columns:
-- Customer_Id
-- Order_Id
-- First_Name
-- Last_Name
-- Address

-- Set the appropriate "constraint" for each column

CREATE TABLE Customer(
Customer_Id INT PRIMARY KEY,
Order_Id INT,
First_Name VARCHAR(20) NOT NULL,
Last_Name VARCHAR(20) NOT NULL,
Address VARCHAR(30)
);

-- 6. Complete each table with data according to:
-- "Supplier" table - 4 items
-- "Product" table - 20 items
-- "Orders" table - 10 items
-- "Customer" table - 10 items

INSERT INTO Supplier(
Supplier_Id,
Supplier_Name,
Supplier_Address,
Supplier_NIP,
Contract_Signing_Date_With_Producer
) VALUES(
1, 'BeFirst', 'Zielona 35, Gdansk', 1234567890, '2012-05-16'),
(2, 'Adios', 'Niebieska 17, Krakow', 3987654321, '2010-03-11'),
(3, '4win', 'Czarna 33, Wroclaw', 1357908642, '2009-10-30'),
(4, 'OneTwo', 'Czerwona 14, Katowice', 2468097531, '2013-12-01'
);

SELECT * FROM Supplier;  

INSERT INTO Product(
Product_Id,
Supplier_Name,
Product_Name,
Product_Description,
Net_Purchase_Price,
Gross_Purchase_Price,
Net_Selling_Price,
Gross_Selling_Price,
Sales_VAT_Percentage
) VALUES(
1001, 'BeFirst', 'shoes', 'green', 200, 246, 350, 410, 0.17),
(1002, 'Adios', 'shoes', 'black', 150, 188, 310, 380, 0.23),
(1003, 'OneTwo', 't-shirt', 'green', 70, 97, 120, 145, 0.21),
(1004, '4win', 'cap', 'pink', 50, 65, 100, 125, 0.25),
(1005, 'Adios', 'tracksuits', 'black', 125, 170, 190, 233, 0.23),
(1006, 'BeFirst', 'cap', 'grey', 92, 114, 135, 171, 027),
(1007, 'BeFirst', 't-shirt', 'red', 133, 199, 235, 280, 0.19),
(1008, 'OneTwo', 'shoes', 'white', 300, 350, 400, 460, 0.15),
(1009, 'Adios', 'cap', 'green', 55, 69, 99, 140, 0.41),
(1010, '4win', 'shoes', 'grey', 180, 231, 285, 322, 0.13),
(1011, '4win', 'tracksuits', 'blue', 100, 130, 177, 200, 0.13),
(1012, 'OneTwo', 'cap', 'yellow', 38, 63, 85, 97, 0.14),
(1013, 'OneTwo', 'tracksuits', 'orange', 78, 111, 141, 177, 0.26),
(1014, 'BeFirst', 'jacket', 'black', 220, 270, 340, 399, 0.17), 
(1015, 'Adios', 't-shirt', 'green', 99, 129, 159, 199, 0.25),
(1016, 'OneTwo', 'jacket', 'white', 100, 133, 180, 211, 0.17),
(1017, 'Adios', 'jacket', 'blue', 210, 267, 300, 346, 0.15),
(1018, '4win', 't-shirt', 'yellow', 95, 115, 150, 195, 0.30),
(1019, 'BeFirst', 'tracksuits', 'purple', 140, 172, 218, 279, 0.28),
(1020, '4win', 'jacket', 'white', 370, 417, 510, 599, 0.17
);

SELECT * FROM Product;

INSERT INTO Orders(
Order_Id,
Customer_Id,
Product_Id,
Order_Date
) VALUES(
1, 101, 1020, '2018-12-08'),
(2, 102, 1015, '2017-10-03'),
(3, 103, 1001, '2015-07-13'),
(4, 104, 1019, '2021-05-08'),
(5, 105, 1003, '2021-05-08'),
(6, 106, 1015, '2019-04-22'),
(7, 107, 1010, '2016-05-29'),
(8, 108, 1015, '2021-01-19'),
(9, 109, 1008, '2020-09-04'),
(10, 110, 1017, '2019-02-23'
);

SELECT * FROM Orders;

INSERT INTO Customer(
Customer_Id,
Order_Id,
First_Name,
Last_Name,
Address
) VALUES(
101, 1, 'Jan', 'Kowalski', 'Rumiankowa 13, Warszawa'),
(102, 2, 'Piotr', 'Nowak', 'Jesionowa 4, Wroclaw'),
(103, 3, 'Anna', 'Kwiatkowska', 'Kasztanowa 14, Gdansk'),
(104, 4, 'Katarzyna', 'Wozniak', 'Bukowa 78, Krakow'),
(105, 5, 'Kazimierz', 'Marciniak', 'Lipowa 13, Katowice'),
(106, 6, 'Bozena', 'Grabowska', 'Akacjowa 21, Lublin'),
(107, 7, 'Michal', 'Michalski', 'Truskawkowa 28, Torun'),
(108, 8, 'Martyna', 'Bruska', 'Topolowa 11, Poznan'),
(109, 9, 'Andrzej', 'Wolski', 'Jasminowa 99, Bialystok'),
(110, 10, 'Maria', 'Bimber', 'Brzoskwiniowa 44, Szczecin'
);

SELECT * FROM Customer;

-- 7. Link the columns together so that the tables communicate with each other
-- Product - Supplier
-- Product - Orders
-- Orders - Customer

ALTER TABLE Product
ADD FOREIGN KEY (Supplier_Name) 
REFERENCES Supplier(Supplier_Name);

ALTER TABLE Orders
ADD FOREIGN KEY (Product_Id)
REFERENCES Product(Product_Id);

ALTER TABLE Orders
ADD FOREIGN KEY (Customer_Id)
REFERENCES Customer(Customer_ID);

ALTER TABLE Customer
ADD FOREIGN KEY (Order_Id)
REFERENCES Orders(Order_Id);

-- 8. Display all products with all data from the supplier that is in position 1 in the "Supplier" table

SELECT Product_Name, Product.Supplier_Name, Supplier_Id, 
Supplier_Address, Supplier_NIP, Contract_Signing_Date_With_Producer
FROM Product, Supplier
WHERE Product.Supplier_Name = Supplier.Supplier_Name
AND Supplier_Id = 1;

-- 9. Sort these products by Name from A-B

SELECT Product_Name, Product.Supplier_Name, Supplier_Id, 
Supplier_Address, Supplier_NIP, Contract_Signing_Date_With_Producer
FROM Product, Supplier
WHERE Product.Supplier_Name = Supplier.Supplier_Name
AND Supplier_Id = 1
ORDER BY Product_Name ASC;

-- 10. Calculate the average price for a product from this supplier

SELECT ROUND(AVG(Net_Selling_Price), 0) AS Average_Price, Supplier_Id
FROM Product, Supplier
WHERE Supplier_Id = 1;

-- 11. Display two product groups of this supplier:
-- Half of the cheapest are group: "Cheap"
-- Others are group: "Expensive"

SELECT Product_Name, Net_Selling_Price,
CASE
	WHEN NTILE (2) OVER (
	ORDER BY Net_Selling_Price
	) = 1 THEN 'Cheap' 
	WHEN NTILE (2) OVER (
	ORDER BY Net_Selling_Price
	) = 2 THEN 'Expensive'
END
FROM Product, Supplier
WHERE Supplier_Id = 1; 

-- 12. Display ordered products by displaying the name

SELECT Orders.Order_Id, Product.Product_Name
FROM Orders
JOIN Product 
ON Orders.Product_Id = Product.Product_Id;

-- 13. Display all products ordered - limited to the displayed 5 items

SELECT Orders.Order_Id, Product.Product_Name
FROM Orders
JOIN Product 
ON Orders.Product_Id = Product.Product_Id
LIMIT 5;

-- 14. Calculate the value of all orders

SELECT SUM(Gross_Selling_Price) AS Total_Order_Value
FROM Product
INNER JOIN Orders
ON Product.Product_Id = Orders.Product_Id;

-- 15. Display all orders and products sorted by date from oldest to newest

SELECT Orders.Order_Date, Orders.Order_Id, Product.Product_Name
FROM Orders, Product
WHERE Orders.Product_Id = Product.Product_Id
ORDER BY Orders.Order_Date;

-- 16. Check if you have completed all data in the products table - display items for which data is missing

SELECT * FROM Product
WHERE Product_Name IS NULL
OR Supplier_Name IS NULL 
OR Product_Name IS NULL
OR Product_Description IS NULL 
OR Net_Purchase_Price IS NULL 
OR Gross_Purchase_Price IS NULL
OR Net_Selling_Price IS NULL 
OR Gross_Selling_Price IS NULL 
OR Sales_VAT_Percentage IS NULL;

-- 17. Display the most sold products along with their price

SELECT Product_Name, COUNT(Product_Name) AS Best, Net_Selling_Price
FROM Product
INNER JOIN Orders
ON Product.Product_Id = Orders.Product_Id
GROUP BY Product_Name, Net_Selling_Price
ORDER BY Best DESC;

-- 18. Find the day with the most orders placed

SELECT DISTINCT Order_Date, COUNT(Order_Date) AS Dates
FROM Orders
GROUP BY Order_Date
ORDER BY Dates DESC
LIMIT 1;