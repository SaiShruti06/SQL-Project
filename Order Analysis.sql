-- to combine menu items and order details into one table 
SELECT *
FROM order_details od LEFT JOIN menu_items mi
	 ON od.item_id = mi.menu_item_id;

-- to find the least and most ordered items and categories they are in 
SELECT item_name, category, COUNT(order_details_id) AS num_purchases
FROM order_details od LEFT JOIN menu_items mi
	 ON od.item_id = mi.menu_item_id
GROUP BY item_name, category
ORDER BY num_purchases DESC;

-- to find the top 5 orders that spent most money 
SELECT order_id, SUM(PRICE) AS total_spend
FROM order_details od LEFT JOIN menu_items mi
	 ON od.item_id = mi.menu_item_id
GROUP BY order_id
ORDER BY total_spend DESC
LIMIT 5;

-- to view the details of highest spent order 
SELECT category, COUNT(item_id) AS num_items
FROM order_details od LEFT JOIN menu_items mi
	 ON od.item_id = mi.menu_item_id
WHERE order_id = 440
GROUP BY category;

-- to view the details of top 5 highest spent 
SELECT order_id, category, COUNT(item_id) AS num_items
FROM order_details od LEFT JOIN menu_items mi
	 ON od.item_id = mi.menu_item_id
WHERE order_id IN (440, 2075, 1957, 330, 2675)
GROUP BY order_id, category;
