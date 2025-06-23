USE pti_mart;

-- praktik 1
-- join
-- mengambil semua pelanggan yang sudah transaksi termasuk qty
select tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
from tr_penjualan_dqlab as tp
join ms_pelanggan_dqlab as mp
on tp.kode_pelanggan = mp.kode_pelanggan
group by tp.kode_pelanggan
having tp.qty < 4;

-- praktek 2
-- menggabungkan 2 tabel tanpa memperhatikan relasi keys
select tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
from tr_penjualan_dqlab as tp
join ms_pelanggan_dqlab as mp
on true;

-- praktek 3
-- inner join
select tp.kode_pelanggan, mp.nama_pelanggan, tp.qty
from tr_penjualan_dqlab as tp
inner join ms_pelanggan_dqlab as mp
on tp.kode_pelanggan = mp.kode_pelanggan;

-- praktek 4
-- left join
-- join yang mengambil seluruh data pada sisi tabel sebelah kiri
-- dan hanya mengambil sebagian data pada sisi tabel kanan
-- left outer join
-- ambil semua nama pelanggan 
select tp.kode_pelanggan, nama_pelanggan, tp.qty
from tr_penjualan_dqlab as tp
left join ms_pelanggan_dqlab as mp
on tp.kode_pelanggan = mp.kode_pelanggan;

-- praktek 5
-- right outer join
-- join yang mengambil seluruh data pada sisi tabel sebelah kanan
-- tabel sebelah kiri hanya mengambil yang relasi
-- ambil semua pelanggan yang..
select tp.kode_pelanggan, nama_pelanggan, tp.qty
from tr_penjualan_dqlab as tp
right join ms_pelanggan_dqlab as mp
on mp.kode_pelanggan = tp.kode_pelanggan;
-- ambil semua pelanggan yang tidak pernah transaksi
select tp.kode_pelanggan, nama_pelanggan, tp.qty
from tr_penjualan_dqlab as tp
right join ms_pelanggan_dqlab as mp
on mp.kode_pelanggan = tp.kode_pelanggan
where tp.qty is null;

-- praktek 6 
-- left outer join untuk 3 tabel
-- ambil kategori produk dan nama produk yang dibeli oleh pelanggan 
-- tapi tampilkan pelanggan beserta namanya
select 
tp.kode_pelanggan, 
mp.nama_pelanggan, 
mpd.kategori_produk, 
tp.nama_produk, 
sum(tp.qty) as jumlah_terjual
from ms_pelanggan_dqlab as mp
left join tr_penjualan_dqlab as tp
on mp.kode_pelanggan = tp.kode_pelanggan
left join ms_produk_dqlab as mpd
on mpd.kode_produk = tp.kode_produk
where tp.kode_pelanggan is not null
group by tp.kode_pelanggan, mpd.kategori_produk
having sum(tp.qty) > 4
order by sum(tp.qty) desc;

-- Latihan Mandiri
-- no 1
SELECT 
mp.nama_pelanggan,
tp.nama_produk,
mpd.kategori_produk,
tp.qty
FROM tr_penjualan_dqlab AS tp
INNER JOIN ms_pelanggan_dqlab AS mp 
ON tp.kode_pelanggan = mp.kode_pelanggan
INNER JOIN ms_produk_dqlab AS mpd 
ON tp.kode_produk = mpd.kode_produk;
-- no 2
SELECT 
mp.kode_pelanggan,
mp.nama_pelanggan,
tp.nama_produk,
mpd.kategori_produk,
tp.qty
FROM ms_pelanggan_dqlab AS mp
LEFT JOIN tr_penjualan_dqlab AS tp
ON mp.kode_pelanggan = tp.kode_pelanggan
LEFT JOIN ms_produk_dqlab AS mpd
ON tp.kode_produk = mpd.kode_produk
WHERE tp.qty IS NOT NULL;
-- no 3
SELECT 
mpd.kategori_produk,
SUM(tp.qty) AS total_qty
FROM ms_pelanggan_dqlab AS mp
INNER JOIN tr_penjualan_dqlab AS tp
ON mp.kode_pelanggan = tp.kode_pelanggan
INNER JOIN ms_produk_dqlab AS mpd
ON tp.kode_produk = mpd.kode_produk
GROUP BY mpd.kategori_produk;

-- no 4
SELECT 
p1.kode_produk,
p1.nama_produk AS nama_asli,  -- p1 dan p2 ibarat salinan nama_produk pada tabel ms_produk_dqlab
p2.nama_produk AS nama_duplikat
FROM ms_produk_dqlab AS p1
JOIN ms_produk_dqlab AS p2
ON p1.kode_produk = p2.kode_produk