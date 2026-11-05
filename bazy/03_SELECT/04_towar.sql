-- 1. Towary, których WAGA >150 kg;

SELECT *
FROm towar
WHERE Waga >150;

-- 2. całkowita wartość pola CENA jest trzycyfrowa;
SELECT *
FROM towar 
WHERE CENA BETWEEN 100 AND 999.99;


-- 3. 23% podatek od jednej sztuki wynosi więcej niż 750 zł;
SELECT nazwa
FROM towar
WHERE cena*0.23 >750;

-- 4. ILOSC < 5 i dodatkowo  CENA < 10 zł lub CENA >10000 zł;
SELECT nazwa, ILOSC, cena
FROM towar
WHERE ILOSC < 5 AND (cena < 10.00 OR cena > 10000.00);

-- 5. cena 1 kg (CENA / WAGA) jest mniejsza od 10 zł i równocześnie większa od 5 zł;

SELECT nazwa,cena,waga
FROM towar
WHERE cena/waga < 10 AND cena/waga > 5;

-- 6. całkowita masa (ILOSC * WAGA) jest większa od ceny, a mniejsza od potrójnej ceny;

SELECT nazwa,cena,waga,ILOSC
FROM towar
WHERE ILOSC*waga> cena AND ILOSC*waga < cena*3;

-- 7. tylko ZAMÓWIONE towary, których waga =1;
SELECT nazwa,cena,waga,ILOSC
FROM towar
WHERE ZAMOW = 'PRAWDA' AND waga = 1;

-- 8. nazwy towarów, których RODZAJ = NA i GD (również małymi literami);
SELECT nazwa
FROM towar
WHERE RODZAJ = 'NA' OR RODZAJ = 'GD';

-- 9. wyświetl nazwy towarów, które nie zawierają litery a w NAZWIE;

SELECT nazwa
FROM towar
WHERE nazwa not like "%a%";

-- 10. Wyprodukowane w 1997 roku;
SELECT *
FROM towar
WHERE DATA_PROD LIKE '1997%';


-- 11. (DATA_PROD - od początku 1995 roku do końca 1998,) CENA jest dwucyfrowa, WAGA < 0.5;
SELECT *
FROM towar
WHERE 
    DATA_PROD BETWEEN '1995-01-01' AND '1998-12-31'
    AND cena BETWEEN 10 AND 99 
    AND waga <0.5;

-- 12. jw. wyświetl tylko NAZWĘ, RODZAJ I CENĘ;


-- 13. rekordy w których CENA jest pomiędzy 12,50 a 35 i WAGA jest pomiędzy 0,5 a 2,5;
SELECT * 
FROM towar 
WHERE (CENA BETWEEN 12.50 AND 35) AND (WAGA BETWEEN 0.5 AND 2.5);

-- 14. jw. - wyświetl tylko NAZWĘ, RODZAJ i wartość (ILOSC * CENA) ;


-- 15.  jw. posortowane malejąco wg NAZWY ; 
SELECT nazwa, RODZAJ, ILOSC*cena AS wartosc
FROM towar
WHERE (CENA BETWEEN 12.50 AND 35) AND (WAGA BETWEEN 0.5 AND 2.5)
ORDER BY nazwa DESC;


-- 16. różne RODZAJE towarów (bez powtórek) ; (wskazówka: SELECT DISTINCT...)
SELECT DISTINCT rodzaj
FROM towar;