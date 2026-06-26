# SQL Assignment

## Overview

This project demonstrates fundamental and intermediate SQL concepts using **MySQL**. It includes database creation, table design, relationships, indexing, data insertion, filtering, aggregation, joins, and advanced SQL queries.

The database models a simple order management system consisting of customers, products, orders, and order items.

---

## Database Schema

The project contains the following tables:

* **customers** – Stores customer information.
* **products** – Stores product details and categories.
* **orders** – Stores customer orders.
* **order_items** – Stores the products included in each order.

Relationships are maintained using foreign keys to ensure referential integrity.

---

## Features Implemented

### Database Setup

* Created a new MySQL database.
* Created four relational tables.
* Defined primary and foreign key constraints.

### Indexing

Indexes were created to improve query performance on frequently searched columns.

* Customer Email
* Order Date
* Product Category
* Product Name

### Data Insertion

Inserted sample data into all tables using `INSERT` statements.

### Data Validation

Validated data using:

* `select *`
* `count(*)`

to ensure records were inserted successfully.

---

## Assignment Sections

### Section A – Basic Queries

* Display all records from each table.
* View table structures using `describe`.

### Section B – Filtering

Used `where` clauses to filter data based on:

* Email domain
* Product category
* Product price
* Order status

### Section C – Aggregation

Applied aggregate functions including:

* `count()`
* `sum()`
* `avg()`
* `max()`
* `min()`
* `group by`

### Section D – Joins

Implemented relational queries using:

* `inner join`
* `left join`

These queries combine customer, product, order, and order item information to generate meaningful insights.

### Section E – Advanced SQL

Implemented advanced SQL concepts including:

* `case` statements for product price categorization.
* Customer spending classification.
* Product sales analysis.
* Window functions for calculating running totals.

---

## Technologies Used

* MySQL Community Server
* MySQL Workbench
* SQL

---

## Project Structure

```text
sql-assignment/
│── section_a/
│   └── basic_queries.sql
│── section_b/
│   └── filtering_queries.sql
│── section_c/
│   └── aggregation_queries.sql
│── section_d/
│   └── joins_queries.sql
│── section_e/
│   └── advanced_queries.sql
│── schema.sql
│── insert_data.sql
│── readme.md
```

---

## Learning Outcomes

This assignment demonstrates understanding of:

* Database creation
* Table relationships
* Primary and foreign keys
* Index creation
* Data insertion
* Data validation
* Filtering records
* Aggregate functions
* SQL joins
* Conditional logic using `case`
* Window functions
* Query optimization using indexes

---

## Author

**Name:** *Your Name*

**Assignment:** SQL Assignment

**Database:** MySQL
