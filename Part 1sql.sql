-- MySQL Homework 10
-- 1a. Display the first and last names of all actors from the table `actor`. 

USE sakila;

SELECT actor.first_name, actor.last_name
from actor;


-- 1b. Display the first and last name of each actor in a single column in upper case letters. Name the column `Actor Name`. 

SELECT A.first_name, A.last_name, 
	CONCAT(A.first_name, ' ', A.last_name) AS 'Actor Name'
	FROM actor A;