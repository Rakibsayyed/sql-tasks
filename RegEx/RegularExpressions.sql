/*Write a query to find out of all the SKU's which have numbers in them */
SELECT sku FROM `catalog_product_entity`WHERE sku REGEXP '[0-9]';

/*Query to find type_id start with 'c' */
SELECT type_id FROM `catalog_product_entity` WHERE type_id REGEXP '^g';
