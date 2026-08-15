# Data-Analyst-SQL-Internship-Task
Cover of  internship criteria SQL queries using tool of PostgreSQL.

## [LIMIT](https://github.com/SudiptaGhosh-18/Data-Analyst-SQL-Internship-Task/blob/main/LIMIT.sql)


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


## [LEFT JOIN](https://github.com/SudiptaGhosh-18/Data-Analyst-SQL-Internship-Task/blob/main/LEFT_JOIN.sql)

##  Restaurant Orders Analysis

This query connects restaurants with their orders to find total sales.

###  What This Code Does:
INSERT INTO: Adds 3 new orders into the database.
LEFT JOIN: Connects restaurants and orders together.
COUNT: Calculates total orders for each restaurant.
GROUP BY: Groups the final counts by restaurant name.
HAVING: Filters out locations with 30 or more orders.
ORDER BY: Sorts the list from lowest orders to highest.

### Reading the Results:
* **Taco Fiesta** has **0** orders.
* **Burger Express** has **1** order.
* **Pizza Palace** has **2** orders.


## [HAVING](https://github.com/SudiptaGhosh-18/Data-Analyst-SQL-Internship-Task/blob/main/HAVING.sql)
# E-Commerce & Food Delivery SQL Analytics Project

## Core Analytics Objectives
* Data Management: Setting up clean tables with primary keys and data type limits.
* Relational Connections: Linking transactions to profiles using Left Joins.
* Business Intelligence: Using mathematical aggregation tools to calculate order counts and total revenues.
* Performance Filtering: Applying sorting and conditional rules to highlight top-performing and underperforming locations.


## Customer Database Initialization

This section covers setting up the customer tracking infrastructure and verifying baseline data entry.

###  Creating the Customers Table
The project begins by setting up a dedicated table to house basic profile information for each registered client. 
* A customer identity column is established using whole numbers. This column is locked as a primary key to guarantee that no two separate clients ever share an identical tracking number.
* A text column is designated to store client names, with a strict limit holding up to fifty characters maximum to keep database storage clean and organized.

###  Data Entry and Row Constraints
Six mock client profiles are inserted into the system, including names like Alice Smith, Bob Jones, and Robber Korth. 
* A verification query is executed to pull all columns from the table.
* The system is instructed to sort the output chronologically by the customer identity number in ascending order, from lowest to highest.
* A strict row restriction limit of five is applied to the extraction tool. Because of this boundary, the sixth client profile (Eli Korth) is hidden from the final visual output grid, demonstrating how to save computing power on massive tables.


## Restaurant Order Volume Tracking

This section focuses on connecting different structural data tables together to evaluate active transaction frequencies across restaurant locations.

###  Creating the Orders Table
An independent transaction logging table is established to map every individual purchase back to its origin.
* A unique transaction identity key is assigned to every single incoming invoice.
* A secondary restaurant tracking column is added to act as a bridge back to the business directory.
* A dedicated calendar date column is applied to log the exact year, month, and day the food purchase occurred.

### Relational Table Joining and Order Counting
Three fresh food transactions are added to the ledger, mapping orders directly to restaurant reference numbers. 
* The system connects the restaurant directory table directly to the transaction ledger table.
* A left joining mechanism is selected for this connection. This specific connection type guarantees that every single restaurant brand remains visible in the final report, even if they currently possess zero active sales.
* A counting function counts the total transaction records registered to each location name.
* A grouping rule clusters individual database lines together by their identity and business names so the counting math applies correctly per location.
* A secondary filtering constraint is introduced to show only locations that have accumulated fewer than thirty total orders.
* The output organizes the final list in ascending order, placing the lowest order volumes at the very top. In the final grid, Taco Fiesta shows up with a count of zero, Burger Express shows up with one, and Pizza Palace displays two.

##  Restaurant Revenue Performance Evaluation

This final section analyzes raw transaction wealth to filter out underperforming locations based on total financial accumulation.

