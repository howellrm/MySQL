
-- MySQL Homework 10	

USE sakila;



-- * 7a. The music of Queen and Kris Kristofferson have seen an unlikely resurgence. 
-- As an unintended consequence, films starting with the letters `K` and `Q` have also soared in popularity. 
-- Use subqueries to display the titles of movies starting with the letters `K` and `Q` whose language is English. 

-- select * from film where film.title LIKE "K%" or film.title LIKE "Q%" and film.language_id in 
-- (
-- select language_id from language where language.name LIKE "English"
-- );


-- * 7b. Use subqueries to display all actors who appear in the film `Alone Trip`.

-- select * from film;
-- select * from film_actor;
-- select * from actor;
-- 
-- select actor.first_name, actor.last_name
-- from actor 
-- where actor.actor_id IN
-- (
-- select film_actor.actor_id from film_actor where film_actor.film_id IN
-- (select film.film_id from film where film.title LIKE  "Alone Trip"
-- )
-- );
-- 


    
-- * 7c. You want to run an email marketing campaign in Canada, for which you will need the names and email 
-- addresses of all Canadian customers. Use joins to retrieve this information.

-- select * from country;
-- select * from customer;
-- select * from address;
-- select * from city;
-- 
-- 
-- select customer.first_name, customer.last_name, customer.email from
-- customer
-- where customer.address_id in 
-- (
-- select address.address_id from address
-- where address.city_id in 
-- (
-- select city.city_id from city
-- where city.country_id in
-- (
-- select country.country_id from country
-- where country LIKE "Canada"
-- )
-- )
-- );


 
-- * 7d. Sales have been lagging among young families, and you wish to target all family movies for a promotion. 
-- Identify all movies categorized as famiy films.

-- select * from film; -- returns film_id and title
-- select * from film_category; -- Returns film_id and category_id
-- select * from category;
-- 
-- 
-- select film.title, film.description from film
-- where film_id in
-- (
-- select film_category.film_id from film_category
-- where film_category.category_id in
-- (
-- select category.category_id from category
-- where category.name LIKE "Family"
-- )
-- );
-- 
-- # Additional query for getting the count of films....
-- 
-- select count(film.title) from film
-- where film_id in
-- (
-- select film_category.film_id from film_category
-- where film_category.category_id in
-- (
-- select category.category_id from category
-- where category.name LIKE "Family"
-- )
-- );

 
-- * 7e. Display the most frequently rented movies in descending order.

-- select * from rental; -- rental_id and inventory_id
-- select * from inventory; -- inventory_id and film_id
-- select * from film; -- film_id and title, description
-- 
-- 
-- select film.title, count(film.title) as film_count
-- from film,inventory, rental
-- where film.film_id = inventory.film_id and inventory.inventory_id = rental.inventory_id
-- group by 1 order by film_count desc;


   	
-- * 7f. Write a query to display how much business, in dollars, each store brought in.

-- select * from store;
-- select * from inventory;
-- select * from rental;
-- select * from payment;
-- 
-- select store.store_id, sum(payment.amount) as total_amount from
-- store, payment, staff
-- where store.store_id = staff.store_id and staff.staff_id = payment.staff_id
-- group by 1;
-- 
-- select * from payment where rental_id is NULL;

 
-- * 7g. Write a query to display for each store its store ID, city, and country.

-- select * from store; -- returns store_id and address_id
-- select * from address; -- returns city_id
-- select * from city; -- returns city and country_id
-- select * from country; -- returns country name
-- 
-- select store.store_id, city.city, country.country from
-- store, address, city, country
-- where 
-- store.address_id = address.address_id and address.city_id = city.city_id and city.country_id = country.country_id;

   	
-- * 7h. List the top five genres in gross revenue in descending order. 
-- (**Hint**: you may need to use the following tables: category, film_category, inventory, payment, and rental.)

select * from category;
select * from film_category;
select * from inventory;
select * from payment;
select * from rental;

select category.name, sum(payment.amount) as gross_revenue from
payment, rental, inventory, film_category, category
where
payment.rental_id = rental.rental_id and rental.inventory_id = inventory.inventory_id 
	and inventory.film_id = film_category.film_id and film_category.category_id = category.category_id
group by 1 order by gross_revenue desc limit 5;