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