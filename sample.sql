-- CREATE A TABLE with the columns id, firstName and lastName
CREATE TABLE people (
    id INTEGER,
    firstName VARCHAR(255),
    lastName VARCHAR(255)
);

-- Used to delete a table from the database
DROP TABLE people;

-- insert records into table
INSERT INTO people VALUES (1, 'John', 'Doe');
INSERT INTO people (id, lastName, firstName) VALUES (2, 'Travis', 'Garland');
INSERT INTO people VALUES (3, 'Jane', 'Doe');
INSERT INTO people (id, lastName, firstName) VALUES (4, 'Corey', 'Schafer');
