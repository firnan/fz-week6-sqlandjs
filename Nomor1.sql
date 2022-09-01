-- Create Table Produk 
CREATE TABLE product (
	id INT,
    product_name VARCHAR(50) NOT NULL,
    price INT NOT NULL,
    created_at DATETIME,
    update_at DATETIME
);

ALTER TABLE product
MODIFY COLUMN id int AUTO_INCREMENT;

-- Create Table User
CREATE TABLE user (
	id INT AUTO_INCREMENT,
    username VARCHAR(20) NOT NULL,
    password VARCHAR(20) NOT NULL,
    created_at DATETIME,
    update_at DATETIME
);

ALTER TABLE user
MODIFY COLUMN id int AUTO_INCREMENT;

-- Create Table Transaction
CREATE TABLE transaction (
	id INT AUTO_INCREMENT,
    user_id INT NOT NULL,
    total_price INT NOT NULL,
    created_at DATETIME,
    update_at DATETIME
);

ALTER TABLE transaction
MODIFY COLUMN id int AUTO_INCREMENT;
