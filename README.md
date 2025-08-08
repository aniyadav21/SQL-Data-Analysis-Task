# 🧠 SQL for Data Analysis – Internship Task 4

This project involves analyzing customer and order data using SQL in PostgreSQL. The goal is to extract meaningful business insights through structured queries using real-world datasets.

## 📊 Dataset Description

The data is divided into three CSV files:

- `customer.csv`: Contains customer details such as name, location, segment, and region.
- `order_rollup.csv`: Contains order-level data including sales amount, order date, and customer ID.
- `product.csv`: Contains product metadata including product category and sub-category.

These files were imported into PostgreSQL and queried using standard SQL techniques.

## 🔍 SQL Features Covered

- **SELECT & WHERE**: Filtering customer data by city, segment, and region.
- **JOINs**: Merging customer and order data using `INNER JOIN`.
- **GROUP BY & Aggregates**: Calculating total sales by region and segment.
- **Subqueries**: Identifying high-value customers.
- **DATE Functions**: Monthly revenue analysis using `DATE_TRUNC()`.
- **Views**: Creating a reusable view for top customers.
- **Ordering & Limits**: Sorting and selecting top records.
  
All queries were written to work specifically with PostgreSQL syntax.


## 📤 How to Run

1. Import the CSV files into PostgreSQL.
2. Run the queries in `queries.sql` using pgAdmin or psql.
3. Review query results (screenshots included in the repo).

