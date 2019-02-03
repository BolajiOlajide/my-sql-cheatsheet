-- operators used for mathematical calculations are as follows
-- addition +
-- subtraction -
-- multiplication *
-- division /

SELECT name, price * 0.5 AS TAX FROM products;

-- you can use the ROUND keyword to round the results up
-- the ROUND function takes in two arguments, the first is the number you want to round
-- the second is the number of decimal places you'll love to round it up to
SELECT name, ROUND(price * 0.5, 2) AS TAX FROM products;
SELECT name, ROUND(price * 1.4, 2) AS price_gdp FROM products;
