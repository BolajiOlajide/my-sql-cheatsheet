-- if the schema of a table has the ID defined as an autoincrement field
-- you don't have to be checking for the ID to increment yourself you can enter
-- a null field and SQL will do the addition of the ID for you

-- assume we have a people table with the structure
-- id, first_name, last_name
INSERT INTO people VALUES (NULL, 'John', 'Doe'); -- this would auto increment the ID

-- ALternatively you can specify which column the data belongs to with the syntax
INSERT INTO people (id, first_name, last_name) VALUES (NULL, 'John', 'Doe');

-- you can update an column with the command
UPDATE patrons SET last_name = "Anonymous";
-- to update multiple rows
UPDATE patrons SET last_name = "Anonymous", zip_code = 95402;


-- to delete all data in a table
DELETE FROM people;

-- to delete a particular row use the WHERE keyword
DELETE FROM people WHERE id IN (1,4);
