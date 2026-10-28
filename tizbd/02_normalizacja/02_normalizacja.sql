
CREATE DATABASE 4e_1_firma;

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