--
SELECT * FROM orders WHERE status = "placed" AND ordered_on = DATE("now") -- date format for sqlite

-- you can pass modifiers to date strings inside the DATE function
-- DATE(<time string>, ...<modifier>)

-- the recognized format for dates in SQL is YYYY-MM-DD
-- to get the date 7days ago, we can pass in a modifier as such
SELECT * FROM orders WHERE ordered_on = DATE("2016-02-01", "-7 days");
SELECT * FROM orders WHERE ordered_on = DATE("2016-02-01", "+7 days");
SELECT * FROM orders WHERE ordered_on = DATE("2016-02-01", "+7 years");
SELECT * FROM orders WHERE ordered_on = DATE("2016-02-01", "+1 month", "-1 day");

-- to get the number of orders that was placed within the past 7 days
SELECT COUNT(*) FROM orders WHERE ordered_on
                BETWEEN DATE("now", "-7 days") AND DATE("now", "-1 day");


-- there are 3 types of date datatypes
-- date (YYYY-MM-DD) 2015-04-01
-- time (HH:MM:SS)  23:12:01
-- datetime (YYYY-MM-DD HH:MM:SS) 2015-04-01 23:11:45

-- if given a datetime datatype, calling the date function on it trims off the time part of it
-- if you are only concerned with the dare you might find this useful
SELECT COUNT(*) FROM orders WHERE ordered_on = DATE("2015-04-01 23:12:01") -- "2015-04-01"
-- if you are only concerned with time, you can pass a datetime string to the timefunction and
-- it'll duscard the date and return just the time
SELECT COUNT(*) FROM orders WHERE ordered_on = TIME("2015-04-01 23:12:01") -- "23:12:01"

-- the STRFTIME() functtion is used to output datetime in a human-readable format
-- STRFTIME(<format string>, <time string>, <modifier>)
-- STRFTIME("%d/%m/%Y", "2016-05-01 23:32:22", <modifier>);
SELECT title, STRFTIME("%m/%Y", date_released) AS month_year_released FROM movies;
