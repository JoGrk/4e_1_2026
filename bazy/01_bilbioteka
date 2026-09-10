mysql -u root

CREATE DATABASE 4e_1_biblioteka;

SHOW DATABASES;

USE 4e_1_biblioteka;

DROP TABLE ksiazki;
CREATE TABLE ksiazki(
    autor varchar(250),
    tytul varchar(250),
    cena INT
);

SHOW TABLES;
DESC ksiazki;

INSERT INTO ksiazki
VALUES
    ('Dostoyevski','Zbrodnia i kara',20);

SELECT * FROM ksiazki;
INSERT INTO ksiazki
VALUES
    ('Mickiewicz','Pan Tadeusz',25);

ALTER TABLE ksiazki
ADD id INT PRIMARY KEY AUTO_INCREMENT


DELETE FROM ksiazki
WHERE   id = 3;

CREATE TABLE gatunki(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nazwa varchar(100)
);

INSERT INTO gatunki
    (nazwa)
VALUES
    ('Sensacja'),
    ('Lektura');