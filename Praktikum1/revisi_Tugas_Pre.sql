-- CREATE DATABASE game;

USE game;

CREATE TABLE Kondisi_Cuaca (
    Id_Cuaca INT PRIMARY KEY AUTO_INCREMENT,
    Hujan VARCHAR(50),
    Cerah VARCHAR(50),
    Salju VARCHAR(50)
);

INSERT INTO Kondisi_Cuaca (Hujan, Cerah, Salju) VALUES
('Gerimis', NULL, NULL),
('Hujan Deras', NULL, NULL),
(NULL, 'Cerah Terang', NULL),
(NULL, 'Cerah Berawan', NULL),
(NULL, NULL, 'Salju Ringan'),
(NULL, NULL, 'Salju Lebat'),
('Hujan Angin', NULL, NULL),
(NULL, 'Mendung Cerah', NULL),
('Hujan Petir', NULL, NULL),
(NULL, NULL, 'Salju Membeku');

SELECT * FROM kondisi_cuaca;

CREATE TABLE Lokasi (
    Id_Lokasi INT PRIMARY KEY AUTO_INCREMENT,
    nama VARCHAR(100),
    Deskripsi TEXT,
    Id_Cuaca INT,
    FOREIGN KEY (Id_Cuaca) REFERENCES Kondisi_Cuaca(Id_Cuaca)
);

INSERT INTO Lokasi (nama, Deskripsi, Id_Cuaca) VALUES
('Hutan Ajaib', 'Hutan penuh makhluk aneh.', 1),
('Pegunungan Es', 'Dingin menusuk, penuh salju.', 5),
('Kota Tua', 'Bangunan kuno dan legenda.', 2),
('Ladang Luas', 'Hamparan rumput tak berujung.', 3),
('Gurun Pasir', 'Panas dan kering.', 4),
('Hutan Gelap', 'Hampir tidak ada cahaya.', 7),
('Danau Kristal', 'Airnya jernih dan berkilau.', 8),
('Gunung Petir', 'Sering tersambar petir.', 9),
('Desa Beku', 'Tertutup salju sepanjang tahun.', 6),
('Pulau Terapung', 'Mengambang di udara.', 3);

SELECT * FROM lokasi;

CREATE TABLE Hero (
    Id_Hero INT PRIMARY KEY AUTO_INCREMENT,
    nama VARCHAR(100),
    HP INT,
    level INT,
    power INT,
    defense INT,
    senjata VARCHAR(100)
);

INSERT INTO Hero (nama, HP, level, power, defense, senjata) VALUES
('Arthas', 1000, 5, 150, 80, 'Pedang Cahaya'),
('Sylvanas', 850, 6, 140, 70, 'Busur Bayangan'),
('Thrall', 900, 7, 160, 90, 'Palunya Guntur'),
('Jaina', 800, 8, 130, 60, 'Tongkat Es'),
('Garrosh', 1100, 9, 170, 100, 'Kapak Ganas'),
('Illidan', 950, 10, 180, 85, 'Pisau Bulan'),
('Malfurion', 870, 4, 120, 75, 'Staf Alam'),
('Tyrande', 820, 5, 125, 70, 'Busur Perak'),
('Guldan', 780, 6, 135, 65, 'Tongkat Kegelapan'),
('Anduin', 920, 7, 140, 80, 'Tongkat Cahaya'),
('Valeera', 870, 5, 145, 68, 'Belati Ganda');

SELECT * FROM hero;

CREATE TABLE Player (
    Id_Player INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50),
    email VARCHAR(100),
    password VARCHAR(100),
    Id_Hero INT,
    FOREIGN KEY (Id_Hero) REFERENCES Hero(Id_Hero)
);

INSERT INTO Player (username, email, password, Id_Hero) VALUES
('player1', 'player1@example.com', 'password123', 1),
('player2', 'player2@example.com', 'password123', 2),
('player3', 'player3@example.com', 'password123', 3),
('player4', 'player4@example.com', 'password123', 4),
('player5', 'player5@example.com', 'password123', 5);

SELECT * FROM player;

CREATE TABLE Jenis_Item (
    Id_Jenis INT PRIMARY KEY AUTO_INCREMENT,
    Penguat TEXT,
    Penyembuh TEXT,
    Khusus TEXT
);

INSERT INTO Jenis_Item (Penguat, Penyembuh, Khusus) VALUES
('Potion Kekuatan', NULL, NULL),
('Potion Pertahanan', NULL, NULL),
(NULL, 'Potion Penyembuh', NULL),
(NULL, 'Potion Mana', NULL),
(NULL, NULL, 'Potion Kebal Racun'),
('Elixir Kuat', NULL, NULL),
(NULL, NULL, 'Potion Anti Beku'),
('Serum Peningkat', NULL, NULL),
(NULL, 'Obat Darurat', NULL),
(NULL, NULL, 'Batu Portal');

