
CREATE DATABASE 4e_1_firma;

USE 4e_1_firma

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

-- 1. Każda porządna tabela powinna posiadać klucz, dodaj pole jeśli trzeba. 
alter table pracownicy
ADD PRIMARY KEY (kod,jezyk);
-- 2. Jan Malinowski poznał nowy język (CSS) - dopisz do tabeli.
INSERT INTO pracownicy(kod,jezyk)
VALUES
('P03', 'CSS');
-- 3. Antoni Malinowski poznał nowy język - JavaScript i zmienił adres na Naklo nad Notecia, Staszica 1 - dopisz nowy wiersz do tabeli
INSERT INTO pracownicy(kod, jezyk, adres, miejscowosc)
VALUES
('P02', 'JavaScript', 'Staszica 1', 'Naklo nad Notecia');

-- 4. Wyświetl imię i nazwisko pracowników znających język CSS
SELECT imie, nazwisko
FROM pracownicy
WHERE jezyk = 'CSS'
-- 5. Gdzie mieszka Antoni Malinowski? Wypisz imię, nazwisko, ulicę, miejscowość
SELECT DISTINCT imie, nazwisko, adres, miejscowosc
FROM pracownicy
WHERE imie = 'Antoni' AND nazwisko = 'Malinowski';
-- 6. Usuwamy informację o znajomości PHP (bo tak)
DELETE FROM pracownicy
WHERE jezyk ='PHP';
-- 7. Sprawdź adres Jana Kowalskiego
SELECT DISTINCT adres, miejscowosc
FROM pracownicy 
WHERE imie ='Jan' AND nazwisko = 'Kowalski';
-- 8. Zatrudniliśmy nowego pracownika, wpisz jego dane: Aleksander Nowowiejski, mieszka w Nowej Wsi, ulica Pogodna 16

