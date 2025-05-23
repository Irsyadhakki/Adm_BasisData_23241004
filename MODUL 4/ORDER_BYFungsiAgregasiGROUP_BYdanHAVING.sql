USE pti_mart;

-- CREATE DATABASES pti_mart;

-- nama : irsyad hakki
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
 










