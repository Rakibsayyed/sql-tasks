/* Delete a few product URLS from URL table. Now write a Query to fetch all the products which do not have entry in url_rewrite using a join */
SELECT cpe.sku, cpe.entity_id, ur.request_path FROM catalog_product_entity AS cpe JOIN url_rewrite AS ur ON cpe.entity_id = ur.entity_id WHERE ur.request_path IS NULL; 
