/* Write a query to print all the order which have at least one product that is now disabled */

SELECT so.entity_id AS order_id, so.increment_id AS order_increment_id, cpe.sku AS product_sku FROM sales_order AS so 
JOIN sales_order_item AS soi ON so.entity_id = soi.order_id JOIN catalog_product_entity AS cpe ON soi.product_id = cpe.entity_id 
JOIN catalog_product_entity_int AS cpe_int ON cpe.entity_id = cpe_int.entity_id 
JOIN eav_attribute AS e_attribute ON cpe_int.attribute_id = e_attribute.attribute_id WHERE e_attribute.attribute_code = 'status' AND cpe_int.value = 2;
