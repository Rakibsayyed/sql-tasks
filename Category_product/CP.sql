/* Write a query to fetch all the products which belong to a particular category */
SELECT c.entity_id AS category_id, p.sku FROM catalog_product_entity AS p JOIN catalog_category_product AS cp ON p.entity_id = cp.product_id 
JOIN catalog_category_entity AS c ON cp.category_id = c.entity_id WHERE c.entity_id = 3;
