-- Create Tables
CREATE TABLE Regions (
    RegionID INT PRIMARY KEY,
    RegionName VARCHAR(100)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2)
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    Phone VARCHAR(15)
);

CREATE TABLE Salespersons (
    SalespersonID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    RegionID INT,
    FOREIGN KEY (RegionID) REFERENCES Regions(RegionID)
);

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    ProductID INT,
    CustomerID INT,
    SalespersonID INT,
    RegionID INT,
    SaleDate DATE,
    Quantity INT,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (SalespersonID) REFERENCES Salespersons(SalespersonID),
    FOREIGN KEY (RegionID) REFERENCES Regions(RegionID)
);

-- Insert Data into Regions (25 rows)
INSERT INTO Regions (RegionID, RegionName) VALUES
(1, 'Northwest'),
(2, 'Southwest'),
(3, 'Northeast'),
(4, 'Southeast'),
(5, 'Midwest'),
(6, 'West Coast'),
(7, 'East Coast'),
(8, 'Northern Plains'),
(9, 'Southern Plains'),
(10, 'Pacific Northwest'),
(11, 'Rocky Mountains'),
(12, 'Great Lakes'),
(13, 'New England'),
(14, 'South Central'),
(15, 'North Central'),
(16, 'Central Coast'),
(17, 'Alaska'),
(18, 'Hawaii'),
(19, 'Northern California'),
(20, 'Southern California'),
(21, 'Mid-Atlantic'),
(22, 'Florida'),
(23, 'Texas'),
(24, 'Pacific Islands'),
(25, 'Mountain West');


-- Insert Data into Products (25 rows)
INSERT INTO Products (ProductID, ProductName, Category, Price) VALUES
(1, 'Laptop', 'Electronics', 1000.00),
(2, 'Smartphone', 'Electronics', 800.00),
(3, 'Tablet', 'Electronics', 500.00),
(4, 'Headphones', 'Accessories', 150.00),
(5, 'Smartwatch', 'Electronics', 250.00),
(6, 'Gaming Console', 'Electronics', 400.00),
(7, 'Keyboard', 'Accessories', 50.00),
(8, 'Mouse', 'Accessories', 25.00),
(9, 'Monitor', 'Electronics', 200.00),
(10, 'Printer', 'Electronics', 150.00),
(11, 'Router', 'Networking', 100.00),
(12, 'External Hard Drive', 'Storage', 120.00),
(13, 'USB Flash Drive', 'Storage', 20.00),
(14, 'Power Bank', 'Accessories', 40.00),
(15, 'Camera', 'Electronics', 600.00),
(16, 'Tripod', 'Accessories', 80.00),
(17, 'Drone', 'Electronics', 1000.00),
(18, 'Smart Light', 'Home Automation', 60.00),
(19, 'Smart Speaker', 'Home Automation', 150.00),
(20, 'VR Headset', 'Electronics', 350.00),
(21, 'Fitness Tracker', 'Electronics', 120.00),
(22, 'Wireless Charger', 'Accessories', 35.00),
(23, 'Projector', 'Electronics', 500.00),
(24, 'Desktop Computer', 'Electronics', 1200.00),
(25, 'Bluetooth Earbuds', 'Accessories', 75.00);



