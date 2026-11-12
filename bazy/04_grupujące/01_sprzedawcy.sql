--  1.Sumę wartości wszystkich zamówień (suma pola wartosc z tabeli zamowienia)

SELECT SUM(wartosc)
FROM zamowienia;

-- 2.  Średnią wartość wszystkich zamówień
SELECT ROUND(AVG(wartosc),2)
FROM zamowienia;
-- 3. Ilość sprzedawców w bazie (tabela sprzedawcy)
SELECT COUNT(IDSprzedawcy) AS ilosc
FROM sprzedawcy;
-- 4. Największą wartość zamówienia

SELECT MAX(wartosc)
FROM zamowienia;

-- GROUP BY 

-- 5.  tabela klienci; pogrupuj według miast i dla każdego miasta podaj najwyższą ocenę ( jaka jest najwyższa ocena w każdym z tych miast)
SELECT miasto,MAX(ocena)
FROM klienci
GROUP BY miasto;

-- 6. tabela zamówienia: pogrupuj według idsprzedawcy i dla każdego z nich podaj najwyższą wartość zamówienia
SELECT MAX(wartosc),IDSprzedawcy
FROm zamowienia
GROUP BY IDSprzedawcy;
-- WHERE

-- 7. tabela zamowienia: pogrupuj według idsprzedawcy i dla każdego z nich podaj najwyższą wartość zamówienia, ale wybierz tylko daty zamówienia z lipca, sierpnia i września 2012 (..........WHERE date beteen '2012-07-01' AND .........)
SELECT MAX(wartosc),IDSprzedawcy
FROm zamowienia
WHERE
    data BETWEEN '2012-07-01' AND '2012-09-30'
GROUP BY IDSprzedawcy;

-- HAVING

-- 8. tabela zamowienia: pogrupuj według idKlienta, oblicz najwyższą wartość, wyświetl tylko te dane, w których ta największa wartość jest większa od 2000 (......... HAVING max(wartosc) > 2000 ............)
SELECT IDKlienta,MAX(wartosc)
FROM zamowienia
GROUP BY IDKlienta
HAVING MAX(wartosc)>2000;
-- 9.  tabela zamowienia: pogrupuj według idKlienta, oblicz najmniejszą wartość, wyświetl tylko te dane, w których ta największa wartość jest z przedziału od 200 do 1000

SELECT IDKlienta, MIN(wartosc)
FROM zamowienia
GROUP BY IDKlienta
HAVING MIN(wartosc) BETWEEN 200 AND 1000;

-- WHERE i HAVING

-- 10. tabela zamowienia: pogrupuj według idKlienta, oblicz najwyższą wartość, ale do zamówienia wybierz tylko klientów o ID z zakresu od 3002 do 3007 (..... WHERE IDKlienta BETWEEN .... AND ....  ......... )
SELECT IDKlienta, MAX(wartosc)
FROM zamowienia
WHERE IDKlienta BETWEEN 3002 AND 3007
GROUP BY IDKlienta;
-- 11.  tabela zamowienia: pogrupuj według idKlienta, oblicz najwyższą wartość, do zamówienia wybierz tylko klientów o ID z zakresu od 3002 do 3007 (WHERE) , a następnie wyświetl tylko te wiersze, w których ta najwyższa wartość jest większa od 1000
SELECT IDKlienta, MAX(wartosc)
FROM zamowienia
WHERE IDKlienta BETWEEN 3002 AND 3007
GROUP BY IDKlienta
HAVING MAX(wartosc)>1000;
-- 12. tabela zamowienia: pogrupuj według IDSprzedawcy, oblicz najwyższą wart
SELECT idsprzedawcy, MAX(wartosc)
FROM zamowienia
WHERE idsprzedawcy BETWEEN 5003 AND 5008
GROUP BY idsprzedawcy;
-- 13. tabela zamówienia: oblicz ile było zamówień z datą '2012-08-17' (WHERE, bez group by)
SELECT COUNT(data)
FROM zamowienia
WHERE data LIKE '2012-08-17';
-- 14. tabela sprzedawcy: ilu jest sprzedawców, dla których podane jest miasto? (WHERE, not null, bez group by)
SELECT COUNT(IDSprzedawcy)
FROM sprzedawcy
WHERE miasto IS NOT NULL;
-- 15.tabela zamówienia: policz ile było zamówień dokonanych w poszczególnych dniach (pogrupuj według daty, policz idzamówienia)