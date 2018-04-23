-- MySQL Homework 10	

USE sakila;

-- * 2a. You need to find the ID number, first name, and last name of an actor, of whom you know only the first name, "Joe." 
-- What is one query would you use to obtain this information?
select actor.actor_id, actor.first_name, actor.last_name
from actor where actor.first_name = "JOE";
-- 
-- 
-- -- * 2b. Find all actors whose last name contain the letters `GEN`:
select  actor.first_name, actor.last_name
from actor where actor.last_name like "%GEN%";


-- * 2c. Find all actors whose last names contain the letters `LI`. 
-- This time, order the rows by last name and first name, in that order:
select actor.first_name, actor.last_name
from actor where actor.last_name like "%LI%"
order by actor.last_name;
-- 


-- * 2d. Using `IN`, display the `country_id` and `country` columns of the following countries: 
-- Afghanistan, Bangladesh, and China:
select c.country_id, c.country from country c
where country IN ('Afghanistan', 'Bangladesh', 'China');-- 