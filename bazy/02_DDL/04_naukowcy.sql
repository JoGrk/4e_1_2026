

 

create table Pracownicy(
  SSN int,
  data_urodzenia date,
  Nazwisko Char(30) not null
);
Create table Projekty(
  Nazwa Char(50) not null,
  miejsce varchar(40)
);
create table Posredniczaca(
    Projekt int not null,
	SSN int not null
  );
 

-- 1. Zmień nazwę tabeli Posredniczaca na Przypisanie.
ALTER TABLE Posredniczaca
RENAME Przypisanie;

--  2. W tabeli Pracownicy zmień nazwę pola SSN na kod, pole powinno być autoinkrementowanym kluczem podstawowym.
ALTER TABLE Pracownicy
CHANGE SSN kod INT PRIMARY KEY AUTO_INCREMENT;

--  3. Do tabeli Projekty dodaj na początku tabeli pole kod. Pole powinno być kluczem podstawowym, jest tekstem o stałej długości czterech znaków.
ALTER TABLE Projekty
ADD kod CHAR(4) PRIMARY KEY FIRST;

-- 4. Zmień typ pola Projekt w tabeli Przypisanie na teksty o stałej długości czterech znaków.
ALTER TABLE Przypisanie 
MODIFY Projekt CHAR(4) PRIMARY KEY;


-- 5. Do tabeli Przypisanie dodaj klucz podstawowy (na obu polach).
ALTER TABLE Przypisanie
DROP PRIMARY KEY,
ADD PRIMARY KEY(Projekt, SSN);

-- 6. W tabeli Projekty ustaw wartość domyślną dla pola Miejsce na 'Bydgoszcz'. (sprawdź składnię np. na w3schools
ALTER TABLE Projekty
ALTER miejsce SET DEFAULT 'Bydgoszcz';

-- 7. Do tabeli Projekty za polem Nazwa dodaj pole czas typu całkowitego.
ALTER TABLE Projekty
ADD czas INT AFTER Nazwa;
-- 8. W tabeli Projekty usuń pole Miejsce

ALTER TABLE Projekty
DROP COLUMN Miejsce;

-- 9. W tabeli Pracownicy zmień pole Nazwisko - powinno być tekstem o zmiennej długości do 50 znaków
ALTER TABLE Pracownicy
MODIFY Nazwisko VARCHAR(50);
-- 10. W tabeli Projekty ustaw wartość domyślną na polu Czas na 100.
ALTER TABLE Projekty
ALTER Czas SET DEFAULT '100';
-- 11. Zmień nazwę tabeli Pracownicy na Naukowcy.
ALTER TABLE Pracownicy
RENAME Naukowcy;

-- 12. W tabeli Przypisanie przesuń pole Projekt za pole SSN.

ALTER TABLE Przypisanie
MODIFY Projekt CHAR(4) AFTER SSN;

-- 13. W tabeli Przypisanie zmień nazwę pola SSN na Naukowiec
ALTER TABLE Przypisanie
CHANGE SSN naukowiec int not null;
-- 14. Z tabeli Naukowcy usuń pole Data_urodzenia
ALTER TABLE Naukowcy
DROP Data_urodzenia;
-- 15. Do tabeli Przypisanie dodaj klucze obce na obu polach.

-- 16. Zaimportuj dane

INSERT INTO Naukowcy(Kod,Nazwisko) 
  VALUES(123234877,'Michael Rogers'),
    (152934485,'Anand Manikutty'),
    (222364883, 'Carol Smith'),
    (326587417,'Joe Stevens'),
    (332154719,'Mary-Anne Foster'),	
    (332569843,'George ODonnell'),
    (546523478,'John Doe'),
    (631231482,'David Smith'),
    (654873219,'Zacary Efron'),
    (745685214,'Eric Goldsmith'),
    (845657245,'Elizabeth Doe'),
    (845657246,'Kumar Swamy');
 INSERT INTO Projekty( Kod,Nazwa,Czas)
 VALUES ('AeH1','Winds: Studying Bernoullis Principle', 156),
       ('AeH2','Aerodynamics and Bridge Design',189),
       ('AeH3','Aerodynamics and Gas Mileage', 256),
       ('AeH4','Aerodynamics and Ice Hockey', 789),
       ('AeH5','Aerodynamics of a Football', 98),
       ('AeH6','Aerodynamics of Air Hockey',89),
       ('Ast1','A Matter of Time',112),
       ('Ast2','A Puzzling Parallax', 299),
       ('Ast3','Build Your Own Telescope', 6546),
       ('Bte1','Juicy: Extracting Apple Juice with Pectinase', 321),
       ('Bte2','A Magnetic Primer Designer', 9684),
       ('Bte3','Bacterial Transformation Efficiency', 321),
       ('Che1','A Silver-Cleaning Battery', 545),
       ('Che2','A Soluble Separation Solution', 778);
 INSERT INTO Przypisanie( Naukowiec, Projekt)
   VALUES (123234877,'AeH1'),
    (152934485,'AeH3'),
    (222364883,'Ast3'),	   
    (326587417,'Ast3'),
    (332154719,'Bte1'),
    (546523478,'Che1'),
    (631231482,'Ast3'),
    (654873219,'Che1'),
    (745685214,'AeH3'),
    (845657245,'Ast1'),
    (845657246,'Ast2'),
    (332569843,'AeH4');