CREATE TABLE categories (
  id INT NOT NULL,
  name VARCHAR(25) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE products (
  id INT NOT NULL,
  name VARCHAR(25) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE cat_to_prod (
  id INT NOT NULL,
  id_cat INT NOT NULL,
  id_prod INT NOT NULL,
  PRIMARY KEY (id)
);
   
INSERT INTO 
   categories
VALUES 
   (1, 'pet supplies'),
   (2, 'for cats'),
   (3, 'for dogs'),
   (4, 'dry food'),
   (5, 'wet food'),
   (6, 'premium food');
   
   
INSERT INTO 
   products
VALUES 
   (1, 'Arden Grange Premium Dogs'),
   (2, 'Arden Grange Premium Cats'),
   (3, 'sausages'),
   (4, 'Brit Cat'),
   (5, 'Brit Dog'),
   (6, 'milk Prostokvashino');
   
INSERT INTO 
   cat_to_prod
VALUES
   (1, 1, 1),
   (2, 1, 2),
   (3, 1, 4),
   (4, 1, 5),
   (5, 2, 2),
   (6, 2, 4),
   (7, 3, 1),
   (8, 3, 5),
   (9, 4, 1),
   (10, 4, 2),
   (11, 4, 4),
   (12, 4, 5),
   (13, 6, 1),
   (14, 6, 2),
   (15, 6, 4),
   (16, 6, 5);
   
   
SELECT products.name as product, categories.name as category 
FROM products 
LEFT JOIN cat_to_prod on products.id = cat_to_prod.id_prod 
LEFT JOIN categories ON cat_to_prod.id_cat = categories.id;