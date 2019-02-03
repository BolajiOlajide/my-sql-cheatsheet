-- the COUNT method can be used for a number of things
-- fetch total number of rows, results of a query, aggregation, distinct entries

-- the COUNT keyword can be used to count number of occurences of items in the DB
SELECT COUNT(*) FROM customers;

-- you can also use count with a specific column say SELECT COUNT(last_name) FROM customers;
-- but this won't count any customer that has a lastname of null

-- you can use the DISTINCT keyword to get the number of unique items in a table
SELECT DISTINCT(category) FROM products;
-- this will not return duplicate categories, you can wrap this in the count method to get
-- the number of unique categories as shown below
SELECT COUNT(DISTINCT(category)) FROM products;

-- you can also use the COUNT and GROUP BY keyword to know how many items are in a category
SELECT category, COUNT(*) AS product_count FROM products GROUP BY category;

