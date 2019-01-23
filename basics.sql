-- using the AS keyword
SELECT id AS peopleID, name as personName, location FROM test_table;

-- for postgres, if you want to keep the case sensitivity then wrap it in quotes
SELECT id AS "PeopleID", name as "personName", location FROM test_table;

-- you can also alias by excluding thr AS keyword, this is less clear though
SELECT id "PeopleID", name "PersonName", location FROM test_table;

-- the inequality operator
-- SELECT <columns> FROM <table> WHERE <column name> != <value>;
-- SELECT <columns> FROM <table> WHERE <column name> <> <value>;

-- operators
-- notable operators are =, != or <>, <, <=, >, >=


-- compare multiple values using the IN keyboard
SELECT * FROM people WHERE id IN (1,2,3);

-- the between keyword can be used to retrieve data in a defined range
SELECT * FROM people WHERE id BETWEEN 1 AND 7; -- can be used for numeric values and date ranges too

-- we can also search to matches in the database
SELECT title FROM books WHERE title LIKE "Harry Potter%";

-- you can check if the value of a field is or isn't NULL by using NULL in conjuction with the IS or IS NOT keywords
SELECT * FROM loans WHERE return_by > "2015-12-18" AND returned_on IS NULL;
SELECT * FROM loans WHERE return_by > "2015-12-18" AND returned_on IS NOT NULL;

-- You can retrieve data from multiple tables using this syntax
SELECT * FROM "Users", "Loans" WHERE "Users"."id" = "Loans"."userId"; -- I think the quoted tables thing is a postgres thing
