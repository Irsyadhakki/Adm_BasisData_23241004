use pti_mart;

select mp.nama_pelanggan, mp.kode_pelanggan 
from ms_pelanggan_dqlab as mp 
inner join tr_penjualan_dqlab as tp 
ON mp.kode_pelanggan = tp.kode_pelanggan;

select mp.nama_pelanggan, mp.kode_pelanggan, tp.qty 
 from ms_pelanggan_dqlab as mp 
 join tr_penjualan_dqlab as tp 
 ON mp.kode_pelanggan = tp.kode_pelanggan;
 
 
select mp.nama_pelanggan, mp.kode_pelanggan, tp.qty 
 from ms_pelanggan_dqlab as mp 
 join tr_penjualan_dqlab as tp 
 ON mp.kode_pelanggan = tp.kode_pelanggan 
 WHERE tp.qty > 4;
 
SELECT 
  mp.nama_pelanggan, 
  mp.kode_pelanggan, 
  tp.qty
FROM 
  ms_pelanggan_dqlab AS mp
JOIN 
  tr_penjualan_dqlab AS tp 
  ON mp.kode_pelanggan = tp.kode_pelanggan
GROUP BY 
  mp.nama_pelanggan, mp.kode_pelanggan, tp.qty
HAVING 
  tp.qty > 4;



SELECT 
  mp.nama_pelanggan, 
  mp.kode_pelanggan, 
  tp.qty
FROM 
  ms_pelanggan_dqlab AS mp
INNER JOIN 
  tr_penjualan_dqlab AS tp 
  ON mp.kode_pelanggan = tp.kode_pelanggan
GROUP BY 
  mp.nama_pelanggan, mp.kode_pelanggan, tp.qty
HAVING 
  tp.qty > 4;
  
select mp.nama_pelanggan, mp.kode_pelanggan, tp.qty 
 from ms_pelanggan_dqlab as mp 
 left join tr_penjualan_dqlab as tp 
 ON mp.kode_pelanggan = tp.kode_pelanggan;
 


SELECT 
  mp.kode_pelanggan,
  mp.nama_pelanggan,
  ms.kategori_produk,
  ms.nama_produk,
  tr.qty
FROM 
  ms_pelanggan_dqlab AS mp 
LEFT JOIN 
  tr_penjualan_dqlab AS tr 
  ON mp.kode_pelanggan = tr.kode_pelanggan
LEFT JOIN 
  ms_produk_dqlab AS ms 
  ON ms.kode_produk = tr.kode_produk
  WHERE mp.kode_pelanggan is not null;
  



 


