# SQL-Project
# Order Analysis SQL Project 🍽️

## Project Overview
This project explores a restaurant's order and menu data using SQL. The goal is to uncover insights about menu trends, customer ordering patterns, and sales performance.

## Dataset
- **menu_items** table: Item names, categories, and prices
- **order_details** table: Order IDs, item IDs, order dates, and quantities

## Business Questions Answered
### Menu Insights
- How many items are on the menu?
- What are the most and least expensive items?
- What is the average price by category?
- How many Italian dishes are offered?

### Order Insights
- What is the date range of orders?
- How many distinct orders were placed?
- Which orders had the highest spend?
- Which orders contained the most items?
- How many large orders (12+ items) were made?

## Sample Analysis
```sql
-- Top 5 highest spending orders
SELECT order_id, SUM(price) AS total_spend
FROM order_details od
LEFT JOIN menu_items mi ON od.item_id = mi.menu_item_id
GROUP BY order_id
ORDER BY total_spend DESC
LIMIT 5;
