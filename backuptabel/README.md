## Ways to copy/backup database tables

### Method by queries: 
`CREATE TABLE catalog_product_entity_backup AS SELECT * FROM catalog_product_entity;`
- This query gives the command to create a backup table named catalog_product_entity_backup that contains all the data from the table catalog_product_entity .
- '*' this indicates that all the rows and columns from the existing table will be copied into the new tabale .

`CREATE TABLE catalog_product_entity_backup LIKE catalog_product_entity;`
* This query create the  new table .

` INSERT catalog_product_entity_backup  SELECT * FROM catalog_product_entity;`
* This query copies all the rows and columns of the old table to the new table 

### Second method bby exporting and the importing the table: 

- 1st, click on the table you want to copy .
- 2nd, click on the operation **Export** option above , save the file as .sql .
- 3rd, create a new table . command (` CREATE TABLE new table LIKE old table ` )
- 4th, go to the new table  click on the **import** option above , select the life and slick on **GO** button.

### Third method (Copy table to (database.table)):
- Go to the table which you want to backup .
- Click on **Operation** option above.
- Go to te Copy table to (database.table) section and from here table can be created and copied.

