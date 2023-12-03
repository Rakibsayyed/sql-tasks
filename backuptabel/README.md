## Ways to copy/backup database tables

### Method by queries: 
`CREATE TABLE catalog_product_entity_backup AS SELECT * FROM catalog_product_entity;`
- This query gives the command to create a backup table named catalog_product_entity_backup that contains all the data from the table catalog_product_entity .
- '*' this indicates that all the rows and columns from the existing table will be copied into the new tabale .

`CREATE TABLE catalog_product_entity_backup LIKE catalog_product_entity;`
* This query create the  new table .

` INSERT catalog_product_entity_backup  SELECT * FROM catalog_product_entity;`
* This query copies all the rows and columns of the old table to the new table 

