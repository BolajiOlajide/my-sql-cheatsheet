-- say you have a query to get Car ID's that asre in a list
SELECT name FROM Car WHERE CarID IN (1,3,5);

-- let's assume you don't know the ID's to be search for, you can use a subquery to get the list of IDs
SELECT name FROM Car WHERE CarID IN (SELECT CarID FROM Model WHERE Name = "Chevy");

-- SYNTHAX for subqueries
-- SELECT <columns> FROM <table1> WHERE Column1 IN (SELECT Column1 FROM <Table2> WHERE <Search Criteria>);
-- SELECT <columns> FROM <table1> WHERE Column1 NOT IN (SELECT Column1 FROM <Table2> WHERE <Search Criteria>);


-- another kind of subquery is temporary tables, a bit complex
SELECT * FROM Sale AS s
    INNER JOIN (SELECT CarID, ModelYear FROM Car WHERE ModelYear = 2015) AS t
    ON s.CarID = t.CarID;

-- Generate a report that lists the book titles from both locations and count the total number of books with the same title.
SELECT title, COUNT(title) FROM (SELECT title FROM books_north UNION ALL SELECT title FROM books_south) GROUP BY title;


-- Generate a report that lists a patron's first name, email and loan count for loans that haven't been returned.
SELECT first_name, email, COUNT(*) FROM patrons AS p
  INNER JOIN (
    SELECT patron_id FROM loans_north WHERE returned_on IS NULL
      UNION ALL
    SELECT patron_id FROM loans_north WHERE returned_on IS NULL
  ) AS ln ON ln.patron_id = p.id
  GROUP BY email;


-- In a car database there is a Model table with columns, ModelID, MakeID and ModelName and a Car table
-- with columns, CarID, ModelID, VIN, ModelYear and StickerPrice.
-- Use a subquery along with IN to list all the Model Names with a Sticker Price greater than $30000
SELECT ModelName FROM Model WHERE ModelID IN (SELECT ModelID FROM Car WHERE StickerPrice > 30000);


-- In a car database there is a Sale table with columns, SaleID, CarID, CustomerID, LocationID, SalesRepID, SaleAmount and
-- SaleDate and a Car table with columns, CarID, ModelID, VIN, ModelYear and StickerPrice.
-- Use a subquery along with IN to list all sales of cars with Sticker Price greater than $30000. Include all columns.
SELECT * FROM Sale WHERE CarID IN (SELECT CarID FROM Car WHERE StickerPrice > 30000);


-- In a car database there is a Sale table with columns, SaleID, CarID, CustomerID, LocationID, SalesRepID, SaleAmount and SaleDate and a Customer table
-- with columns, CustomerID, FirstName, LastName, Gender and SSN.
-- Use a subquery along with IN to list all sales to female customers. (Gender = 'F') Select all columns.
SELECT * FROM Sale WHERE CustomerID IN (SELECT CustomerID FROM Customer WHERE Gender = "F");


-- In a car database there is a Sale table with columns, SaleID, CarID, CustomerID, LocationID, SalesRepID,
-- SaleAmount and SaleDate and a Customer table with columns, CustomerID, FirstName, LastName, Gender and SSN.
-- Use a subquery as a derived table to show all sales to female ('F') customers. Select all columns from the Sale table only.
SELECT * FROM Sale AS s
	INNER JOIN (SELECT CustomerID FROM Customer WHERE Gender = "F") AS c
  ON s.CustomerID = c.CustomerID;
