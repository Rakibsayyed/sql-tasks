/* Write a query that outputs, SKU and pretty URL of the product that is seen on the fronend. */
SELECT cpe.entity_id ,cpe.sku , cpev.value,ur.request_path FROM catalog_product_entity cpe JOIN url_rewrite ur JOIN catalog_product_entity_varchar cpev ON cpe.entity_id = ur.entity_id = cpev.entity_id;
