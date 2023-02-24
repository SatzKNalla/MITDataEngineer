-- Codio Coding Assignment 6.1: Module 6 Final Assignment: Analyzing and Cleaning a Database

-- Question 1: Display the Tables in the Dataset
-- In the Terminal window, type the correct commands to visualize all the tables present in the bad sakila database. Remember to select the database first!

-- Solution:
USE bad_sakila;
SHOW TABLES;


-- Question 2: Counting the Number of Customers
-- In the Terminal window, type the commands to display the number of customers across the database.
-- Ensure that the output table has a column named total_customers.

-- Solution:
USE bad_sakila;
SELECT COUNT(*) as total_customers FROM customer;



-- Question 3: Counting the Number of Staff People
-- In the Terminal window, type the commands to display the number of staff people across the database. Ensure that the output table has a column titled staff.

-- Solution:
USE bad_sakila
SELECT COUNT(*) as staff FROM staff;


-- Question 4: Display the Language Table
-- What is the command to show the records in the language table?

-- Solution:
USE bad_sakila;
SELECT * FROM language;




-- Question 5: Retrieve Actors I
-- In the Terminal window, type the correct commands to retrieve the records in the actor table as described above. Remember to select the database first!

-- Solution:
USE bad_sakila;
SELECT actor_id, first_name, last_name FROM actor WHERE last_name LIKE '%DER%';


-- Question 6: Retrieve Actors II
-- Rearrange the code blocks below to display the names of the actors according to the instructions above.

-- Solution:
USE bad_sakila;
SELECT first_name, last_name FROM actor WHERE last_name like '%-%' ORDER BY first_name, last_name;


-- Question 7: Address Per Store
In the Terminal window, type the commands to retrieve the records as described above.

-- Solution:
USE bad_sakila;
SELECT COUNT(*), address.address FROM store JOIN address ON address.address_id = store.address_id GROUP BY address.address;
 
-- Question 8: Tables in Sakila Database
-- How many tables are in the Sakila database?

-- Solution:
-- 23
 
-- Question 9: Compute Minimum Sales
-- Rearrange the code blocks below to retrieve the movie category that has the least amount of sales along with the amount of sales.

-- Solution:
USE sakila;
SELECT * FROM sales_by_film_category ORDER BY total_sales LIMIT 1;
 
 
-- Question 10: Compute Maximum Sales
-- In the Terminal window, type the correct commands to retrieve the movie category that earned the most together with the amount of money grossed.

-- Solution:
USE sakila;
SELECT * FROM sales_by_film_category ORDER BY total_sales DESC LIMIT 1;
 
-- Question 11: Number of Cities Per Country
-- Write a query to produce a histogram that displays the number of cities where a movie was produced in each country.

-- Solution:
USE sakila;
SELECT num_cities, count(*) AS num_countries, RPAD('', count(*), '*') as bar FROM (select country_id, count(city_id) AS num_cities FROM city GROUP BY 1) a GROUP BY 1;
 
 
-- Question 12: Retrieve Records in Entries Table
-- What is the command to return all the records in the Entries table?

-- Solution:
USE Schools;
SELECT * FROM Entries;
 
-- Question 13: Compute Average Age
-- In the Terminal window, type the correct commands to get the average age value from the Entries table. Make sure that the output entry has a column named average_age.

-- Solution:
use Schools;
select avg(age_in_years) as average_age from Entries;
 
-- Question 14: Imputing Values

-- Rearrange the code blocks below so that the table Entries contains an extra column, corrected_ages, containing not NULL entries for the ages of the students.

-- Solution:
USE Schools;
select *, COALESCE(age_in_years, 20.5) as corrected_ages from Entries;
 
-- Question 15: Replacing Strings
-- What are the correct commands to convert the strings CSE and cse to C.S.E. and to group them?

-- Solution:
USE Schools;
select upper(replace(dept_name, 'C.S.E', 'cse')) as dept_cleaned, count(dept_name) as student_count from Student_details group by dept_cleaned;
 
-- Question 16: Retrieve the Current Date
 -- In the Terminal Window, use the correct function to retrieve today's date.

-- Solution:
SELECT CURRENT_DATE();
 
-- Question 16: Retrieve the Current Time
-- In the Terminal Window, use the correct function to  retrieve the current time.

-- Solution:
SELECT CURRENT_TIME();
 
-- Question 16: Retrieve the Current Date
-- In the Terminal Window, use the correct function to retrieve the current date and time.

-- Solution:
SELECT CURRENT_TIMESTAMP();
