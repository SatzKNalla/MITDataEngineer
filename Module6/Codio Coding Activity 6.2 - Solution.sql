-- Codio Coding Activity 6.2: Histograms in SQL


-- Question 1: Counting the Inventory ID
-- In the Terminal window, type the commands to retrieve the inventory ID for each movie in the rental table.

-- Solution:
USE sakila;
SELECT inventory_id, count(rental_id) AS rentals FROM rental GROUP BY 1;

-- Question 2: Counting the Movies for Each Actor
-- In the Terminal window, type the commands to retrieve the number of movies an actor has appeared in.

-- Solution:
USE sakila;
SELECT actor_id, count(film_id) AS films FROM film_actor GROUP BY 1;


-- Question 3: Number of Movies for Actor
-- In how many movies has the actor with the actor_id equal to 87 participated?

-- Solution:
21


-- Question 4: Movies Per Actor Histogram
-- In the Terminal window, type the commands to produce a histogram showing the number of movies each actor has participated in.

-- Solution:
USE sakila;
SELECT films, count(*) AS num_actors, RPAD('', count(*), '*') as bar FROM (select actor_id, count(film_id) AS films FROM film_actor GROUP BY 1) a GROUP BY 1;

-- Question 5: Number of Cities Per Country
-- Write a query to produce a histogram that displays the number of cities where a movie was produced in each country.

-- Solution:
USE sakila;
SELECT num_cities, count(*) AS num_countries, RPAD('', count(*), '*') as bar FROM (select country_id, count(city_id) AS num_cities FROM city GROUP BY 1) a GROUP BY 1;

