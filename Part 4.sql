-- MySQL Homework 10	

USE sakila;


-- 4a. List the last names of actors, as well as how many actors have that last name.
SELECT  actor.last_name, COUNT(*) FROM actor 
GROUP BY actor.last_name;

  	
-- 4b. List last names of actors and the number of actors who have that last name, 
-- but only for names that are shared by at least two actors
SELECT  actor.last_name, count(actor.last_name) as last_count
from actor group by actor.last_name
having last_count >=2;


-- 4c. Oh, no! The actor `HARPO WILLIAMS` was accidentally entered in the `actor` table as `GROUCHO WILLIAMS`, 
-- the name of Harpo's second cousin's husband's yoga teacher. Write a query to fix the record.
-- 
update actor
set actor.first_name = 'Harpo'
where actor.first_name LIKE 'Groucho' and actor.last_name like 'Williams';

select actor.actor_id, actor.first_name, actor.last_name from actor
where actor.first_name like 'Harpo';

-- 4d. Perhaps we were too hasty in changing `GROUCHO` to `HARPO`. 
-- It turns out that `GROUCHO` was the correct name after all! In a single query, 
-- if the first name of the actor is currently `HARPO`, change it to `GROUCHO`. 
-- Otherwise, change the first name to `MUCHO GROUCHO`, as that is exactly what the actor will be with the grievous error. 
-- BE CAREFUL NOT TO CHANGE THE FIRST NAME OF EVERY ACTOR TO `MUCHO GROUCHO`, HOWEVER! 
-- (Hint: update the record using a unique identifier.)

update actor a
set a.first_name = 'GROUCHO'
WHERE a.first_name LIKE 'Harpo' and a.actor_id = 172;

-- Verify the name update 
select a.actor_id, a.first_name, a.last_name from actor a
where a.first_name like 'GROUCHO';