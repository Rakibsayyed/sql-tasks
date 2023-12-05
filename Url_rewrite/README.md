` SELECT cpe.sku, cpe.entity_id, ur.request_path FROM catalog_product_entity AS cpe LEFT JOIN url_rewrite AS ur ON cpe.entity_id = ur.entity_id WHERE ur.request_path IS NULL; `
#### Explanation : 
###### LEFT JOIN is used in this query . The query ensure all products are included, even if they don't have a "pretty URL" .

## What is LEFT JOIN ? 
- LEFT JOIN is used to combine to combine two different tables, then we will get all the records from the left table.
-  But we will get only those records from the right table, which have the corresponding key in the left table.
-  Rest other records in the right table for which the common column value doesn't match with the common column value of the left table; then, it is displayed as NULL.

#### Resources for learning LEFT JOIN : 

https://www.javatpoint.com/sql-left-join
