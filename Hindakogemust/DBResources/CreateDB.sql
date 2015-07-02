CREATE DATABASE HindakogemustDB;
USE HindakogemustDB;

CREATE TABLE Kategooria(
ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
nimetus VARCHAR(256) NOT NULL);

CREATE TABLE Asutus(
ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
kategooria_id INT NOT NULL, 
nimi VARCHAR(256) NOT NULL, 
asukoht VARCHAR(256) NOT NULL,
CONSTRAINT un_asutus UNIQUE(nimi,asukoht));

CREATE TABLE Hinnang(
ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
asutuse_id INT NOT NULL, 
hindaja_nimi VARCHAR(256) NOT NULL, 
kommentaar VARCHAR(2048) NOT NULL,
hinne DOUBLE NOT NULL,
CONSTRAINT chk_hinne CHECK(hinne>=0.0 AND hinne<=10.0));

--Vaade pealehe tabeli jaoks (Asutus, asutuse_asukoht). 
CREATE VIEW asutuste_vaade AS 
SELECT nimi, asukoht, SUM(hinne)/COUNT(*) AS keskmine_hinne, COUNT(*) AS hindajaid
FROM Asutus, Hinnang WHERE Asutus.ID=Hinnang.asutuse_ID GROUP BY nimi;

--Suvalisi väärtusi testimiseks.

INSERT INTO Kategooria(nimetus) VALUES('Söögikohad');
INSERT INTO Kategooria(nimetus) VALUES('Remonditöökojad');
INSERT INTO Kategooria(nimetus) VALUES('Riigiasutused');
INSERT INTO Kategooria(nimetus) VALUES('Kinod');
INSERT INTO Kategooria(nimetus) VALUES('Muud');

INSERT INTO Asutus(kategooria_id, nimi, asukoht) VALUES(1, 'Reval Cafe', 'Pärnu mnt');
INSERT INTO Asutus(kategooria_id, nimi, asukoht) VALUES(1, 'Vapiano Solaris', 'Estonia pst');
INSERT INTO Asutus(kategooria_id, nimi, asukoht) VALUES(1, 'McDonalds', 'Sõpruse pst');
INSERT INTO Asutus(kategooria_id, nimi, asukoht) VALUES(1, 'Basiilik Cafe', 'Tartu mnt');
INSERT INTO Asutus(kategooria_id, nimi, asukoht) VALUES(1, 'Peetri Pitsa', 'Liivalaia');
INSERT INTO Asutus(kategooria_id, nimi, asukoht) VALUES(1, 'Restoran Tšaikovski', 'Vene tn');
INSERT INTO Asutus(kategooria_id, nimi, asukoht) VALUES(1, 'Leib resto & aed', 'Aia tn');
INSERT INTO Asutus(kategooria_id, nimi, asukoht) VALUES(1, 'Hesburger', 'Viru tn');
INSERT INTO Asutus(kategooria_id, nimi, asukoht) VALUES(1, 'Sahver', 'Pärnu mnt');
INSERT INTO Asutus(kategooria_id, nimi, asukoht) VALUES(1, 'Ülikooli kohvik', 'Ülikooli');
INSERT INTO Asutus(kategooria_id, nimi, asukoht) VALUES(1, 'Chopsticks', 'Ülemiste');
INSERT INTO Asutus(kategooria_id, nimi, asukoht) VALUES(1, 'Pappa Pizza', 'Riia tn');
INSERT INTO Asutus(kategooria_id, nimi, asukoht) VALUES(1, 'Opera Pizza', 'Anne tn');
INSERT INTO Asutus(kategooria_id, nimi, asukoht) VALUES(1, 'Taverna', 'Raekoja plats');
INSERT INTO Asutus(kategooria_id, nimi, asukoht) VALUES(4, 'Tartu Cinamon', 'Turu');
INSERT INTO Asutus(kategooria_id, nimi, asukoht) VALUES(4, 'Solaris kino', 'Estonia pst');
INSERT INTO Asutus(kategooria_id, nimi, asukoht) VALUES(4, 'Coca-Cola Plaza', 'Hobujaama');
INSERT INTO Asutus(kategooria_id, nimi, asukoht) VALUES(4, 'Katusekino', 'Viru');
INSERT INTO Asutus(kategooria_id, nimi, asukoht) VALUES(4, 'Kosmos', 'Pärnu mnt');
INSERT INTO Asutus(kategooria_id, nimi, asukoht) VALUES(4, 'Ekraan', 'Riia');
INSERT INTO Asutus(kategooria_id, nimi, asukoht) VALUES(4, 'Artis', 'Estonia pst');
INSERT INTO Asutus(kategooria_id, nimi, asukoht) VALUES(2, 'Korras auto', 'Narva mnt');
INSERT INTO Asutus(kategooria_id, nimi, asukoht) VALUES(3, 'Haridus- ja teadusministeerium', 'Munga tn');
INSERT INTO Asutus(kategooria_id, nimi, asukoht) VALUES(3, 'Põllumajandusministeerium', 'Lai tn');
INSERT INTO Asutus(kategooria_id, nimi, asukoht) VALUES(3, 'Justiitsministeerium', 'Tõnismägi');
INSERT INTO Asutus(kategooria_id, nimi, asukoht) VALUES(3, 'Keskkonnaministeerium', 'Narva mnt');

INSERT INTO Hinnang(asutuse_id, hindaja_nimi, kommentaar, hinne) VALUES(11, 'Mari Mets', 'Hea toit. Väga mugav asukoht.', 8.0);
INSERT INTO Hinnang(asutuse_id, hindaja_nimi, kommentaar, hinne) VALUES(11, 'Jaan Päev', 'Kui Kungla rahvas kuldsel a''l kord läks aga laande lauluga...', 9.0);
INSERT INTO Hinnang(asutuse_id, hindaja_nimi, kommentaar, hinne) VALUES(10, 'Aita-Leida Kuusepuu', 'Kui Arno viimaks koolimajja jõudis, olid tunnid juba alanud...', 4.0);
INSERT INTO Hinnang(asutuse_id, hindaja_nimi, kommentaar, hinne) VALUES(10, 'Sander Saar', '“Would it save you a lot of time if I just gave up and went mad now?”
― Douglas Adams, The Hitchhiker''s Guide to the Galaxy', 2.0);
INSERT INTO Hinnang(asutuse_id, hindaja_nimi, kommentaar, hinne) VALUES(9, 'Liis Liivakivi', 'Lorem ipsum dolor sit amet, dolor arcu vitae commodo cras, suspendisse quis vitae, dignissim aenean libero. Amet etiam vulputate praesent imperdiet interdum risus. Velit eros adipiscing, mauris cum mi vestibulum, scelerisque pellentesque neque. Donec integer, fringilla nibh nonummy egestas leo ullamcorper nisl, cum nec felis felis erat dictum curabitur, et nulla, varius rutrum eu.', 6.0);
