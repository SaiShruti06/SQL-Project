USE restaurant_db;
-- view the menu table 
SELECT *
FROM menu_items;
-- to find the number of items on the menu table
SELECT COUNT(*)
FROM menu_items;
-- to find the least item on the menu table 
SELECT *
FROM menu_items
ORDER BY price;
-- to find the most expensive item on the menu table 
SELECT *
FROM menu_items
ORDER BY price DESC;
-- to find the number of only italian dishes from the menu table 
SELECT COUNT(*)
FROM menu_items
WHERE category="Italian";
-- to find the least and most expensive italian dishes from menu table 
SELECT *
FROM menu_items
WHERE category="Italian"
ORDER BY price;

SELECT *
FROM menu_items
WHERE category="Italian"
ORDER BY price DESC;

-- to find the number of dishes in each category 
SELECT category, COUNT(menu_item_id) AS num_dishes
FROM menu_items
GROUP BY category;

-- to find the average dish price under each category 
SELECT category, AVG(price) AS avg_price
FROM menu_items
GROUP BY category;
