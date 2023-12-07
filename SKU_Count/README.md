##### Query : Write down a query to find all the orders which have more that 2 items. Output should contain number of items and order increment id:
` SELECT increment_id, COUNT(sku) FROM sales_order JOIN sales_order_item ON entity_id = order_id GROUP BY entity_id, increment_id HAVING COUNT(sku) > 2; `

#### Notes: 
- increment_id is present in the sales_order table
- COUNT() returns the number of rows that matches a specified criteria.
- GROUP BY The Group By statement is used for organizing similar data into groups. If different rows in a precise column have the same values, it will arrange those rows in a group.


#### Summary to the above query : 
- The query is retrieving orders (increment_id) along with the count of unique SKUs associated with each order. It filters out orders with less than or equal to 2 unique SKUs, and the results are grouped by entity_id and increment_id.

#### reference : 
- https://www.javatpoint.com/
- https://www.w3schools.com/sql/sql_count.asp#:~:text=The%20COUNT()%20function%20returns,that%20matches%20a%20specified%20criterion.
