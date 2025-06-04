-- to view the order_details table 
SELECT *
FROM order_details;

-- to find the date range of the table 
SELECT MIN(order_date), MAX(order_date)
FROM order_details;

-- to find number of orders made in this date range 
SELECT COUNT(DISTINCT order_id)
FROM order_details;

-- to find number of orders that were made within the date range 
SELECT COUNT(*)
FROM order_details;

-- to find which order has most number of tables 
SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
ORDER BY num_items DESC;

-- to find how many orders had more than 12 items
SELECT COUNT(*) FROM

(SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
HAVING num_items > 12) AS num_orders;
