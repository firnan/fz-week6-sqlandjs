-- Memasukkan data user berdasarkan data yang disediakan
INSERT INTO user (username, password, created_at, update_at)
VALUES 
("andi","andi123","2022-08-27","2022-08-28"),
("budi","budi_ganteng999","2022-08-27","2022-08-28");

-- Memasukkan data produk berdasarkan data yang disediakan
INSERT INTO product (product_name, price, created_at, update_at)
VALUES 
("baju","67000","2022-08-17","2022-08-17"),
("celana","86000","2022-08-18","2022-08-18"),
("buku","24000","2022-08-19","2022-08-19"),
("sepatu","128000","2022-08-20","2022-08-20"),
("sepeda","1500000","2022-08-21","2022-08-21"),
("bola","17000","2022-08-22","2022-08-22"),
("komputer","8956000","2022-08-23","2022-08-23"),
("gelas","96400","2022-08-24","2022-08-24");

-- Memasukkan data transaksi berdasarkan data yang disediakan
INSERT INTO transaction (user_id, total_price,created_at,update_at)
VALUES 
("3","134000","2022-08-15","2022-08-15"),
("3","258000","2022-08-15","2022-08-15"),
("4","8956000","2022-08-16","2022-08-16"),
("4","128000","2022-08-16","2022-08-16"),
("4","344000","2022-08-19","2022-08-19"),
("4","96000","2022-08-19","2022-08-19"),
("3","192800","2022-08-24","2022-08-24"),
("3","256000","2022-08-24","2022-08-24");

-- Memasukkan data detail transaksi berdasarkan data yang disediakan
INSERT INTO transaction_product (transaction_id, product_id, quantity)
VALUES 
("1", "1", "2"),
("2", "2", "3"),
("3", "7", "1"),
("4", "4", "1"),
("5", "2", "4"),
("6", "3", "4"),
("7", "8", "2"),
("8", "4", "2");

-- Mengubah jumlah pembelian gelas oleh user andi menjadi 1 (note: gunakan sub-query)
UPDATE  transaction_product 
SET     quantity = 
        (
          SELECT transaction_id 
          FROM transaction_product 
          WHERE transaction_product.transaction_id = 1
        )
WHERE transaction_id = 7

-- Menghapus 1 data produk yang memiliki harga terendah (note: gunakan sub-query)
DELETE FROM product
WHERE price IN (SELECT MIN(price) FROM product);

