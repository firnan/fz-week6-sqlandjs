# fz-week6-sqlandjs
TASK
1.Buatlah query DDL untuk membuat semua tabel diatas!

2. Buatlah query DDL untuk mendefinisikan constraint tabel (primary key dan relasi)
berdasarkan diagram diatas!

3. Buatlah query-query yang digunakan untuk melakukan: (data disediakan di lampiran)
a. Memasukkan data user berdasarkan data yang disediakan
b. Memasukkan data produk berdasarkan data yang disediakan
c. Memasukkan data transaksi berdasarkan data yang disediakan
d. Memasukkan data detail transaksi berdasarkan data yang disediakan
e. Mengubah jumlah pembelian gelas oleh user andi menjadi 1 (note: gunakan
sub-query)
f. Menghapus 1 data produk yang memiliki harga terendah (note: gunakan
sub-query)

4. Buatlah query yang dapat menampilkan halaman ke 2 dari data produk termurah yang
memiliki harga diatas Rp 50.000,00 dimana setiap halamannya berisi 3 data!

5. Buatlah query yang menampilkan:
a. Total transaksi per user (note: banyak baris sama dengan banyak user)
b. List produk yang telah diurutkan dari yang paling banyak dibeli (note: berisikan
minimal nama produk dan banyak pembelian)

JS
6. Buatlah sebuah fungsi yang digunakan untuk menentukan berapa lembar uang
kembalian yang diberikan kepada pelanggan setelah membayar. Fungsi ini memiliki 2
parameter/masukan yaitu total_pembelian (number) dan uang (number) serta keluaran
berupa sebuah object dengan properti pecahan uang yang diberikan (1000, 2000, 5000,
10000, 50000)!
Contoh Masukan
cariUangKembalian(262000,300000)
Contoh Keluaran
Berdasarkan masukan diatas maka dapat kita tentukan
Kembalian = 300000 - 262000 = 38000
Maka akan didapatkan keluaran sebagai berikut:
{
1000: 1,
2000: 1,
5000: 1,
10000: 3,
50000: 0
}

7. Buatlah sebuah fungsi yang menerima parameter/masukan array yang berisi harga
saham PT.X setiap harinya. Carilah profit/keuntungan paling besar yang bisa didapatkan
dari membeli dan menjual saham PT. X. dengan ketentuan hari beli sebelum hari jual.
Parameter tidak boleh selain array, dan jika tidak bisa mendapat profit/keuntungan dari
parameter array yang diinputkan maka akan menampilkan string “Tidak bisa
mendapatkan profit pada hari-hari ini”!
Example:
Input : findHighestProfit([10, 2, 11, 20, 3, 5])
Output : 18
Input : findHighestProfit([33, 29, 11, 3])
Output : Tidak bisa mendapatkan profit pada hari-hari ini

8. Berdasarkan data yang terlampir, buatlah sebuah fungsi yang dapat memberikan
keluaran berupa hasil rekapitulasi total transaksi per hari dalam bentuk array of object!
(Object keluaran memiliki properti hari dan total)

9. Berdasarkan data yang terlampir, buatlah sebuah fungsi yang menerima masukan
berupa jenis fasilitas dengan tipe data string dengan keluaran berupa array yang
berisikan list cluster apartemen yang memiliki fasilitas tersebut! (Array berisikan string)
Contoh:
Masukan: getApartmentByFacility(“park”)
Keluaran: [“C”,”D”,”E”]

10. Buatlah sebuah fungsi untuk melakukan sanitasi sebuah request object yang diterima
oleh API. Fungsi tersebut memiliki masukan/parameter berupa body (object) yang
merupakan data yang akan di sanitasi dan validProperties (array of string) yang
berisikan properti apa saja yang dapat lolos dari sanitasi. Fungsi ini memiliki keluaran
berupa object hasil sanitasi
Contoh:
Masukan
sanitizeBody({username: “andi”, password: “andi123”, lastname: “siahaan”},
[“username”, “password”])
Keluaran
{
username: “andi”,
password: “andi123”
}
