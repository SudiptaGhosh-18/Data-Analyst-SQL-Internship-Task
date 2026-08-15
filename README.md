# Data-Analyst-SQL-Internship-Task
Cover of  internship criteria SQL queries using tool of PostgreSQL.

##[LIMIT](https://github.com/SudiptaGhosh-18/Data-Analyst-SQL-Internship-Task/blob/main/LIMIT.sql)


###  What this code means:
CREATE TABLE customers: This tells the database to make a new table named "customers".
customer_id INT PRIMARY KEY: This makes an ID column for numbers (`INT`). **PRIMARY KEY** means every ID must be unique (no duplicates) and cannot be left empty.
customer_name VARCHAR(50): This makes a column for names. It can hold text up to 50 characters long.

---

## Adding Data and Showing Results

Next, we add 6 customers into our table and then ask the database to show us the first 5 names.



###  What this code means:
INSERT INTO: This line inserts or adds our list of 6 names into the table columns.
SELECT * FROM customers: The star '*' means "show everything". This command asks to see all columns from our customer table.
ORDER BY customer_id ASC: This sorts our data by ID number, starting from the smallest number to the biggest (1, 2, 3...).
LIMIT 5: This tells the database to only show the top 5 rows. That is why the 6th customer ("Eli Korth") does not appear in the final screenshot output.