SELECT * FROM jenis_item;

CREATE TABLE Quest (
    Id_Quest INT PRIMARY KEY AUTO_INCREMENT,
    syaratLevel VARCHAR(50),
    deskripsi TEXT,
    Id_Hero INT,
    Id_Lokasi INT,
    FOREIGN KEY (Id_Hero) REFERENCES Hero(Id_Hero),
    FOREIGN KEY (Id_Lokasi) REFERENCES Lokasi(Id_Lokasi)
);

INSERT INTO Quest (syaratLevel, deskripsi, Id_Hero, Id_Lokasi) VALUES
('5', 'Kalahkan monster di Hutan Ajaib.', 1, 1),
('8', 'Temukan artefak di Pegunungan Es.', 2, 2),
('3', 'Selidiki misteri Kota Tua.', 3, 3),
('2', 'Bantu petani di Ladang Luas.', 4, 4),
('7', 'Ambil air dari Danau Kristal.', 5, 7),
('6', 'Hancurkan markas musuh di Gurun.', 6, 5),
('10', 'Taklukkan Gunung Petir.', 7, 8),
('4', 'Bantu penduduk Desa Beku.', 8, 9),
('5', 'Lawan monster di Hutan Gelap.', 9, 6),
('9', 'Jelajahi Pulau Terapung.', 10, 10);

SELECT * FROM quest;

CREATE TABLE Item (
    Id_Item INT PRIMARY KEY AUTO_INCREMENT,
    nama VARCHAR(100),
    Deskripsi TEXT,
    Id_Jenis INT,
    Id_Quest INT,
    FOREIGN KEY (Id_Jenis) REFERENCES Jenis_Item(Id_Jenis),
    FOREIGN KEY (Id_Quest) REFERENCES Quest(Id_Quest)
);


INSERT INTO Item (nama, Deskripsi, Id_Jenis, Id_Quest) VALUES
('Pedang Api', 'Pedang yang terbakar.', 1, 1),
('Perisai Es', 'Perisai dari es keras.', 2, 2),
('Potion Penyembuh', 'Mengembalikan HP.', 3, 3),
('Potion Mana', 'Mengisi mana.', 4, 4),
('Potion Kebal Racun', 'Melindungi dari racun.', 5, 5),
('Elixir Kuat', 'Meningkatkan kekuatan.', 6, 6),
('Potion Anti Beku', 'Melindungi dari pembekuan.', 7, 7),
('Serum Peningkat', 'Mempercepat gerakan.', 8, 8),
('Obat Darurat', 'Menyelamatkan di saat genting.', 9, 9),
('Batu Portal', 'Teleportasi antar lokasi.', 10, 10);

SELECT * FROM item;

CREATE TABLE Inventory (
    Id_Hero INT,
    Id_Item INT,
    Jumlah INT,
    PRIMARY KEY (Id_Hero, Id_Item),
    FOREIGN KEY (Id_Hero) REFERENCES Hero(Id_Hero),
    FOREIGN KEY (Id_Item) REFERENCES Item(Id_Item)
);

INSERT INTO Inventory (Id_Hero, Id_Item, Jumlah) VALUES
(1, 41, 1),
(1, 43, 1),
(2, 42, 1),
(2, 44, 1),
(3, 45, 1),
(4, 46, 1),
(5, 47, 1),
(6, 48, 1),
(7, 49, 1),
(8, 50, 1);

SELECT * FROM inventory;

CREATE TABLE Monster (
    Id_Monster INT PRIMARY KEY AUTO_INCREMENT,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    HP INT,
    Level VARCHAR(50),
    Power INT,
    Defense INT,
    Id_Lokasi INT,
    FOREIGN KEY (Id_Lokasi) REFERENCES Lokasi(Id_Lokasi)
);

INSERT INTO monster (First_Name, Last_Name, HP, Level, Power, Defense, Id_Lokasi) VALUES
('Gor', 'the Brute', 500, '5', 70, 50, 1),
('Frost', 'Fang', 450, '8', 65, 60, 2),
('Shade', 'Whisper', 300, '3', 40, 30, 3),
('Blaz', 'Inferno', 250, '2', 50, 20, 4),
('Crystal', 'Serpent', 400, '7', 55, 45, 7),
('Dust', 'Crawler', 320, '6', 50, 35, 5),
('Volt', 'Storm', 600, '10', 80, 70, 8),
('Chill', 'Reaper', 480, '4', 45, 50, 9),
('Night', 'Stalker', 520, '5', 60, 55, 6),
('Sky', 'Warden', 700, '9', 90, 85, 10);

SELECT * FROM monster;

