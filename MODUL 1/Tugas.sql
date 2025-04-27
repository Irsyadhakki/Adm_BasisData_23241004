-- CREATE DATABASE game;

USE game;

-- INSERT INTO Hero (nama, HP, level, power, defense, senjata) VALUES
-- ('Arthas', 1000, 5, 150, 80, 'Pedang Cahaya'),
-- ('Sylvanas', 850, 6, 140, 70, 'Busur Bayangan'),
-- ('Thrall', 900, 7, 160, 90, 'Palunya Guntur'),
-- ('Jaina', 800, 8, 130, 60, 'Tongkat Es'),
-- ('Garrosh', 1100, 9, 170, 100, 'Kapak Ganas'),
-- ('Illidan', 950, 10, 180, 85, 'Pisau Bulan'),
-- ('Malfurion', 870, 4, 120, 75, 'Staf Alam'),
-- ('Tyrande', 820, 5, 125, 70, 'Busur Perak'),
-- ('Guldan', 780, 6, 135, 65, 'Tongkat Kegelapan'),
-- ('Anduin', 920, 7, 140, 80, 'Tongkat Cahaya'),
-- ('Valeera', 870, 5, 145, 68, 'Belati Ganda');

SELECT * FROM hero;

-- INSERT INTO Player (username, email, password, Id_Hero) VALUES
-- ('player1', 'player1@example.com', 'password123', 1),
-- ('player2', 'player2@example.com', 'password123', 2),
-- ('player3', 'player3@example.com', 'password123', 3),
-- ('player4', 'player4@example.com', 'password123', 4),
-- ('player5', 'player5@example.com', 'password123', 5);

SELECT * FROM player;

-- INSERT INTO Kondisi_Cuaca (Hujan, Cerah, Salju) VALUES
-- ('Gerimis', NULL, NULL),
-- ('Hujan Deras', NULL, NULL),
-- (NULL, 'Cerah Terang', NULL),
-- (NULL, 'Cerah Berawan', NULL),
-- (NULL, NULL, 'Salju Ringan'),
-- (NULL, NULL, 'Salju Lebat'),
-- ('Hujan Angin', NULL, NULL),
-- (NULL, 'Mendung Cerah', NULL),
-- ('Hujan Petir', NULL, NULL),
-- (NULL, NULL, 'Salju Membeku');

SELECT * FROM kondisi_cuaca;

-- INSERT INTO Lokasi (nama, Deskripsi, Id_Cuaca) VALUES
-- ('Hutan Ajaib', 'Hutan penuh makhluk aneh.', 1),
-- ('Pegunungan Es', 'Dingin menusuk, penuh salju.', 5),
-- ('Kota Tua', 'Bangunan kuno dan legenda.', 2),
-- ('Ladang Luas', 'Hamparan rumput tak berujung.', 3),
-- ('Gurun Pasir', 'Panas dan kering.', 4),
-- ('Hutan Gelap', 'Hampir tidak ada cahaya.', 7),
-- ('Danau Kristal', 'Airnya jernih dan berkilau.', 8),
-- ('Gunung Petir', 'Sering tersambar petir.', 9),
-- ('Desa Beku', 'Tertutup salju sepanjang tahun.', 6),
-- ('Pulau Terapung', 'Mengambang di udara.', 3);

SELECT * FROM lokasi;

-- INSERT INTO Jenis_Item (Penguat, Penyembuh, Khusus) VALUES
-- ('Potion Kekuatan', NULL, NULL),
-- ('Potion Pertahanan', NULL, NULL),
-- (NULL, 'Potion Penyembuh', NULL),
-- (NULL, 'Potion Mana', NULL),
-- (NULL, NULL, 'Potion Kebal Racun'),
-- ('Elixir Kuat', NULL, NULL),
-- (NULL, NULL, 'Potion Anti Beku'),
-- ('Serum Peningkat', NULL, NULL),
-- (NULL, 'Obat Darurat', NULL),
-- (NULL, NULL, 'Batu Portal');

SELECT * FROM jenis_item;

-- INSERT INTO Item (nama, Deskripsi, Id_Jenis, Id_Quest) VALUES
-- ('Pedang Api', 'Pedang yang terbakar.', 1, 1),
-- ('Perisai Es', 'Perisai dari es keras.', 2, 2),
-- ('Potion Penyembuh', 'Mengembalikan HP.', 3, 3),
-- ('Potion Mana', 'Mengisi mana.', 4, 4),
-- ('Potion Kebal Racun', 'Melindungi dari racun.', 5, 5),
-- ('Elixir Kuat', 'Meningkatkan kekuatan.', 6, 6),
-- ('Potion Anti Beku', 'Melindungi dari pembekuan.', 7, 7),
-- ('Serum Peningkat', 'Mempercepat gerakan.', 8, 8),
-- ('Obat Darurat', 'Menyelamatkan di saat genting.', 9, 9),
-- ('Batu Portal', 'Teleportasi antar lokasi.', 10, 10);

SELECT * FROM item;

