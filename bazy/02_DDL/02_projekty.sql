USE 4e_1_ddl;

CREATE TABLE `projekty` (
  `numer` int(11) NOT NULL default '0',
  `infooproj` varchar(50) default NULL,
  `nazwfirmwyk` varchar(10) default NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
 
INSERT INTO `projekty` (`numer`,`infooproj`,`nazwfirmwyk`) VALUES ('1','malowanie elewacji domu','SUP-Rem');
INSERT INTO `projekty` (`numer`,`infooproj`,`nazwfirmwyk`) VALUES ('2','instalacja nowej kuchni','RemBudSzpachelka');
INSERT INTO `projekty` (`numer`,`infooproj`,`nazwfirmwyk`) VALUES ('3','położenie drewnianej podłogi','Kem-Rem');
INSERT INTO `projekty` (`numer`,`infooproj`,`nazwfirmwyk`) VALUES ('4','przekładka dachu','Jackowski i Syn');
 
 
-- 1. Zmień nazwę tabeli na Lista_projektow

ALTER TABLE projekty
RENAME TO Lista_projektow;
 
-- 2. Zmień pole numer na id_projektu, klucz podstawowy, autoinkrementacja, typ całkowity, nie puste
 
-- 3. Zmień nazwę kolomny infooproj na opis_projektu, do 100 znaków
 
-- 4. zmień nazwę kolumny nazwfirmwyk na nazwa_wykonawcy, teksty do 30 znaków
 
-- 5. zmodyfikuj kolumnę nazwa_wykonawcy, zwiększ ilość znaków do 120
 
-- 6. Jedynym zapytaniem dodaj trzy nowe kolumny: telefon (teksty do 14 znaków), data_poczatkowa, koszt (precyzja 8, 2 miejsca po przecinku).
 
-- 7. Usuń kolumnę data_poczatkowa