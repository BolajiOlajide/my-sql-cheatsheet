# SET

A set is a grouping of similar things together.

## Set Operations

- Intersection
- Union
- Except

## Relational Databases

Relations exist via keys and there are three kinds of keys:

- Unique keys

Unique keys are used to represent values that are unique.
THey can be null.
They can be multiple unique keys per table (e.g email address & phone number in a user table)
they can be modified to a new value (as long as they don't conflict with any existing value in that column)

- primary keys

A primary key just like unique keys guarantuees data is unique within a column, but there are several differences
a primary key will never alloww a null value
each table can only have one primary key
cannot be modified to a new value
doesn't necessarily need to be an integer or numeric data

- foreign keys

Used to relate two tables that have common properties.

## Constraint

A constraint is a rule that a database has to enforce. An example of a constraint is the Foreign key constraint.

## Referential Integrity

FOREIGN key values must also exist as PRIMARY key value in the reference table.


