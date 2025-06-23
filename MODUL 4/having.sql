USE pti_mart;

SELECT sum(qty) AS total_qty FROM tr_penjualan_dqlab;

SELECT count(*) AS jumlah FROM tr_penjualan_dqlab; 
SELECT * FROM tr_penjualan_dqlab;

SELECT sum(qty) AS total_qty, count(*) AS jmlh_baris FROM tr_penjualan_dqlab;

SELECT avg(qty) as rata_rata, max(qty) as maksimal,min(qty) as minimum FROM tr_penjualan_dqlab;

select nama_produk from tr_penjualan_dqlab;
select count(distinct nama_produk) as produk from tr_penjualan_dqlab;
select count(distinct nama_produk) as produk,count(nama_produk) as produk from tr_penjualan_dqlab;

SELECT max(qty) as maksimal, max(nama_produk) FROM tr_penjualan_dqlab;

select nama_produk from tr_penjualan_dqlab group by nama_produk;
select nama_produk, sum(qty) as total_qty from tr_penjualan_dqlab group by nama_produk;
select nama_produk, sum(qty) as total_qty from tr_penjualan_dqlab group by nama_produk order by sum(qty) desc;
select nama_produk, qty from tr_penjualan_dqlab group by nama_produk,qty;

select nama_produk, sum(qty) from tr_penjualan_dqlab group by nama_produk having sum(qty) > 4;

-- tugass
select nama_produk, sum(qty) as total from tr_penjualan_dqlab group by nama_produk having sum(qty) > 4;
select nama_produk, sum(qty) as total from tr_penjualan_dqlab group by nama_produk having sum(qty) = 9;

SELECT 
  nama_produk, 
  SUM((harga * qty) * (1 - diskon_persen / 100)) AS total_penjualan
FROM tr_penjualan_dqlab
GROUP BY nama_produk
ORDER BY total_penjualan DESC;


USE pti_smart;
-- Praktek 1 ORDER BY
SELECT * FROM tr_penjualan_dqlab ORDER BY qty;
SELECT nama_produk, qty FROM tr_penjualan_dqlab;
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty;

-- Praktek 2 ORDER BY 2 KOLOM
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty, nama_produk;

-- Latihan Mandiri
-- nomer 1
SELECT * FROM tr_penjualan_dqlab ORDER BY qty, tgl_transaksi;
-- nomer 2
SELECT * FROM ms_pelanggan_dqlab ORDER BY nama_pelanggan;
-- nomer 3
SELECT * FROM ms_pelanggan_dqlab ORDER BY alamat;

-- ASC/Ascending (kecil ke besar) dan DESC/Descending (besar ke kecil)
-- Praktek 3
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty DESC;
SELECT nama_produk, qty FROM tr_penjualan_dqlab ORDER BY qty DESC, nama_produk DESC;

-- Latihan Mandiri 2
-- nomer 1
SELECT * FROM tr_penjualan_dqlab ORDER BY tgl_transaksi DESC, qty ASC;
-- nomer 2
SELECT * FROM ms_pelanggan_dqlab ORDER BY nama_pelanggan DESC;
-- nomer 3
SELECT * FROM ms_pelanggan_dqlab ORDER BY alamat DESC;

-- Praktek 5
SELECT nama_produk, qty, harga, qty*harga AS total
FROM tr_penjualan_dqlab
ORDER BY qty*harga DESC;

-- Latihan Mandiri 3
SELECT * FROM tr_penjualan_dqlab;
SELECT 
  nama_produk,
  qty,
  harga,
  diskon_persen,
  harga * (diskon_persen / 100) AS diskon,
  harga - (harga * (diskon_persen / 100)) AS harga_setelah_diskon
FROM tr_penjualan_dqlab
ORDER BY diskon;

-- praktek 6: menggunakan Where dengan Order by
SELECT nama_produk, qty FROM tr_penjualan_dqlab 
WHERE nama_produk LIKE 'F%'
ORDER BY qty DESC;

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
ORDER BY diskon_persen DESC;

SELECT * FROM tr_penjualan_dqlab ORDER BY diskon_persen DESC;


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

--- HAVING adalah kata kunci untuk filtering atau penyaringan pada hasil agregasi dengan group by ---
-- praktek 18
SELECT nama_produk, SUM(qty) AS produk_terjual 
FROM tr_penjualan_dqlab 
GROUP BY nama_produk 
HAVING SUM(qty) >2; 

-- Latihan Mandiri
-- 1
SELECT nama_produk, SUM(qty) AS produk_terjual
FROM tr_penjualan_dqlab
GROUP BY nama_produk
HAVING SUM(qty) >4;
-- 2
SELECT nama_produk, SUM(qty) AS produk_terjual
FROM tr_penjualan_dqlab
GROUP BY nama_produk
HAVING SUM(qty) =9;
-- 3
SELECT nama_produk, SUM((harga * qty) - diskon_persen) AS total_penjualan
FROM tr_penjualan_dqlab
GROUP BY nama_produk
ORDER BY total_penjualan DESC;

-- SELECT nama_produk, qty, harga, diskon_persen, (qty*harga) AS total_harga, SUM(qty*harga) - (qty * harga * ( diskon_persen / 100 )) AS Total_setelah_Diskon
-- FROM tr_penjualan_dqlab
-- GROUP BY nama_produk, qty
-- HAVING diskon_persen >0
-- ORDER BY SUM(qty)DESC;








