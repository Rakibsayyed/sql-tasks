#### INFORMATION SCHEMA:
- It is a database within each MYSQL instance.
- It's a place  that stores information about all the other databases that the MySQL server maintains.
- In simple word is MYSQL database where all the other databases are stored.
  
#### Reference : https://dev.mysql.com/doc/refman/8.0/en/information-schema-introduction.html


` SELECT TABLE_NAME, COLUMN_NAME, TABLE_SCHEMA FROM INFORMATION_SCHEMA.COLUMNS WHERE COLUMN_NAME LIKE '%sku%' AND TABLE_SCHEMA = 'magento'; `

- SELECT TABLE_NAME, COLUMN_NAME, TABLE_SCHEMA :- This selects the table name, column name, and database schema for each matching row.
- FROM INFORMATION_SCHEMA.COLUMNS :-  This specifies the table to query, which is the columns table in the information_schema database.
- WHERE COLUMN_NAME LIKE '%sku%' :- This filters the results to only include columns with names that contain sku.
- AND TABLE_SCHEMA = 'magento' :- This further filters the results to only include tables that belong to the "magento" database schema.

