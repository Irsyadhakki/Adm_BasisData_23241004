CREATE TABLE Kondisi_Cuaca (
    Id_Cuaca INT PRIMARY KEY AUTO_INCREMENT,
    Hujan VARCHAR(50),
    Cerah VARCHAR(50),
    Salju VARCHAR(50)
);

CREATE TABLE Lokasi (
    Id_Lokasi INT PRIMARY KEY AUTO_INCREMENT,
    nama VARCHAR(100),
    Deskripsi TEXT,
    Id_Cuaca INT,
    FOREIGN KEY (Id_Cuaca) REFERENCES Kondisi_Cuaca(Id_Cuaca)
);

CREATE TABLE Hero (
    Id_Hero INT PRIMARY KEY AUTO_INCREMENT,
    nama VARCHAR(100),
    HP INT,
    level INT,
    power INT,
    defense INT,
    senjata VARCHAR(100)
);

CREATE TABLE Player (
    Id_Player INT PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(50),
    email VARCHAR(100),
    password VARCHAR(100),
    Id_Hero INT,
    FOREIGN KEY (Id_Hero) REFERENCES Hero(Id_Hero)
);

CREATE TABLE Jenis_Item (
    Id_Jenis INT PRIMARY KEY AUTO_INCREMENT,
    Penguat TEXT,
    Penyembuh TEXT,
    Khusus TEXT
);

CREATE TABLE Quest (
    Id_Quest INT PRIMARY KEY AUTO_INCREMENT,
    syaratLevel VARCHAR(50),
    deskripsi TEXT,
    Id_Hero INT,
    Id_Lokasi INT,
    FOREIGN KEY (Id_Hero) REFERENCES Hero(Id_Hero),
    FOREIGN KEY (Id_Lokasi) REFERENCES Lokasi(Id_Lokasi)
);

CREATE TABLE Item (
    Id_Item INT PRIMARY KEY AUTO_INCREMENT,
    nama VARCHAR(100),
    Deskripsi TEXT,
    Id_Jenis INT,
    Id_Quest INT,
    FOREIGN KEY (Id_Jenis) REFERENCES Jenis_Item(Id_Jenis),
    FOREIGN KEY (Id_Quest) REFERENCES Quest(Id_Quest)
);

CREATE TABLE Inventory (
    Id_Hero INT,
    Id_Item INT,
    Jumlah INT,
    PRIMARY KEY (Id_Hero, Id_Item),
    FOREIGN KEY (Id_Hero) REFERENCES Hero(Id_Hero),
    FOREIGN KEY (Id_Item) REFERENCES Item(Id_Item)
);

CREATE TABLE Monster (
    Id_Monster INT PRIMARY KEY AUTO_INCREMENT,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    HP INT,
    Rank VARCHAR(50),
    Power INT,
    Defense INT,
    Id_Lokasi INT,
    FOREIGN KEY (Id_Lokasi) REFERENCES Lokasi(Id_Lokasi)
);
