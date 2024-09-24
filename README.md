

# Relational Databases. Concepts and Techniques

### [# goit-rdb-hw-04](https://github.com/topics/goit-rdb-hw-04)

<p align="center">
  <img align="center" src="./assets/thumbnail.jpg" width="300" title="Project thumbnail" alt="project thumbnail">
</p>


## DML and DDL Commands. Complex SQL Expressions.

### Assignment Description

1. Create a database for managing a book library according to the structure below. Use DDL commands to create the necessary tables and their relationships.
   
    **Database Structure:**

    a) Schema name — “LibraryManagement”

    b) Table "authors":
      * `author_id` (INT, auto-incrementing PRIMARY KEY)
      * `author_name` (VARCHAR)
    
    c) Table "genres":
      * `genre_id` (INT, auto-incrementing PRIMARY KEY)
      * `genre_name` (VARCHAR)
    
    d) Table "books":
      * `book_id` (INT, auto-incrementing PRIMARY KEY)
      * `title` (VARCHAR)
      * `publication_year` (YEAR)
      * `author_id` (INT, FOREIGN KEY referencing "authors")
      * `genre_id` (INT, FOREIGN KEY referencing "genres")

    e) Table "users":
      * `user_id` (INT, auto-incrementing PRIMARY KEY)
      * `username` (VARCHAR)
      * `email` (VARCHAR)

    f) Table "borrowed_books":
      * `borrow_id` (INT, auto-incrementing PRIMARY KEY)
      * `book_id` (INT, FOREIGN KEY referencing "books")
      * `user_id` (INT, FOREIGN KEY referencing "users")
      * `borrow_date` (DATE)
      * `return_date` (DATE)

2. Populate the tables with simple, fictional test data. One or two rows per table are sufficient.

3. Switch to the database used in [topic 3](https://github.com/oleksandr-romashko/goit-rdb-hw-03). 
  Write a query using the FROM and INNER JOIN operators to join all the data tables loaded from files: `order_details`, `orders`, `customers`, `products`, `categories`, `employees`, `shippers`, `suppliers`. You need to find the common keys for that. 
  Verify the correctness of your query.

4. Execute the following queries:
    💡 Remember to take screenshots of your results and queries.
    * Determine how many rows you get (using the COUNT operator).
    * Change some INNER JOINs to LEFT or RIGHT JOINs. Determine what happens to the row count and why. Write the answer in a text file.
    * Select only the rows where `employee_id > 3 and ≤ 10`.
    * Group by category name, count the number of rows in a group, and find the average products quantity (quantity is found in order_details.quantity).
    * Filter rows where the average quantity is greater than 21.
    * Sort the rows in descending order by row count.
    * Display (select) four rows, skipping the first row.

### Solution

Solutions are represented in [homework](./homework/) folder:

1. Part 1: solution for this task part is placed in [homework/p1](./homework/p1) folder.
2. Part 2: solution for this task part is placed in [homework/p2](./homework/p2) folder.
3. Part 3: solution for this task part is placed in [homework/p3](./homework/p3) folder.
4. Part 4: solution for this task part is placed in [homework/p4](./homework/p4) folder.
