-- 1. Tworzysz bazę danych osób, które chcą nawiązać ze sobą kontakt. Dane: imię, nazwisko, zainteresowania. Utwórz bazę i tabele.




CREATE DATABASE 4e_1_kontakty;

USE 4e_1_kontakty;

CREATE TABLE osoby(
    id INT PRIMARY KEY AUTO_INCREMENT,
    imie VARCHAR(250),
    nazwisko VARCHAR(250)
);

CREATE TABLE hobby(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nazwa VARCHAR(250)
);

CREATE TABLE zainteresowania(
    osoba INT,
    hobby INT,
    PRIMARY KEY(osoba,hobby),
    FOREIGN KEY(osoba) REFERENCES osoby(id),
    FOREIGN KEY(hobby) REFERENCES hobby(id)
);

INSERT INTO osoby
    (imie, nazwisko)
VALUES
    ('MATEUSZ', 'PALICKI'),
    ('DAWID', 'WARMIŃSKI'),
    ('BARTEK', 'LEŚNIEWSKI');

INSERT INTO hobby
    (nazwa)
VALUES
    ('Bieganie'),
    ('Granie'),
    ('Serfowanie'),
    ('Zwiedzanie'),
    ('Łowienie ryb');
        
-- 2. Dodaj dane trzech osób: pierwsza ma dwa zainteresowania (bieganie, granie), druga jedno (serfowanie), trzecia cztery (granie, zwiedzanie, bieganie, łowienie ryb)

INSERT INTO zainteresowania
    (osoba,hobby)
VALUES
    (1,1),
    (1,2),
    (2,3),
    (3,2),
    (3,4),
    (3,1),
    (3,5);

-- 3. Wyświetl wszystkie osoby które interesują się serfowaniem
SELECT * 
FROM osoby 
    INNER JOIN zainteresowania ON osoby.id = zainteresowania.osoba
WHERE 
    hobby = 3;

-- 4. Wyświetl wszystkie osoby, które interesują się graniem
SELECT imie,nazwisko
FROM osoby
    INNER JOIN zainteresowania ON osoby.id = zainteresowania.osoba
    INNER JOIN hobby ON hobby.id = zainteresowania.hobby
WHERE 
    nazwa = 'granie';

-- 5. Jeśli trzeba - popraw strukturę tabel w bazie tak, aby powyższe zapytania były łatwe do napisania

DELETE FROM hobby
WHERE nazwa = 'Serfowanie';

DELETE FROM zainteresowania
WHERE hobby = 3;