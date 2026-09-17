-- 1. Tworzysz bazę danych osób, które chcą nawiązać ze sobą kontakt. Dane: imię, nazwisko, zainteresowania. Utwórz bazę i tabele.

-- 2. Dodaj dane trzech osób: pierwsza ma dwa zainteresowania (bieganie, granie), druga jedno (serfowanie), trzecia cztery (granie, zwiedzanie, bieganie, łowienie ryb)

-- 3. Wyświetl wszystkie osoby które interesują się serfowaniem

-- 4. Wyświetl wszystkie osoby, które interesują się graniem

-- 5. Jeśli trzeba - popraw strukturę tabel w bazie tak, aby powyższe zapytania były łatwe do napisania

CREATE TABLE osoby(
    id INT PRIMARY KEY AUTO_INCREMENT,
    imie VARCHAR(250),
    nazwisko VARCHAR(250)
);

CREATE TABLE hobby(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nazwa VARCHAR(250)
);