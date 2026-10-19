-- 1. Utwórz bazę firma

CREATE DATABASE 4e_1_firma;

USE 4e_1_firma;
-- 2. Utwórz tabelę Pracownicy
CREATE TABLE pracownicy(
    kod CHAR(3),
    imie_nazwisko VARCHAR(255),
    jezyk VARCHAR(250),
    adres VARCHAR(250)
);

-- kod pracownika (tekst, 3 znaki)
-- imię nazwisko
-- język
-- adres
-- 3. wpisz dane:
INSERT INTO pracownicy
VALUES
('P01', 'Jan Kowalski', 'PHP', 'os. Wł. Łokietka 3/4 Naklo nad Notecia'),
('P02', 'Antoni Malinowski', 'HTML CSS PHP' ,' Chrzastowo 1'),
('P03', 'Jan Malinowski', 'Java  HTML',' ul. Ogrodowa 2, Nowa Wies Wielka'),
('P04', 'Andrzej Ziemianski', 'JavaScript CSS HTML','ul. Sowia 5, Nowa Wies');
-- 4. Wykonaj zapytania

-- A. Wypisz pracowników, którzy znają język PHP
SELECT * 
FROM pracownicy
WHERE jezyk LIKE '%PHP%';
-- B. Wypisz pracowników, którzy znają język Java
SELECT * 
FROM pracownicy
WHERE jezyk LIKE '%Java%';
-- C. Wypisz pracowników mieszkających w Nakle nad Notecią
SELECT *
FROM pracownicy
WHERE adres LIKE '%Naklo nad Notecia%';
-- D. Wypisz pracowników mieszkających w Nowej Wsi
SELECT * 
FROM pracownicy
WHERE adres LIKE '%Nowa Wies%';

-- E. Wypisz wszystkie nazwy miejscowości pracowników
-- C. Wypisz imiona i nazwiska pracowników posortowane według nazwisk (ORDER BY)
SELECT * 
FROM pracownicy
-- 5. Jeśli masz problemy z wykonaniem zapytań, popraw strukturę tabeli i wpisz na nowo dane - tak, aby tych problemów już nie mieć


DROP TABLE pracownicy;

CREATE TABLE pracownicy(
    kod CHAR(3),
    imie VARCHAR(255),
    nazwisko VARCHAR(255),
    jezyk VARCHAR(250),
    adres VARCHAR(250),
    miejscowosc VARCHAR(255)
);

INSERT INTO pracownicy
VALUES
('P01', 'Jan', 'Kowalski', 'PHP', 'os. Wł. Łokietka 3/4', 'Naklo nad Notecia'),
('P02', 'Antoni', 'Malinowski', 'CSS' ,'Chrzastowo 1','Chrzastowo'),
('P02', 'Antoni', 'Malinowski', 'HTML' ,'Chrzastowo 1','Chrzastowo'),
('P02', 'Antoni', 'Malinowski', 'PHP' ,'Chrzastowo 1','Chrzastowo'),
('P03', 'Jan', 'Malinowski', 'Java',' ul. Ogrodowa 2', 'Nowa Wies Wielka'),
('P03', 'Jan', 'Malinowski', 'HTML',' ul. Ogrodowa 2', 'Nowa Wies Wielka'),
('P04', 'Andrzej', 'Ziemianski', 'JavaScript','ul. Sowia 5','Nowa Wies'),
('P04', 'Andrzej', 'Ziemianski', 'CSS','ul. Sowia 5','Nowa Wies'),
('P04', 'Andrzej', 'Ziemianski', 'HTML','ul. Sowia 5','Nowa Wies');


SELECT * 
FROM pracownicy
WHERE
    jezyk = 'Java';

SELECT DISTINCT imie, nazwisko 
FROM pracownicy
WHERE
    miejscowosc = 'Nowa Wies';

SELECT DISTINCT miejscowosc
FROM pracownicy; 

SELECT DISTINCT imie, nazwisko
FROM pracownicy 
ORDER BY nazwisko;

-- 1. Każda porządna tabela powinna posiadać klucz, dodaj pole jeśli trzeba. 
ALTER TABLE pracownicy
ADD COLUMN id INT PRIMARY KEY AUTO_INCREMENT FIRST;
-- 2. Jan Malinowski poznał nowy język (CSS) - dopisz do tabeli.
INSERT INTO pracownicy VALUES 
(null, 'P03', '')



-- 3. Antoni Malinowski poznał nowy język - JavaScript i zmienił adres na Naklo nad Notecia, Staszica 1 - dopisz nowy wiersz do tabeli

-- 4. Wyświetl imię i nazwisko pracowników znających język CSS

-- 5. Gdzie mieszka Antoni Malinowski? Wypisz imię, nazwisko, ulicę, miejscowość

-- 6. Usuwamy informację o znajomości PHP (bo tak)

-- 7. Sprawdź adres Jana Kowalskiego

-- 8. Zatrudniliśmy nowego pracownika, wpisz jego dane: Aleksander Nowowiejski, mieszka w Nowej Wsi, ulica Pogodna 16

-- 9. Popraw strukturę tabeli tak, aby nie było tych problemów (redundacja, anomalia wstawiania, aktualizacji, usuwania)