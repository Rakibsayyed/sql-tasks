/* In this query we can create a new table and simultaneously the table get copied */

CREATE TABLE catalog_product_entity_backup AS SELECT * FROM catalog_product_entity; 

/* below are 2 different queries. 1st query create the table and second query copy/backup the table*/

CREATE TABLE catalog_product_entity_backup LIKE catalog_product_entity;

INSERT catalog_product_entity_backup SELECT * FROM catalog_product_entity; 
