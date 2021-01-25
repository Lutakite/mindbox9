SELECT products.name as product, categories.name as category 
FROM products 
LEFT JOIN cat_to_prod on products.id = cat_to_prod.id_prod 
LEFT JOIN categories ON cat_to_prod.id_cat = categories.id;