/* Find bestselling products */
SELECT o.sku , SUM(o.qty_ordered) AS quantity FROM sales_order_item o JOIN catalog_product_entity p ON o.sku = p.sku GROUP BY o.sku ORDER BY quantity DESC LIMIT 3;
