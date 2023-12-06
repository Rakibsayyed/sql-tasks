/* Find products that were created more than 6 months ago but have not been ordered yet */
SELECT p.entity_id, p.sku, p.created_at FROM catalog_product_entity AS p LEFT JOIN sales_order_item AS oi ON p.entity_id = oi.product_id WHERE oi.product_id IS NULL AND p.created_at <= DATE_SUB(NOW(), INTERVAL 2 MONTH);
