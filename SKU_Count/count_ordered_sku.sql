/* Write down a query to find all the orders which have more that 2 items. Output should contain number of items and order increment id */
SELECT increment_id, COUNT(sku) FROM sales_order JOIN sales_order_item ON entity_id = order_id GROUP BY entity_id, increment_id HAVING COUNT(sku) > 2;
