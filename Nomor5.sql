-- Total transaksi per user 
SELECT SUM(total_price) AS "total harga"
FROM transaction
WHERE user_id = 3;

SELECT SUM(total_price) AS "total harga"
FROM transaction
WHERE user_id = 4;

-- List produk yang telah diurutkan dari yang paling banyak dibeli
SELECT product.product_name, transaction_product.product_id, transaction_product.quantity
FROM transaction_product
JOIN product ON product.id=transaction_product.product_id
ORDER BY quantity DESC
