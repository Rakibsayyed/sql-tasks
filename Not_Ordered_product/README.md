` SELECT p.entity_id, p.sku, p.created_at FROM catalog_product_entity AS p LEFT JOIN sales_order_item AS oi ON p.entity_id = oi.product_id WHERE oi.product_id IS NULL AND p.created_at <= DATE_SUB(NOW(), INTERVAL 2 MONTH); `

###### Notes : all the orders are store in the sales_order_item

##### Explanation :

- This query is retrieving information from the tables , **catalog_product_entity** and **sales_order_item**.
- It selects the entity_id , sku , and create_at columns from the table catalog_product_entity.
- The query uses **LEFT JOIN** to combine the table based on matching entity_id and product_id.
- It gives the result to only include rows where there is no matching **product_it** in the sales_order_item table.(oi.product_id IS NULL)
- It considers only the rows where the product was created more then 2 months ago.(p.created_at <= DATE_SUB(NOW(), INTERVAL 2 MONTH);
- in simple words this query finds product which were created  2 months ago and have not been ordered.

#### Explanation : (  <= DATE_SUB(NOW(), INTERVAL 2 MONTH); )

- This is a function used in database to calculate a data in the past.
- **DATA_SUB** used to subtract time from current date/date.
- **NOW()** it's built-in-function which returns current date and time.
- **INTERVAL 2 MONTH** this specifies the time to subtract from the current time.
- **<** it is a comparison operator . It checks if the prodcut creation date is less then the specified date


#### Resources : https://www.w3schools.com/sql/func_mysql_date_sub.asp
