-- UNIONS are used to return a single data set of data from two tables.
-- the rows are stacked on top of each other

SELECT MakeName FROM Make UNION SELECT MakeName FROM ForeignMake;

-- The number of columns specified must match each other
-- for example
SELECT ID, MakeName FROM Make UNION SELECT MakeName FROM ForeignMake;
-- will return an error.

-- this fixes it
SELECT MakeID, MakeName FROM Make UNION SELECT ForeignMakeID, MakeName FROM ForeignMake;

-- you can specify distinct WHERE clauses for each select statements
SELECT MakeID, MakeName FROM Make
    WHERE MakeName < "D" -- to get names that start with the letters A,B,C
UNION
SELECT ForeignMakeID, MakeName FROM ForeignMake
    WHERE MakeName < "D"
    ORDER BY MakeName; -- when ordering in a union statement, you only need to specify it once in the last query

-- with UNION if a row exists in the two tables it only returns one instance of the row
-- for a UNION ALL this isn't the case, it doesn't return distinct values, it returns every row in both tab;es
SELECT MakeName FROM Make UNION ALL SELECT MakeName FROM ForeignMake;

-- the INTERSECT operation is used ti rerturn a dataset of rows that exist in tbe two tables
SELECT MakeName FROM Make
    INTERSECT
SELECT MakeName FROM ForeignMake;
-- SET operations use all the columns supplied within the query so if we introduce the ID columns to the statement
-- above and they aren't the same, the result of this query will be empty because the the ID columns have to match
SELECT MakeID, MakeName FROM Make
    INTERSECT
SELECT ForeignMakeID, MakeName FROM ForeignMake;

-- to find out all Car make that isn't in the foreignMake table but in the make table we make use of the EXCEPT operation
SELECT MakeID, MakeName FROM Make
    EXCEPT
SELECT ForeignMakeID, MakeName FROM ForeignMake;


SELECT Name FROM Fruit INTERSECT Select Name FROM Vegetable ORDER BY Name;

-- There are two tables Fruit and Vegetable table.
-- The Fruit table has a FruitID and a Name column and the Vegetable table has a VegetableID and Name column.
-- Create an alphabetical list of fruits that are NOT considered a vegetable.
SELECT Name FROM Fruit EXCEPT SELECT Name FROM Vegetable ORDER BY Name;