###  Revenue Table Setup and Sales Ingestion
A dedicated revenue reporting table is built containing columns for the restaurant name text, individual order identification numbers, and exact numeric decimal amounts for money transactions. Six large-scale sales transactions are populated across three brands: Dominos, Subway, and Burger King.

###  Aggregating Wealth and Group Filtering
A final optimization query is run to calculate exactly how much money each brand brought in.
* A financial math tool sums up all individual transaction decimals into one combined total revenue value per brand.
* The grouping engine concentrates the rows by the business text names so the calculation stays separate for each company.
* A strict group performance boundary rule is applied to the final calculated sums. This boundary hides any business group that failed to generate more than five thousand in total sales.
* The successful groups are sorted in descending order to showcase the top earners first.


### Final Financial Results
Only two major food brands successfully passed the financial performance benchmark:
1. Burger King achieves the highest rank, securing a total revenue value of 5700.00.
2. Dominos secures the second position close behind, displaying a total revenue value of 5600.00.


## [SUBQUERY](https://github.com/SudiptaGhosh-18/Data-Analyst-SQL-Internship-Task/blob/main/SUB.sql)

##  Food Item Price Subquery Analysis

###  What This Code :
* CREATE TABLE: Sets up a table to hold food item names and their exact prices using decimals.
* INSERT INTO: Adds 5 distinct food items with prices ranging from 0.52 to 2.14.
* Subquery: Uses a nested query to calculate the average price of all 5 entries automatically.
* WHERE: Filters out any item that costs less than or equal to that calculated average price.
* ORDER BY DESC: Arranges the final items from the highest price down to the lowest.

### Reading the Results:
The overall average price is roughly 1.27. Only three items cleared this price threshold:
1. Frozen Berries at 2.14
2. Kale at 1.71
3. Broccoli at 1.28



## [VIEW](https://github.com/SudiptaGhosh-18/Data-Analyst-SQL-Internship-Task/blob/main/VIEW.sql)

##  Database Views: Active Orders Analysis

This section covers population of the master transaction table and the creation of a virtual table (View) to streamline reporting for successful sales.

###  What This Code:
* **INSERT INTO**: Populates the master ledger with 6 unique transactions containing order ids, customer references, dates, purchase totals, and transaction states.
* **CREATE VIEW**: Builds a permanent virtual table filter called `active_orders_view`. It stores the query logic without duplicating database storage space.
* **WHERE**: Filters out pending and canceled invoices, focusing strictly on orders marked with a status of 'Completed'.
* **SELECT FROM View**: Runs a standard extraction directly against the newly built virtual table rather than raw columns.

### Reading the Results:
Only three transaction records successfully passed the 'Completed' status rule:
1. **Order 101**: Linked to Customer 1 with an amount of 1500
2. **Order 102**: Linked to Customer 2 with an amount of 3000
3. **Order 104**: Linked to Customer 4 with an amount of 5000




## [NULL](https://github.com/SudiptaGhosh-18/Data-Analyst-SQL-Internship-Task/blob/main/NULL.sql)

##  Handling Missing Data: Null Values Analysis

This section explores how to isolate missing, empty, or unrecorded numerical data within the transaction table.

###  What This Code:
* **INSERT INTO**: Populates the database ledger with 6 mock order rows. Notice that Order 106 is inserted with a `NULL` value in its amount column instead of a number.
* **SELECT * FROM**: Requests all column values for rows that match the filtering constraint.
* **WHERE amount IS NULL**: Looks specifically for rows where the purchase amount was left blank or unspecified. Regular matching operators like `=` do not work on blank records, making `IS NULL` mandatory.

###  Reading the Results:
The execution filters out all standard numerical sales data and successfully highlights the single incomplete transaction:
* **Order 106** (Placed by Customer 5 on 2026-01-22) is caught because its amount field shows **[null]** and its status rests as **Pending**. 




