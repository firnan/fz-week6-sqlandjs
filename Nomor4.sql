-- Query yang dapat menampilkan halaman ke 2 dari data produk termurah yang memiliki harga diatas Rp 50.000,00

SELECT MIN(price) FROM product WHERE price > 50000
