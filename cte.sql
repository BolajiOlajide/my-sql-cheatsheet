-- A CTE (Common Table Expression) is simply a temporary result set that can be reused for other queries

WITH product_details AS (
    SELECT ProductName, CategoryName, UnitPrice, UnitsInStock
    FROM Products
    JOIN Categories ON Products.CategoryId = Categories.Id
    WHERE Products.Discontinued = 0
);
