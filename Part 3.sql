-- MySQL Homework 10	

USE sakila;

-- 3a. Add a `middle_name` column to the table `actor`. 
-- Position it between `first_name` and `last_name`. Hint: you will need to specify the data type.
ALTER TABLE `sakila`.`actor` 
ADD COLUMN `middle_name` VARCHAR(45) NOT NULL 
AFTER `first_name`;

select actor.first_name, actor.middle_name, actor.last_name
from actor;


-- 3b. You realize that some of these actors have tremendously long last names. 
-- Change the data type of the `middle_name` column to `blobs`.
ALTER TABLE `sakila`.`actor` 
CHANGE COLUMN `middle_name` `middle_name` BLOB NOT NULL ;

select actor.first_name, actor.middle_name, actor.last_name
from actor;


-- 3c. Now delete the `middle_name` column.
ALTER TABLE `sakila`.`actor` 
DROP COLUMN `middle_name`;

select * from actor;