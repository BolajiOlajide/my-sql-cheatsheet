-- ordering
SELECT * FROM people ORDER BY first_name; -- this will order the data by first_name in asceding order by default
SELECT * FROM people ORDER BY first_name ASC; -- order by ascending order
SELECT * FROM people ORDER BY first_name DESC; -- order by descending order

-- you can add a secondary ordering criteria with a comma
SELECT * FROM people ORDER BY first_name DESC, last_name ASC;

-- you can limit the number of rows of data returned using the LIMIT keyword
SELECT * FROM people ORDER BY first_name DESC, last_name ASC LIMIT 3; -- limits the number of row returned to 3
-- the limit keyword must be placed at the end of the query, putting it anywhere else willl result in a syntax error

-- LIMIT doesn't exist in MS SQL so TOP ketword is used instead
-- SELECT TOP 3 <columns> FROM <table>;

-- it also doesn't exist in Oracle
-- SELECT <columns> FROM <table> WHERE ROWNUM <= <# of rows>;

-- it's a available in SQLite, PostgreSQL and MySQL though

-- the offset keyword can be used to get the data in batches - used to skip rows
-- SELECT * FROM <table> LIMIT <number of rows> OFFSET <skipped rows>;
SELECT * FROM books LIMIT 50 OFFSET 0; -- gets first 50 books (1-50)
SELECT * FROM books LIMIT 50 OFFSET 50; -- gets second 50 books (51-100)
SELECT * FROM books LIMIT 50 OFFSET 100; -- gets third 50 books (101-150)
SELECT * FROM books LIMIT 50 OFFSET 150; -- gets fourth 50 books (151-200)
-- you can decide to use the shorthand version and not specify the offset using the OFFSET keyword
SELECT * FROM books LIMIT 150, 50; -- SELECT * FROM <table> LIMIT <skipped rows>, <number of rows>;

-- you can use the lenngth function to get the length of a string in the database
-- SELECT LENGTH(column) AS alias FROM table;
SELECT username, LENGTH(username) AS usernameLength FROM person;

-- there are two functions for changing the case of a string UPPER and LOWER
SELECT first_name || " " || UPPER(last_name) AS full_name, library_id FROM patrons;

-- the SUBSTR method is used to get a somestring from a much larger text
-- SUBSTR(<value or column>, <start>, <length>)
SELECT name, SUBSTR(description, 1, 30) || ' ' AS short_description, price FROM products;

-- the REPLACE function is similar to the SUBSTR function in that it takes more than
-- one value. Used to replace (Sometimes obfuscate) text
SELECT street, city, REPLACE(state, "California", "CA") AS state FROM addresses;