-- INSERT INTO Quest (syaratLevel, deskripsi, Id_Hero, Id_Lokasi) VALUES
-- ('5', 'Kalahkan monster di Hutan Ajaib.', 1, 1),
-- ('8', 'Temukan artefak di Pegunungan Es.', 2, 2),
-- ('3', 'Selidiki misteri Kota Tua.', 3, 3),
-- ('2', 'Bantu petani di Ladang Luas.', 4, 4),
-- ('7', 'Ambil air dari Danau Kristal.', 5, 7),
-- ('6', 'Hancurkan markas musuh di Gurun.', 6, 5),
-- ('10', 'Taklukkan Gunung Petir.', 7, 8),
-- ('4', 'Bantu penduduk Desa Beku.', 8, 9),
-- ('5', 'Lawan monster di Hutan Gelap.', 9, 6),
-- ('9', 'Jelajahi Pulau Terapung.', 10, 10);

SELECT * FROM quest;


-- INSERT INTO Inventory (Id_Hero, Id_Item, Jumlah) VALUES
-- (1, 41, 1),
-- (1, 43, 1),
-- (2, 42, 1),
-- (2, 44, 1),
-- (3, 45, 1),
-- (4, 46, 1),
-- (5, 47, 1),
-- (6, 48, 1),
-- (7, 49, 1),
-- (8, 50, 1);

SELECT * FROM inventory;

-- INSERT INTO monster (First_Name, Last_Name, HP, Level, Power, Defense, Id_Lokasi) VALUES
-- ('Gor', 'the Brute', 500, '5', 70, 50, 1),
-- ('Frost', 'Fang', 450, '8', 65, 60, 2),
-- ('Shade', 'Whisper', 300, '3', 40, 30, 3),
-- ('Blaz', 'Inferno', 250, '2', 50, 20, 4),
-- ('Crystal', 'Serpent', 400, '7', 55, 45, 7),
-- ('Dust', 'Crawler', 320, '6', 50, 35, 5),
-- ('Volt', 'Storm', 600, '10', 80, 70, 8),
-- ('Chill', 'Reaper', 480, '4', 45, 50, 9),
-- ('Night', 'Stalker', 520, '5', 60, 55, 6),
-- ('Sky', 'Warden', 700, '9', 90, 85, 10);

SELECT * FROM monster;




-- INNER JOIN: Menampilkan hanya data yang cocok di kedua tabel.
-- LEFT JOIN: Menampilkan semua data dari tabel kiri dan data yang cocok dari tabel kanan.
-- RIGHT JOIN: Menampilkan semua data dari tabel kanan dan data yang cocok dari tabel kiri.
-- FULL JOIN: Menampilkan semua data dari kedua tabel, baik yang cocok maupun yang tidak cocok.

-- -- player dengan hero
-- SELECT p.username, p.email, h.nama AS hero_name, h.HP, h.level, h.power, h.defense, h.senjata
-- FROM Player p
-- INNER JOIN Hero h ON p.Id_Hero = h.Id_Hero;


-- -- Hero, Player, dan Item melalui Inventory
-- SELECT p.username, p.email, h.nama AS hero_name, i.nama AS item_name, inv.Jumlah
-- FROM Inventory inv
-- INNER JOIN Hero h ON inv.Id_Hero = h.Id_Hero
-- INNER JOIN Player p ON h.Id_Hero = p.Id_Hero
-- INNER JOIN Item i ON inv.Id_Item = i.Id_Item;

-- -- Quest dengan Hero dan Lokasi

-- SELECT q.deskripsi AS quest_description, h.nama AS hero_name, l.nama AS location_name, q.syaratLevel
-- FROM Quest q
-- INNER JOIN Hero h ON q.Id_Hero = h.Id_Hero
-- INNER JOIN Lokasi l ON q.Id_Lokasi = l.Id_Lokasi;

-- -- item dan jenis item
--  SELECT i.nama AS item_name, i.Deskripsi AS item_description, j.Penguat, j.Penyembuh, j.Khusus
-- FROM Item i
-- INNER JOIN Jenis_Item j ON i.Id_Jenis = j.Id_Jenis;

-- -- monster dengan lokasi
-- SELECT m.First_Name, m.Last_Name, m.HP, m.Power, m.Defense, l.nama AS location_name
-- FROM Monster m
-- INNER JOIN Lokasi l ON m.Id_Lokasi = l.Id_Lokasi;


-- -- semua 
-- SELECT p.username, p.email, h.nama AS hero_name, h.HP, h.level, h.power, h.defense, h.senjata,
--        i.nama AS item_name, inv.Jumlah, q.deskripsi AS quest_description, l.nama AS location_name
-- FROM Player p
-- INNER JOIN Hero h ON p.Id_Hero = h.Id_Hero
-- INNER JOIN Inventory inv ON h.Id_Hero = inv.Id_Hero
-- INNER JOIN Item i ON inv.Id_Item = i.Id_Item
-- INNER JOIN Quest q ON h.Id_Hero = q.Id_Hero
-- INNER JOIN Lokasi l ON q.Id_Lokasi = l.Id_Lokasi;


