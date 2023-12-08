/* Write a query that queries information_schema table to find out all the tables which contain a column named sku */
SELECT TABLE_NAME, COLUMN_NAME, TABLE_SCHEMA FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME LIKE '%sku%' AND TABLE_SCHEMA = 'magento';
