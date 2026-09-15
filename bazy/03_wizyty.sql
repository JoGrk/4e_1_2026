-- Utwórz bazę wizyty i użyj jej
CREATE DATABASE 4e_1_wizyty
USE 4e_1_wizyty

-- Dodaj do bazy tabelę (tabele), w których będziesz zapisywać informacje o wizytach: kto (imię i nazwisko, telefon), kiedy wizyta, czego dotyczy (leczenie, profilaktyka, kontrola)
CREATE TABLE tabela(
    id INT PRIMARY KEY AUTO_INCREMENT,
    Imie VARCHAR(250),
    Nazwisko VARCHAR(250),
    data DATE,
    typ VARCHAR(250)
);
-- Wpisz dane do tabel. Jeden klient był dwa razy (leczenie, profilaktyka), drugi raz (kontrola) 
INSERT INTO tabela
    (Imie,Nazwisko,data,typ) 
VALUES
    ('Jan', 'Kowalski', '2026-09-11', 'Leczenie'),
    ('Jan', 'Kowalski', '2026-09-25', 'Profilaktyka'),
    ('Adam', 'Abacki', '2026-10-12', 'Kontrola');
-- Usuń wizytę drugiego klienta (dane klienta powinny pozostać w bazie)
DELETE FROM tabela
WHERE id = 3;

-- Dodaj wizytę pierwszego klienta, jeszcze raz profilaktyka - ale to trudne słowo i zrób w nim literówkę
INSERT INTO tabela
    (Imie,Nazwisko,data,typ) 
VALUES
    ('Jan', 'Kowalski', '2026-10-11', 'profolaktyka');

-- Wyświetl wszystkie wizyty profilaktyczne
SELECT *
FROM tabela
WHERE typ = 'profilaktyka';

-- Popraw strukturę tabel bazy wizyty

CREATE TABLE klienci(
    id INT PRIMARY KEY AUTO_INCREMENT,
    imie VARCHAR(250),
    nazwisko VARCHAR(250)
);

CREATE TABLE typy(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nazwa VARCHAR(250)
);

CREATE TABLE wizyty(
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_klient INT,
    data DATE,
    id_typ INT
);