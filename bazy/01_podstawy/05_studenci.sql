-- 1. Utwórz bazę danych Studenci i przejdź do niej.
CREATE DATABASE 4e_1_studenci;

USE 4e_1_studenci; 

 
-- 2. Chcemy przechowywać informacje o studentach, w tym: imie, nazwisko, telefon. Dodatkowo informację o ocenach, w tym nazwę przedmiotu, ocenę, datę wystawienia.
-- Przygotuj odpowiednie tabele
-- dobierz właściwe typy danych, identyfikator studenta jest tekstem o stałej długości 4 znaków.
-- każda tabela powinna posiać klucze: podstawowy, a jeśli trzeba to też i obcy. 
CREATE TABLE studenci(
    imie VARCHAR(255),
    nazwisko VARCHAR(255),
    telefon VARCHAR(255)
);

ALTER TABLE studenci
ADD id INT PRIMARY KEY AUTO_INCREMENT;

CREATE TABLE przedmioty(
    kod VARCHAR(5) PRIMARY KEY,
    nazwa VARCHAR(250)
);

CREATE TABLE oceny(
    id INT AUTO_INCREMENT PRIMARY KEY,
    idstudent INT, 
    kodprzedmiotu VARCHAR(5),
    ocena INT,
    data DATE,
    FOREIGN KEY (idstudent) REFERENCES studenci(id),
    FOREIGN KEY (kodprzedmiotu) REFERENCES przedmioty(kod)
);
-- 3. wpisz dane:
INSERT INTO studenci
    (imie, nazwisko, telefon)
VALUES
    ('Adam', 'Abacki', '600667769'),
    ('Domino', 'pizza', '123456789');

INSERT INTO przedmioty
    (kod,nazwa)
VALUES
    ('Mat','Matematyka'),
    ('Jang','Jezyk Angielski');

INSERT INTO oceny
    (idstudent, kodprzedmiotu, ocena, data)
VALUES
    (1, 'Jang', 5, '2026-09-30'),
    (2, 'Mat', 4, '2026-10-29 ');        
-- co najmniej dwóch studentów oraz 3 oceny  z dwóch przedmiotów
-- 4. Sprawdź działanie: 

-- dodaj nową ocenę. jakie dane musisz wpisywać?
-- zmień telefon studenta
-- czy możesz usunąć ocenę?
-- czy możesz usunąć przedmiot (czy będzie wiadomo, z jakiego przedmiotu jest ocena?)
-- czy możesz usunąć studenta (czy będzie wiadomo, kto ma daną ocenę?)
-- wyświetl dane ucznia oraz wszystkie jego oceny
SELECT *
FROM studenci
    INNER JOIN oceny ON oceny.idstudent=studenci.id
    INNER JOIN przedmioty ON oceny.kodprzedmiotu=przedmioty.kod;
-- wyświetl przedmioty i oceny
-- wyświetl dane ucznia, przedmioty i oceny


