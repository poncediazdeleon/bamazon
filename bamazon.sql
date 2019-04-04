DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
	item_id INT NOT NULL AUTO_INCREMENT,
    product_name TEXT NOT NULL,
    department_name TEXT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock_quantity INT NOT NULL,
    product_sales DECIMAL(10, 2),
    PRIMARY KEY (item_id)
);

INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES
('Kindle', 'Electronics', 99.99, 30),
('Apple Smartwatch', 'Electronics', 299.99, 3),
('Headphones', 'Electronics', 19.49, 50),
('RFID Wallet', 'Bamazon Fashion', 11.99, 70),
('Handbag', 'Bamazon Fashion', 9.99, 60),
('Bike', 'Sports & Outdoors', 299.99, 30),
('Camo Shirt', 'Sports & Outdoors', 29.99, 20),
('Calendar', 'Office Products', 19.99, 40);

CREATE TABLE departments (
    department_id INT NOT NULL AUTO_INCREMENT,
    department_name TEXT NOT NULL,
    over_head_costs DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (department_id)
);

INSERT INTO departments (department_name, over_head_costs)
VALUES ('Kitchen', 3000),
('Office Products', 6000),
('Electronics', 10000),
('Bamazon Fashion', 8000),
('Sports & Outdoors', 7000);