-- Insert Data into Customers (25 rows)
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '234-567-8901'),
(3, 'Emily', 'Jones', 'emily.jones@example.com', '345-678-9012'),
(4, 'Michael', 'Brown', 'michael.brown@example.com', '456-789-0123'),
(5, 'Sarah', 'Davis', 'sarah.davis@example.com', '567-890-1234'),
(6, 'James', 'Wilson', 'james.wilson@example.com', '678-901-2345'),
(7, 'Linda', 'Taylor', 'linda.taylor@example.com', '789-012-3456'),
(8, 'Robert', 'Anderson', 'robert.anderson@example.com', '890-123-4567'),
(9, 'Patricia', 'Thomas', 'patricia.thomas@example.com', '901-234-5678'),
(10, 'Charles', 'Jackson', 'charles.jackson@example.com', '012-345-6789'),
(11, 'Anna', 'Moore', 'anna.moore@example.com', '123-123-1234'),
(12, 'William', 'Harris', 'william.harris@example.com', '234-234-2345'),
(13, 'Jessica', 'Martin', 'jessica.martin@example.com', '345-345-3456'),
(14, 'Thomas', 'Garcia', 'thomas.garcia@example.com', '456-456-4567'),
(15, 'Sophia', 'Martinez', 'sophia.martinez@example.com', '567-567-5678'),
(16, 'Oliver', 'Hernandez', 'oliver.hernandez@example.com', '678-678-6789'),
(17, 'Mia', 'Lopez', 'mia.lopez@example.com', '789-789-7890'),
(18, 'Lucas', 'Clark', 'lucas.clark@example.com', '890-890-8901'),
(19, 'Ella', 'Lewis', 'ella.lewis@example.com', '901-901-9012'),
(20, 'Noah', 'Walker', 'noah.walker@example.com', '012-012-0123'),
(21, 'Amelia', 'Allen', 'amelia.allen@example.com', '123-456-7891'),
(22, 'Liam', 'Young', 'liam.young@example.com', '234-567-8902'),
(23, 'Isabella', 'King', 'isabella.king@example.com', '345-678-9013'),
(24, 'Ethan', 'Wright', 'ethan.wright@example.com', '456-789-0124'),
(25, 'Charlotte', 'Hill', 'charlotte.hill@example.com', '567-890-1235');



-- Insert Data into Salespersons (25 rows)
INSERT INTO Salespersons (SalespersonID, FirstName, LastName, Email, RegionID) VALUES
(1, 'Alice', 'Johnson', 'alice.johnson@example.com', 1),
(2, 'Bob', 'Williams', 'bob.williams@example.com', 2),
(3, 'Charlie', 'Taylor', 'charlie.taylor@example.com', 3),
(4, 'Diana', 'Lee', 'diana.lee@example.com', 4),
(5, 'Ethan', 'Harris', 'ethan.harris@example.com', 5),
(6, 'Fiona', 'Martinez', 'fiona.martinez@example.com', 6),
(7, 'George', 'Clark', 'george.clark@example.com', 7),
(8, 'Hannah', 'Rodriguez', 'hannah.rodriguez@example.com', 8),
(9, 'Ian', 'Lewis', 'ian.lewis@example.com', 9),
(10, 'Jenna', 'Walker', 'jenna.walker@example.com', 10),
(11, 'Kyle', 'Hall', 'kyle.hall@example.com', 11),
(12, 'Laura', 'Allen', 'laura.allen@example.com', 12),
(13, 'Michael', 'Young', 'michael.young@example.com', 13),
(14, 'Nina', 'King', 'nina.king@example.com', 14),
(15, 'Oliver', 'Wright', 'oliver.wright@example.com', 15),
(16, 'Paula', 'Scott', 'paula.scott@example.com', 16),
(17, 'Quinn', 'Torres', 'quinn.torres@example.com', 17),
(18, 'Riley', 'Nguyen', 'riley.nguyen@example.com', 18),
(19, 'Sophia', 'Hill', 'sophia.hill@example.com', 19),
(20, 'Thomas', 'Adams', 'thomas.adams@example.com', 20),
(21, 'Uma', 'Baker', 'uma.baker@example.com', 21),
(22, 'Victor', 'Perez', 'victor.perez@example.com', 22),
(23, 'Wendy', 'Carter', 'wendy.carter@example.com', 23),
(24, 'Xander', 'Phillips', 'xander.phillips@example.com', 24),
(25, 'Yvonne', 'Evans', 'yvonne.evans@example.com', 25);


