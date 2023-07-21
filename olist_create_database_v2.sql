

DROP DATABASE IF EXISTS olist;
CREATE DATABASE IF NOT EXISTS olist;
USE olist;

DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS geolocation;
DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS order_payments;
DROP TABLE IF EXISTS order_reviews;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS sellers;


CREATE TABLE IF NOT EXISTS products (

product_id	VARCHAR(50) NOT NULL,
product_category_name VARCHAR(50) ,	
product_name_lenght	FLOAT,
product_description_lenght	FLOAT ,
product_photos_qty	FLOAT,
product_weight_g	FLOAT,
product_length_cm	FLOAT,
product_height_cm	FLOAT,
product_width_cm FLOAT,

PRIMARY KEY(product_id)

);


CREATE TABLE IF NOT EXISTS geolocation (


geolocation_zip_code_prefix INT NOT NULL,
geolocation_lat FLOAT NOT NULL,
geolocation_lng FLOAT NOT NULL,
geolocation_city VARCHAR(50) NOT NULL,
geolocation_state VARCHAR(50) NOT NULL,

PRIMARY KEY(geolocation_zip_code_prefix)

);



CREATE TABLE IF NOT EXISTS sellers (

seller_id	VARCHAR(50) NOT NULL,
seller_zip_code_prefix INT NOT NULL,	
seller_city	VARCHAR(50) NOT NULL,
seller_state VARCHAR(50) NOT NULL,

PRIMARY KEY(seller_id),


);

CREATE TABLE IF NOT EXISTS customers (

customer_id VARCHAR(50) NOT NULL,             
customer_unique_id   VARCHAR(50) NOT NULL,     
customer_zip_code_prefix INT NOT NULL,  
customer_city  VARCHAR(50) NOT NULL,           
customer_state  VARCHAR(50) NOT NULL,

PRIMARY KEY(customer_id),


);

CREATE TABLE IF NOT EXISTS orders (


order_id	VARCHAR(50) NOT NULL,
customer_id	 VARCHAR(50) NOT NULL,
order_status VARCHAR(50)	NOT NULL,
order_purchase_timestamp  DATETIME NOT NULL,	
order_approved_at	DATETIME,
order_delivered_carrier_date	DATETIME,
order_delivered_customer_date	DATETIME,
order_estimated_delivery_date  DATETIME NOT NULL,

PRIMARY KEY(order_id),



);

CREATE TABLE IF NOT EXISTS order_items (

order_id	VARCHAR(50) NOT NULL,
order_item_id	INT NOT NULL,
product_id	VARCHAR(50) NOT NULL,
seller_id	VARCHAR(50)  NOT NULL,
shipping_limit_date	DATETIME NOT NULL,
price	FLOAT NOT NULL,
freight_value FLOAT NOT NULL,

PRIMARY KEY (order_item_id),


);

CREATE TABLE IF NOT EXISTS order_payments (
order_id VARCHAR(50)	NOT NULL,
payment_sequential INT	NOT NULL,
payment_type	VARCHAR(50) NOT NULL,
payment_installments INT	NOT NULL,
payment_value FLOAT NOT NULL,


);

CREATE TABLE IF NOT EXISTS order_reviews (

review_id VARCHAR(50)	NOT NULL,
order_id VARCHAR(50)	NOT NULL,
review_score	INT NOT NULL,
review_comment_title VARCHAR(250)	,
review_comment_message	VARCHAR(250),
review_creation_date	DATETIME NOT NULL,
review_answer_timestamp DATETIME NOT NULL,

PRIMARY KEY(review_id),


);





