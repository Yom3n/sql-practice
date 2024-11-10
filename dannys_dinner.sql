-- Casestudy 1 - Danny's Diner https://8weeksqlchallenge.com/case-study-1/

DROP TABLE members, menu, sales;

-- CREATE TABLES
CREATE TABLE members (
    customer_id TEXT PRIMARY KEY,
    join_date DATE NOT NULL
);

CREATE TABLE menu (
    product_id SERIAL PRIMARY KEY,
    product_name TEXT  UNIQUE NOT NULL,
    price INTEGER NOT NULL
);

CREATE TABLE sales (
    id SERIAL PRIMARY KEY, 
    order_date DATE,
    customer_id TEXT REFERENCES members(customer_id),
    product_id int REFERENCES menu(product_id)
);

-- FILL TABLES WITH INITIAL DATA
INSERT INTO members (customer_id, join_date) VALUES
('A', '2021-01-07'),
('B', '2022-01-09'),
('C', '2022-01-19');



INSERT INTO menu (product_name, price) VALUES
('sushi', 10),
('curry', 15),
('ramen', 12);

INSERT INTO sales (customer_id, order_date, product_id) VALUES
  ('A', '2021-01-01', '1'),
  ('A', '2021-01-01', '2'),
  ('A', '2021-01-07', '2'),
  ('A', '2021-01-10', '3'),
  ('A', '2021-01-11', '3'),
  ('A', '2021-01-11', '3'),
  ('B', '2021-01-01', '2'),
  ('B', '2021-01-02', '2'),
  ('B', '2021-01-04', '1'),
  ('B', '2021-01-11', '1'),
  ('B', '2021-01-16', '3'),
  ('B', '2021-02-01', '3'),
  ('C', '2022-01-01', '3'),
  ('C', '2021-01-01', '3'),
  ('C', '2021-01-07', '3');