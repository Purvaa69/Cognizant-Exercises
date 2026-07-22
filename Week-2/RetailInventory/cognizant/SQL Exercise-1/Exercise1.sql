CREATE DATABASE Ecommerce;

USE Ecommerce;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Category VARCHAR(30),
    Price DECIMAL(10,2)
);

INSERT INTO Products VALUES
(101,'Laptop','Electronics',80000),
(102,'Mobile','Electronics',60000),
(103,'Tablet','Electronics',60000),
(104,'Headphones','Electronics',5000),
(105,'Shirt','Clothing',2000),
(106,'Jeans','Clothing',2500),
(107,'Jacket','Clothing',2500),
(108,'T-Shirt','Clothing',1500),
(109,'Sofa','Furniture',30000),
(110,'Chair','Furniture',10000),
(111,'Table','Furniture',10000),
(112,'Bed','Furniture',40000);

-- ROW_NUMBER()
SELECT ProductID, ProductName, Category, Price,
ROW_NUMBER() OVER (
PARTITION BY Category
ORDER BY Price DESC
) AS RowNum
FROM Products;

-- RANK()
SELECT ProductID, ProductName, Category, Price,
RANK() OVER (
PARTITION BY Category
ORDER BY Price DESC
) AS RankNo
FROM Products;

-- DENSE_RANK()
SELECT ProductID, ProductName, Category, Price,
DENSE_RANK() OVER (
PARTITION BY Category
ORDER BY Price DESC
) AS DenseRank
FROM Products;

-- Top 3 Products
SELECT *
FROM (
SELECT ProductID, ProductName, Category, Price,
ROW_NUMBER() OVER (
PARTITION BY Category
ORDER BY Price DESC
) AS RowNum
FROM Products
) AS RankedProducts
WHERE RowNum <= 3;