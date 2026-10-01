use 4e_1_ddl;
-- 1. Utwórz tabelę vehicles : pole vehicledId całkowite, klucz podstawowy, year liczba całkowita,  make tekst do 100 znaków, wszystkie pola wymagane (bez null)
CREATE TABLE vehicles(
    vehicledId INT PRIMARY KEY,
    year INT NOT NULL,
    make VARCHAR(100) NOT NULL
);

-- 2. Dodaj do tabeli pole model (tekst do 100 znaków, pole wymagane
ALTER TABLE vehicles
ADD COLUMN model VARCHAR(100) NOT NULL;
-- 3. Jednym zapytaniem dodaj pole color i note
ALTER TABLE vehicles
ADD COLUMN color VARCHAR(50),
ADD COLUMN note VARCHAR(255);

-- 4. Kolumna note powinna mieć tylko do 100 znaków Zmień to.
ALTER TABLE vehicles
modify note VARCHAR(100);

-- 5. Jednym zapytaniem zmień typ pola year -na typ mniejszy od int i color (tylko 20 znaków) (pole color ma zmienioną pozycję w tabeli, przesuwamy za pole make)
ALTER TABLE vehicles
MODIFY year smallint,
MODIFY color VARCHAR(20)
    AFTER make;

-- 6. Zmień nazwę pola note na vehicleCondition
ALTER TABLE vehicles
CHANGE note vehicleCondition VARCHAR(100);


-- 7. Usuń kolumnę vehicleCondition
ALTER TABLE vehicles
DROP COLUMN vehicleCondition;


-- 8. Ustaw wartość domyślną dla pola year na 2023
ALTER TABLE vehicles
ALTER year SET DEFAULT 2023;

-- 9. Zmień nazwę tabeli vehicles na cars

ALTER TABLE vehicles
RENAME TO cars;