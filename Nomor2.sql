-- Add Primary Key for Produk table
ALTER TABLE product
ADD CONSTRAINT PK_product PRIMARY KEY (id);

-- Add Primary Key for User table
ALTER TABLE user
ADD CONSTRAINT PK_user PRIMARY KEY (id);

-- Add Primary Key for Transaction table
ALTER TABLE transaction
ADD CONSTRAINT PK_transaction PRIMARY KEY (id);

-- Create Transaction_Product table & create relation to produk table and transaction table using Foreign Key 
CREATE TABLE transaction_product (
    transaction_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (transaction_id) REFERENCES transaction(id),
    FOREIGN KEY (product_id) REFERENCES product(id)
);
