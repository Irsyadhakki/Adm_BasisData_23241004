USE pti_mart;

-- CREATE DATABASES pti_mart;

-- nama : Irsyad hakki
-- nim : 23241004
-- kelas : A/4

SELECT * FROM ms_pelanggan_dqlab;

SELECT * FROM ms_pelanggan_dqlab ORDER BY no_urut ASC;
SELECT * FROM ms_pelanggan_dqlab ORDER BY no_urut DESC;

-- ORDER BY
SELECT * FROM tr_penjualan_dqlab;
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty ,nama_produk;
SELECT * FROM ms_pelanggan_dqlab ORDER BY nama_pelanggan;
SELECT * FROM ms_pelanggan_dqlab ORDER BY alamat;

-- ASC DAN Desc
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty; -- secara default asc
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty DESC;
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty DESC , nama_produk DESC;
SELECT * FROM tr_penjualan_dqlab ORDER BY qty,tgl_transaksi;

-- latihan
SELECT * FROM tr_penjualan_dqlab ORDER BY tgl_transaksi DESC, qty ASC;
SELECT * FROM ms_pelanggan_dqlab ORDER BY nama_pelanggan DESC;
SELECT * FROM ms_pelanggan_dqlab ORDER BY alamat DESC;


SELECT nama_produk ,qty ,harga, qty*harga AS total FROM tr_penjualan_dqlab
ORDER BY qty*harga DESC;

SELECT * FROM tr_penjualan_dqlab;
-- latihan
SELECT 
  nama_produk,
  qty,
  harga,
  diskon_persen,
  harga * (diskon_persen / 100) AS diskon,
  harga - (harga * (diskon_persen / 100)) AS harga_setelah_diskon
FROM 
  tr_penjualan_dqlab
ORDER BY 
  diskon;


SELECT nama_produk,qty FROM tr_penjualan_dqlab 
WHERE nama_produk LIKE 'F%' ORDER BY qty DESC;  


-- Latihan Mandiri 4
-- nomer 1
SELECT * FROM tr_penjualan_dqlab
WHERE diskon_persen > 0
ORDER BY harga DESC;
-- nomer 2
SELECT nama_produk, qty, harga FROM tr_penjualan_dqlab
WHERE harga >= 100000
ORDER BY harga DESC;
-- nomer 3
SELECT nama_produk, qty, harga FROM tr_penjualan_dqlab
WHERE harga >= 100000 OR nama_produk LIKE 'T%'
ORDER BY diskon_persen DESC;


--- FUNGSI AGREGASI ---
-- SUM (menjumlahkan nilai)
SELECT SUM(qty) AS total_qty FROM tr_penjualan_dqlab;

-- praktek 8
-- COUNT (menghitung jumlah baris)
SELECT COUNT(*) AS jumlah_baris FROM tr_penjualan_dqlab;
SELECT * FROM tr_penjualan_dqlab;

-- praktek 9
-- menggunakan 2 fungsi agregasi (sum dan count)
SELECT SUM(qty) AS total_qty, COUNT(*) AS jumlah_baris FROM tr_penjualan_dqlab;

-- praktek 10
SELECT AVG(qty) AS rata_rata, MAX(qty) AS maximum, MIN(qty) AS minimum FROM tr_penjualan_dqlab;

-- praktek 11
-- COUNT (DISTINC)
-- tanpa count(distinc)
SELECT COUNT(nama_produk) FROM tr_penjualan_dqlab;

-- dengan count(distinc)
SELECT COUNT(DISTINCT nama_produk) FROM tr_penjualan_dqlab;

-- praktek 12
SELECT COUNT(DISTINCT nama_produk), COUNT(nama_produk) FROM tr_penjualan_dqlab;

-- praktek 13
SELECT nama_produk, MAX(qty) FROM tr_penjualan_dqlab;

-- praktek 14
-- group by (pengelompokan isi data dari 1 kolom atau lebih dari biasanya digabung dengan fungsi agregasi)
-- ambil nilai dari pengelompokan nama produk dari tabel penjualan
SELECT nama_produk FROM tr_penjualan_dqlab GROUP BY nama_produk;

-- praktek 15
-- penggunaan group by dengan 2 kolom
SELECT nama_produk, qty FROM tr_penjualan_dqlab GROUP BY nama_produk, qty;

-- praktek 16
-- group by + agregasi
SELECT nama_produk, SUM(qty) FROM tr_penjualan_dqlab GROUP BY nama_produk;

-- praktek 17
-- group by + agregasi + order by
SELECT nama_produk, SUM(qty) 
FROM tr_penjualan_dqlab 
GROUP BY nama_produk 
ORDER BY SUM(qty) DESC;
select * from tr_penjualan_dqlab;
SELECT DATEDIFF(NOW(),tgl_transaksi) from tr_penjualan_dqlab order by DATEDIFF(NOW(),tgl_transaksi) desc;
      
 










DESCRIBE ms_pelanggan_dqlab;