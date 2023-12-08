/* Find top 5 customers based on number of orders they have placed */

SELECT c.entity_id, c.email , COUNT(o.entity_id) AS order_count FROM sales_order AS o  JOIN customer_entity AS c ON o.customer_id = c.entity_id GROUP BY c.entity_id, c.email;
