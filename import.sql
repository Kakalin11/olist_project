SET GLOBAL LOCAL_INFILE=TRUE;

SHOW GLOBAL VARIABLES LIKE 'LOCAL_INFILE';

/* STOP SLAVE;
RESET SLAVE;
START SLAVE; */

LOAD DATA LOCAL INFILE '/Users/kursatakalin/Desktop/Kürşat/proje_fikirleri/Brazilian_e-commerce_dataset/olist_products_dataset.csv' 
INTO TABLE olist.products
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/Users/kursatakalin/Desktop/Kürşat/proje_fikirleri/Brazilian_e-commerce_dataset/olist_geolocation_dataset.csv' 
INTO TABLE olist.geolocation
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/Users/kursatakalin/Desktop/Kürşat/proje_fikirleri/Brazilian_e-commerce_dataset/olist_sellers_dataset.csv' 
INTO TABLE olist.sellers
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/Users/kursatakalin/Desktop/Kürşat/proje_fikirleri/Brazilian_e-commerce_dataset/olist_customers_dataset.csv' 
INTO TABLE olist.customers
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/Users/kursatakalin/Desktop/Kürşat/proje_fikirleri/Brazilian_e-commerce_dataset/olist_orders_dataset.csv' 
INTO TABLE olist.orders
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/Users/kursatakalin/Desktop/Kürşat/proje_fikirleri/Brazilian_e-commerce_dataset/olist_order_items_dataset.csv' 
INTO TABLE olist.order_items
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/Users/kursatakalin/Desktop/Kürşat/proje_fikirleri/Brazilian_e-commerce_dataset/olist_order_payments_dataset.csv' 
INTO TABLE olist.order_payments
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE '/Users/kursatakalin/Desktop/Kürşat/proje_fikirleri/Brazilian_e-commerce_dataset/olist_order_reviews_dataset.csv' 
INTO TABLE olist.order_reviews
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
/*
ALTER TABLE olist.products 
MODIFY COLUMN product_id VARCHAR(70) NOT NULL;



SHOW VARIABLES LIKE "secure_file_priv";

SELECT * FROM olist.products INTO OUTFILE '/Users/kursatakalin/Desktop/Kürşat/proje_fikirleri/Brazilian_e-commerce_dataset/olist_products_dataset.csv';


select * from olist.products
limit 105,1; */







		