## Week-10-SQL: Homework Assignment

* 1a. Display the first and last names of all actors from the table `actor`. 

![1A](images/1A.png)

* 1b. Display the first and last name of each actor in a single column in upper case letters. Name the column `Actor Name`. 

![1B](images/1B.png)

* 2a. You need to find the ID number, first name, and last name of an actor, of whom you know only the first name, "Joe." What is one query would you use to obtain this information?

![2A](images/2A.png)
  	
* 2b. Find all actors whose last name contain the letters `GEN`:

![2B](images/2B.png)
  	
* 2c. Find all actors whose last names contain the letters `LI`. This time, order the rows by last name and first name, in that order:

![2C](images/2C.png)

* 2d. Using `IN`, display the `country_id` and `country` columns of the following countries: Afghanistan, Bangladesh, and China:

![2D](images/2D.png)

* 3a. Add a `middle_name` column to the table `actor`. Position it between `first_name` and `last_name`. Hint: you will need to specify the data type.

![3A](images/3A.png)
  	
* 3b. You realize that some of these actors have tremendously long last names. Change the data type of the `middle_name` column to `blobs`.

![3B](images/3B.png)

* 3c. Now delete the `middle_name` column.

![3C](images/3C.png)

* 4a. List the last names of actors, as well as how many actors have that last name.

![4A](images/4A.png)
  	
* 4b. List last names of actors and the number of actors who have that last name, but only for names that are shared by at least two actors

![4B](images/4B.png)
  	
* 4c. Oh, no! The actor `HARPO WILLIAMS` was accidentally entered in the `actor` table as `GROUCHO WILLIAMS`, the name of Harpo's second cousin's husband's yoga teacher. Write a query to fix the record.

![4C](images/4C.png)
  	
* 4d. Perhaps we were too hasty in changing `GROUCHO` to `HARPO`. It turns out that `GROUCHO` was the correct name after all! In a single query, if the first name of the actor is currently `HARPO`, change it to `GROUCHO`. Otherwise, change the first name to `MUCHO GROUCHO`, as that is exactly what the actor will be with the grievous error. BE CAREFUL NOT TO CHANGE THE FIRST NAME OF EVERY ACTOR TO `MUCHO GROUCHO`, HOWEVER! (Hint: update the record using a unique identifier.)

![4D](images/4D.png)

* 5a. You cannot locate the schema of the `address` table. Which query would you use to re-create it? 

  * Hint: [https://dev.mysql.com/doc/refman/5.7/en/show-create-table.html](https://dev.mysql.com/doc/refman/5.7/en/show-create-table.html)

![5A](images/5A.png)

* 6a. Use `JOIN` to display the first and last names, as well as the address, of each staff member. Use the tables `staff` and `address`:

![6A](images/6A.png)

* 6b. Use `JOIN` to display the total amount rung up by each staff member in August of 2005. Use tables `staff` and `payment`. 

![6B](images/6B.png)
  	
* 6c. List each film and the number of actors who are listed for that film. Use tables `film_actor` and `film`. Use inner join.

![6C](images/6C.png)
  	
* 6d. How many copies of the film `Hunchback Impossible` exist in the inventory system?

![6D](images/6D.png)

* 6e. Using the tables `payment` and `customer` and the `JOIN` command, list the total paid by each customer. List the customers alphabetically by last name:

  ```
  	![Total amount paid](Images/total_payment.png)
  ```

![6E](images/6E.png)

* 7a. The music of Queen and Kris Kristofferson have seen an unlikely resurgence. As an unintended consequence, films starting with the letters `K` and `Q` have also soared in popularity. Use subqueries to display the titles of movies starting with the letters `K` and `Q` whose language is English. 

![7A](images/7A.png)

* 7b. Use subqueries to display all actors who appear in the film `Alone Trip`.

![7B](images/7B.png)
   
* 7c. You want to run an email marketing campaign in Canada, for which you will need the names and email addresses of all Canadian customers. Use joins to retrieve this information.

![7C](images/7C.png)

* 7d. Sales have been lagging among young families, and you wish to target all family movies for a promotion. Identify all movies categorized as famiy films.

![7D](images/7D.png)

* 7e. Display the most frequently rented movies in descending order.

![7E](images/7E.png)
  	
* 7f. Write a query to display how much business, in dollars, each store brought in.

![7F](images/7F.png)

* 7g. Write a query to display for each store its store ID, city, and country.

![7G](images/7G.png)

* 7h. List the top five genres in gross revenue in descending order. (**Hint**: you may need to use the following tables: category, film_category, inventory, payment, and rental.)

![7H](images/7H.png)
  	
* 8a. In your new role as an executive, you would like to have an easy way of viewing the Top five genres by gross revenue. Use the solution from the problem above to create a view. If you haven't solved 7h, you can substitute another query to create a view.

![8A](images/8A-8C.png)
  	
* 8b. How would you display the view that you created in 8a?

![8B](images/8B.png)

* 8c. You find that you no longer need the view `top_five_genres`. Write a query to delete it.

![8C](images/8A-8C.png)
