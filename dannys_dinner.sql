-- Casestudy 1 - Danny's Diner
CREATE TABLE members (
    customer_id int PRIMARY KEY,
    join_date TIMESTAMP NOT NULL
);

CREATE TABLE menu (
    product_id int PRIMARY KEY,
    product_name TEXT  UNIQUE NOT NULL,
    price INTEGER NOT NULL
);

CREATE TABLE sales (
    id int PRIMARY KEY, 
    order_date TIMESTAMP,
    customer_id int REFERENCES members(customer_id),
    product_id int REFERENCES menu(product_id)
);