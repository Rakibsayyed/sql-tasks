/* Write a query to output all the configurable products which are disabled */
SELECT cpe.entity_id, cpe.sku, cpei.value AS 'status' FROM catalog_product_entity cpe JOIN catalog_product_entity_int cpei ON cpe.entity_id = cpei.entity_id 
JOIN eav_attribute ev ON cpei.attribute_id = ev.attribute_id WHERE ev.attribute_code = 'status' AND cpe.type_id = 'configurable' AND cpei.value = 2;
