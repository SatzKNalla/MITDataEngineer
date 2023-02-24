-- Codio Coding Activity 6.3: Handling Duplicates in SQL


-- Question 1: Retrieve Cities and Countries ID
-- In the Terminal window, write a query to show a table that contains the columns country_id and city. Order the entries in the column country_id  in descending order.

-- Solution:
USE bad_sakila;
SELECT country_id, city FROM city ORDER BY country_id DESC;

-- Question 2: Retrieve Countries and Countries ID
-- What is the command to show a table with the countries and their corresponding country ids?

-- Solution:
USE bad_sakila;
SELECT country, country_id from country;



-- Question 3: Bin The Countries
-- Bin the entries in the table with columns country_id and city  according to the instructions above. Make sure that the resulting table has columns, bins and total.

-- Solution:
USE bad_sakila;
SELECT CASE WHEN country_id <= 10 THEN 'Country starts with A' WHEN country_id <= 17 THEN 'Country starts with B' WHEN country_id <= 27 THEN 'Country starts with C' WHEN country_id <= 43 THEN 'Country starts with D, E, F, G, or H' WHEN  country_id <= 70 THEN 'Country starts with I, J, K, L, M, or N' WHEN country_id <= 91 THEN 'Country starts with O, P, R or S' ELSE 'Country starts with T, U, V, Y, or Z' END AS bin, COUNT(*) AS  count FROM (SELECT country_id, city FROM city ORDER BY country_id DESC) a GROUP BY 1;



-- Question 4: Check for Duplicates
-- In the Terminal window, write a query to retrieve the details of any movies that have a duplicate inventory_id. If any duplicate records are present, the resulting table should have columns inventory_id, film_id, store_id, and entries.

-- Solution: 
USE sakila;
SELECT * FROM (SELECT customer_id, first_name, last_name, count(*) as records FROM customer GROUP BY 1,2,3 ORDER BY records DESC)a WHERE records >1;
