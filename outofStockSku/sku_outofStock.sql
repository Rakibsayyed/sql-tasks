SELECT entity_id,sku,is_in_stock FROM catalog_product_entity JOIN cataloginventory_stock_item ON entity_id = product_id WHERE is_in_stock = 0 and qty >100;
