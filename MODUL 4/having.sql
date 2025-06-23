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






