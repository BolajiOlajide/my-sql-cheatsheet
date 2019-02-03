-- the SUM keyword is used for adding up data
SELECT SUM(cost) FROM orders;
-- this gets you the total sum of cost of all orders in the orders table.

-- you can get how much each customer bought by using the GROUP BY keyword
SELECT user_id, SUM(cost) AS total_spend FROM orders GROUP BY user_id;

-- imagine we want to get the users that have spent above $250, you might be tempted
-- to use the WHERE keyword with the GROUP BY keyword but that's going to lead to an error because the WHERE keyword
-- cant be use on aggregate methods like SUM because it needs to add the cost per row.
-- the keyword to use here is HAVING and it's similar to the WHERE keyword but must be placed after the
-- GROUP BY keyword
SELECT SUM(cost) AS total_spend, user_id FROM orders
                                        GROUP BY user_id
                                        HAVING total_spend > 250
                                        ORDER BY total_spend DESC:

-- without the GROUP BY keyword you can use the WHERE keyword to calculate the sum of ratings
-- for a particular movie for example
SELECT SUM(rating) FROM reviews WHERE movie_id = 6;

-- the AVG keyword is another aggregate method in SQL used to calculate average
-- it's use is similar to that of the SUM keyword
SELECT AVG(cost) FROM orders;
-- gets the average cost of all orders in the order table

-- to get the average spent on orders by each user
SELECT user_id, AVG(cost) FROM orders GROUP BY user_id;

-- you can use the MAX & MIN keywords to get the maximum and minimum values
-- in a table.
SELECT user_id, AVG(cost), MAX(cost) AS Maximum, MIN(cost) AS Minimum FROM orders GROUP BY user_id;
