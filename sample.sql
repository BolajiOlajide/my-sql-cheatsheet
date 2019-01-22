-- CREATE A TABLE with the columns id, firstName and lastName
CREATE TABLE people (
    id INTEGER,
    firstName VARCHAR(255),
    lastName VARCHAR(255)
);

-- Used to delete a table from the database
DROP TABLE people;

CREATE TABLE people (
    id INTEGER,
    firstName VARCHAR(255),
    lastName VARCHAR(255)
);

CREATE TABLE test_table (
    id INTEGER,
    name VARCHAR(255),
    location VARCHAR(255)
);

-- insert records into table
INSERT INTO people VALUES (1, 'John', 'Doe');
INSERT INTO people (id, lastName, firstName) VALUES (2, 'Travis', 'Garland');
INSERT INTO people VALUES (3, 'Jane', 'Doe');
INSERT INTO people (id, lastName, firstName) VALUES (4, 'Corey', 'Schafer');

-- insert multiple values
INSERT INTO test_table VALUES
	(1, 'Fred', 'Lagos'),
	(2, 'Bolaji', ''),
	(3, 'Anu', ''),
	(4, 'Damisi', ''),
	(5, 'Muna', ''),
	(6, 'Delores', '');

-- data retrieval
SELECT * FROM people; -- to retrieve all columns in a table
SELECT * FROM people WHERE lastName = 'Doe'; -- select all columns for people whose lastName is 'Doe'
SELECT * FROM people WHERE lastName = 'Doe' OR lastName = 'Garland'; -- select all columns for people whose lastname is either 'Doe' or 'Garland'
SELECT * FROM people WHERE id < 3; -- select all columns for people whose ID is less than 3
SELECT * FROM people WHERE lastName = 'Doe' OR lastName = 'Garland' ORDER BY id; -- order by the ID
SELECT * FROM people WHERE lastName = 'Doe' OR lastName = 'Garland' ORDER BY firstName, id; -- order by rhe firstname and when you get matching firstNames order by ID
SELECT * FROM people WHERE lastName = 'Doe' OR lastName = 'Garland' ORDER BY id DESC; -- order by the ID but in descending order

-- create new table
CREATE TABLE test_table (
    id INTEGER,
    name VARCHAR(255),
    location VARCHAR(255)
);

-- insert multiple values
INSERT INTO test_table VALUES
	(1, 'Fred', 'Lagos'),
	(2, 'Bolaji', NULL),
	(3, 'Anu', NULL),
	(4, 'Damisi', NULL),
	(5, 'Muna', NULL),
	(6, 'Delores', '');

-- update records in a table
UPDATE test_table
SET location = 'unknown'; -- this updates all records in the DB to have a location of unknown

-- delete all the records in a table
DELETE FROM test_table;

INSERT INTO test_table VALUES
	(1, 'Fred', 'Lagos'),
	(2, 'Bolaji', NULL),
	(3, 'Anu', NULL),
	(4, 'Damisi', NULL),
	(5, 'Muna', NULL),
	(6, 'Delores', ''),
    (7, 'Fred', '');

-- To update a particular record in a table, the best thing to do is first select the record in the table then UPDATE
-- just that particular record lol.
UPDATE test_table
SET location = 'Kano'
WHERE name = 'Fred'
AND location = 'Lagos';

-- delete a particular record in the table
DELETE FROM test_table
WHERE location = '';
