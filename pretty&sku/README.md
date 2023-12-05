### Write a query that outputs, SKU and pretty URL of the product that is seen on the frontend. 

#### What is Pretty URL ?
- Pretty URL is also known as Friendly URL.
- It is a web address , which is more readable and understandable to humans. 
#### Example of Pretty URL : 
 ` www.example.com/products/red-shoes `
#### Example of standard URL :
` www.example.com/index.php?page=products&productid=12345 `

#### Query for above question : 
` SELECT cpe.entity_id ,cpe.sku , cpev.value,ur.request_path FROM catalog_product_entity cpe JOIN url_rewrite ur JOIN catalog_product_entity_varchar cpev ON cpe.entity_id = ur.entity_id = cpev.entity_id; `

#### Explanation : 
* This query combines information from three tables  using 'JOIN' to retrieve product IDs, SKUs, URL keys, and actual URLs for all products in a single table. 
