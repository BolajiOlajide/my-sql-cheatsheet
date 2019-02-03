-- concatenation can be done with the || operator and in some flavors of SQL using the CONCAT keyword
SELECT first_name || last_name AS "Full Name", email AS "Email" FROM customers;
SELECT first_name || ' ' || last_name AS "Full Name", email AS "Email" FROM customers;

-- In SQL there's a difference between using single quotes (') and double quotes (").
-- Single quotes should be used for String literals (e.g. 'lbs'), and double quotes should be used
-- for identifiers like column aliases (e.g. "Max Weight"):