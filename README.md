# SQL Advanced Analytics – Superstore Sales Analysis

## Objective

The objective of this project is to analyze the Superstore sales dataset using advanced SQL concepts such as Subqueries, Common Table Expressions (CTEs), and Window Functions. The project demonstrates how SQL can be used to answer business questions and generate meaningful customer sales insights.

---

## Dataset

- **Dataset:** Sample Superstore
- **Source:** Kaggle – Superstore Dataset
- **Imported Table:** `superstore_raw`

---

## Database Schema

The raw dataset was normalized into the following tables:

- `customers`
- `products`
- `orders`

Data was inserted into these tables using `select distinct` from the `superstore_raw` table.

---

## SQL Concepts Used

- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
  - `row_number()`
  - `rank()`
  - `dense_rank()`
- Joins
- Aggregate Functions
- Group By
- Order By

---

## Business Problems Solved

- Find orders with sales greater than the average sales.
- Find the highest sales order for each customer.
- Calculate total sales for each customer.
- Identify customers whose total sales are above average.
- Rank customers based on total sales.
- Assign row numbers to customer orders.
- Display the top 3 customers based on sales.
- Generate customer sales rankings using JOIN, CTE, and Window Functions.
- Identify:
  - Top 5 customers
  - Bottom 5 customers
  - Customers with only one order
  - Customers with above-average sales
  - Highest order value for each customer

---

## Files Included

- `sql_advanced_analytics.sql` – Complete SQL script
- `README.md` – Project documentation

---

## Key Insights

- A small group of customers contributes a significant portion of total sales.
- Customer ranking helps identify high-value customers for loyalty and retention programs.
- Customers with only one order indicate opportunities for improving customer retention.
- Window Functions simplify ranking and customer segmentation.
- CTEs improve query readability by breaking complex calculations into reusable steps.

---

## Conclusion

This project demonstrates the practical application of advanced SQL techniques for business analytics. By using Subqueries, CTEs, and Window Functions, customer purchasing behavior and sales performance were analyzed effectively. The generated insights can support customer segmentation, sales strategy, and business decision-making.

---

## Author

**Name:** *Your Name*

**Organization:** Celebal Technologies

**Assignment:** SQL Advanced Analytics