-- Insert Data into Sales (25 rows)
INSERT INTO Sales (SaleID, ProductID, CustomerID, SalespersonID, RegionID, SaleDate, Quantity, TotalAmount) VALUES
(1, 1, 1, 1, 1, '2023-12-01', 2, 2000.00),
(2, 2, 2, 2, 2, '2023-12-02', 3, 1500.00),
(3, 3, 3, 3, 3, '2023-12-03', 1, 300.00),
(4, 4, 4, 4, 4, '2023-12-04', 5, 250.00),
(5, 5, 5, 5, 5, '2023-12-05', 2, 400.00),
(6, 6, 6, 6, 6, '2023-12-06', 3, 90.00),
(7, 7, 7, 7, 7, '2023-12-07', 4, 80.00),
(8, 8, 8, 8, 8, '2023-12-08', 1, 150.00),
(9, 9, 9, 9, 9, '2023-12-09', 2, 500.00),
(10, 10, 10, 10, 10, '2023-12-10', 3, 120.00),
(11, 1, 11, 11, 1, '2023-12-11', 2, 2000.00),
(12, 2, 12, 12, 2, '2023-12-12', 3, 1500.00),
(13, 3, 13, 13, 3, '2023-12-13', 1, 300.00),
(14, 4, 14, 14, 4, '2023-12-14', 5, 250.00),
(15, 5, 15, 15, 5, '2023-12-15', 2, 400.00),
(16, 6, 16, 16, 6, '2023-12-16', 3, 90.00),
(17, 7, 17, 17, 7, '2023-12-17', 4, 80.00),
(18, 8, 18, 18, 8, '2023-12-18', 1, 150.00),
(19, 9, 19, 19, 9, '2023-12-19', 2, 500.00),
(20, 10, 20, 20, 10, '2023-12-20', 3, 120.00),
(21, 1, 21, 21, 1, '2023-12-21', 1, 1000.00),
(22, 2, 22, 22, 2, '2023-12-22', 4, 2000.00),
(23, 3, 23, 23, 3, '2023-12-23', 3, 900.00),
(24, 4, 24, 24, 4, '2023-12-24', 2, 400.00),
(25, 5, 25, 25, 5, '2023-12-25', 5, 1000.00);
create database sales_data_analysis;
use sales_data_analysis;
    

-- Total sales by region

SELECT 
    r.RegionName, 
    SUM(s.TotalAmount) AS TotalSales
FROM 
    Sales s
JOIN 
    Regions r ON s.RegionID = r.RegionID
GROUP BY 
    r.RegionName
ORDER BY 
    TotalSales DESC;
    
    
-- Top product by sales

SELECT 
    p.ProductName, 
    SUM(s.TotalAmount) AS TotalRevenue
FROM 
    Sales s
JOIN 
    Products p ON s.ProductID = p.ProductID
GROUP BY 
    p.ProductName
ORDER BY 
    TotalRevenue DESC
LIMIT 10;

-- Salesperson performance

SELECT 
    sp.FirstName, 
    sp.LastName, 
    SUM(s.TotalAmount) AS TotalSales
FROM 
    Sales s
JOIN 
    Salespersons sp ON s.SalespersonID = sp.SalespersonID
GROUP BY 
    sp.SalespersonID
ORDER BY 
    TotalSales DESC;
    
-- Monthly sales trend

SELECT 
    DATE_FORMAT(SaleDate, '%Y-%m') AS Month, 
    SUM(TotalAmount) AS TotalSales
FROM 
    Sales
GROUP BY 
    Month
ORDER BY 
    Month;
    
-- Average sale value by product category

SELECT 
    p.Category, 
    AVG(s.TotalAmount) AS AverageSaleValue
FROM 
    Sales s
JOIN 
    Products p ON s.ProductID = p.ProductID
GROUP BY 
    p.Category
ORDER BY 
    AverageSaleValue DESC;
    
-- customer purchase pattern

SELECT 
    c.FirstName, 
    c.LastName, 
    SUM(s.TotalAmount) AS TotalSpent
FROM 
    Sales s
JOIN 
    Customers c ON s.CustomerID = c.CustomerID
GROUP BY 
    c.CustomerID
ORDER BY 
    TotalSpent DESC
LIMIT 10;

-- product sales quantity

SELECT 
    p.ProductName, 
    SUM(s.Quantity) AS TotalQuantitySold
FROM 
    Sales s
JOIN 
    Products p ON s.ProductID = p.ProductID
GROUP BY 
    p.ProductName
ORDER BY 
    TotalQuantitySold DESC;
    
-- sales by day

SELECT 
    SaleDate, 
    SUM(TotalAmount) AS TotalSales
FROM 
    Sales
GROUP BY 
    SaleDate
ORDER BY 
    TotalSales DESC;