-- Ambil 1 kolom (prefix + alias)
SELECT h.nama AS hero_name FROM Hero h;
SELECT p.username AS player_username FROM Player p;
SELECT kc.Hujan AS cuaca_hujan FROM Kondisi_Cuaca kc;
SELECT l.nama AS lokasi_name FROM Lokasi l;
SELECT ji.Penguat AS jenis_penguat FROM Jenis_Item ji;
SELECT i.nama AS item_name FROM Item i;
SELECT q.deskripsi AS quest_description FROM Quest q;
SELECT inv.Jumlah AS inventory_jumlah FROM Inventory inv;
SELECT m.First_Name AS monster_firstname FROM Monster m;
SELECT m.Level AS monster_level FROM Monster m;

-- Ambil 2 kolom (prefix + alias)
SELECT h.nama AS hero_name, h.senjata AS hero_senjata FROM Hero h;
SELECT p.username AS player_username, p.email AS player_email FROM Player p;
SELECT kc.Hujan AS cuaca_hujan, kc.Salju AS cuaca_salju FROM Kondisi_Cuaca kc;
SELECT l.nama AS lokasi_name, l.Deskripsi AS lokasi_deskripsi FROM Lokasi l;
SELECT ji.Penguat AS jenis_penguat, ji.Khusus AS jenis_khusus FROM Jenis_Item ji;
SELECT i.nama AS item_name, i.Deskripsi AS item_deskripsi FROM Item i;
SELECT q.syaratLevel AS quest_syarat, q.deskripsi AS quest_description FROM Quest q;
SELECT inv.Id_Hero AS inventory_idhero, inv.Id_Item AS inventory_iditem FROM Inventory inv;
SELECT m.First_Name AS monster_firstname, m.Last_Name AS monster_lastname FROM Monster m;
SELECT m.HP AS monster_hp, m.Power AS monster_power FROM Monster m;






-- CREATE TABLE Kondisi_Cuaca (
--     Id_Cuaca INT PRIMARY KEY AUTO_INCREMENT,
--     Hujan VARCHAR(50),
--     Cerah VARCHAR(50),
--     Salju VARCHAR(50)
-- );

-- CREATE TABLE Lokasi (
--     Id_Lokasi INT PRIMARY KEY AUTO_INCREMENT,
--     nama VARCHAR(100),
--     Deskripsi TEXT,
--     Id_Cuaca INT,
--     FOREIGN KEY (Id_Cuaca) REFERENCES Kondisi_Cuaca(Id_Cuaca)
-- );

-- CREATE TABLE Hero (
--     Id_Hero INT PRIMARY KEY AUTO_INCREMENT,
--     nama VARCHAR(100),
--     HP INT,
--     level INT,
--     power INT,
--     defense INT,
--     senjata VARCHAR(100)
-- );

-- CREATE TABLE Player (
--     Id_Player INT PRIMARY KEY AUTO_INCREMENT,
--     username VARCHAR(50),
--     email VARCHAR(100),
--     password VARCHAR(100),
--     Id_Hero INT,
--     FOREIGN KEY (Id_Hero) REFERENCES Hero(Id_Hero)
-- );

-- CREATE TABLE Jenis_Item (
--     Id_Jenis INT PRIMARY KEY AUTO_INCREMENT,
--     Penguat TEXT,
--     Penyembuh TEXT,
--     Khusus TEXT
-- );

-- CREATE TABLE Quest (
--     Id_Quest INT PRIMARY KEY AUTO_INCREMENT,
--     syaratLevel VARCHAR(50),
--     deskripsi TEXT,
--     Id_Hero INT,
--     Id_Lokasi INT,
--     FOREIGN KEY (Id_Hero) REFERENCES Hero(Id_Hero),
--     FOREIGN KEY (Id_Lokasi) REFERENCES Lokasi(Id_Lokasi)
-- );

-- CREATE TABLE Item (
--     Id_Item INT PRIMARY KEY AUTO_INCREMENT,
--     nama VARCHAR(100),
--     Deskripsi TEXT,
--     Id_Jenis INT,
--     Id_Quest INT,
--     FOREIGN KEY (Id_Jenis) REFERENCES Jenis_Item(Id_Jenis),
--     FOREIGN KEY (Id_Quest) REFERENCES Quest(Id_Quest)
-- );

-- CREATE TABLE Inventory (
--     Id_Hero INT,
--     Id_Item INT,
--     Jumlah INT,
--     PRIMARY KEY (Id_Hero, Id_Item),
--     FOREIGN KEY (Id_Hero) REFERENCES Hero(Id_Hero),
--     FOREIGN KEY (Id_Item) REFERENCES Item(Id_Item)
-- );

-- CREATE TABLE Monster (
--     Id_Monster INT PRIMARY KEY AUTO_INCREMENT,
--     First_Name VARCHAR(50),
--     Last_Name VARCHAR(50),
--     HP INT,
--     Level VARCHAR(50),
--     Power INT,
--     Defense INT,
--     Id_Lokasi INT,
--     FOREIGN KEY (Id_Lokasi) REFERENCES Lokasi(Id_Lokasi)
-- );

