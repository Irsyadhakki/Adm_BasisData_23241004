
-- Ambil 1 kolom (prefix + alias)
SELECT h.nama AS hero_name FROM Hero as h;
SELECT p.username AS player_username FROM Player as p;
SELECT kc.Hujan AS cuaca_hujan FROM Kondisi_Cuaca as kc;
SELECT l.nama AS lokasi_name FROM Lokasi as l;
SELECT ji.Penguat AS jenis_penguat FROM Jenis_Item as ji;
SELECT i.nama AS item_name FROM Item as i;
SELECT q.deskripsi AS quest_description FROM Quest as q;
SELECT inv.Jumlah AS inventory_jumlah FROM Inventory as inv;
SELECT m.First_Name AS monster_firstname FROM Monster as m;
SELECT m.Level AS monster_level FROM Monster as m;

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