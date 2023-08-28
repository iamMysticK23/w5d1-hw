-- question 1
SELECT last_name, first_name
FROM actor
WHERE last_name = 'Wahlberg';

-- question 2
SELECT amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- question 3
SELECT COUNT(film_id) AS num_in_store
FROM inventory
GROUP BY film_id
ORDER BY num_in_store DESC;

-- question 4
SELECT COUNT(last_name) AS customer_last_name_william
FROM customer
WHERE last_name = 'William';

-- question 5

SELECT staff_id AS staff_id , COUNT(inventory_id) AS rentals_sold
FROM rental
GROUP BY staff_id
ORDER BY SUM(inventory_id) DESC
LIMIT 1;

-- question 6
SELECT DISTINCT district
FROM address;

-- question 7
SELECT film_id, COUNT(actor_id) as number_of_actors
FROM film_actor
GROUP BY film_id
ORDER BY number_of_actors DESC
LIMIT 1;

-- question 8
SELECT customer_id, store_id, first_name, last_name
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';

-- question 9
SELECT COUNT(DISTINCT amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(amount)>250;

-- question 10
SELECT rating, COUNT(*) as number_of_movies
FROM film
GROUP BY rating
ORDER BY COUNT(rating) DESC;






