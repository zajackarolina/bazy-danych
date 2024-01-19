--a
--SELECT id_pracownika, nazwisko
--FROM ksiegowosc.pracownicy

--b
/*SELECT p.id_pracownika
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.wynagrodzenia w ON p.id_pracownika = w.id_pracownika
JOIN ksiegowosc.pensje pe ON w.id_pensji = pe.id_pensji
WHERE pe.kwota >'1000;
--b
/*
SELECT p.id_pracownika
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
JOIN ksiegowosc.pensje pe ON w.id_pensji = pe.id_pensji
WHERE pe.kwota > 1000;
*/
--c
SELECT p.id_pracownika
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.wynagrodzenia pr ON pr.id_pracownika=p.id_pracownika
JOIN ksiegowosc.pensje pe ON pe.id_pensji=pr.id_pensji
LEFT JOIN ksiegowosc.premie pre ON pr.id_premii=pre.id_premii
WHERE pre.kwota IS NULL AND pe.kwota>200;
--c
/*SELECT pr.id_pracownika
FROM ksiegowosc.pracownicy pr
JOIN ksiegowosc.wynagrodzenie wn ON pr.id_pracownika = wn.id_pracownika
JOIN ksiegowosc.pensje pe ON wn.id_pensji = pe.id_pensji
LEFT JOIN ksiegowosc.premie prm ON wn.id_premii = prm.id_premii
WHERE pe.kwota > 2000 AND prm.id_premii IS NULL;
*/
--d
SELECT imie 
FROM ksiegowosc.pracownicy
WHERE UPPER(LEFT(imie, 1))='J';
--E
SELECT imie, nazwisko
FROM ksiegowosc.pracownicy
WHERE UPPER(RIGHT(imie, 1))= 'A' AND POSITION('n' IN nazwisko); 
--e
/*
SELECT *
FROM ksiegowosc.pracownicy
WHERE POSITION('n' IN nazwisko) > 0 AND UPPER(RIGHT(imie, 1)) = 'A';

--f
SELECT p.imie, p.nazwisko, COALESCE(g.liczba_godzin)-160,0) AS nadgodziny
FROM ksiegowosc.pracownicy p
LEFT JOIN ksiegowosc.godziny g ON p.id_pracownika= g.id_pracownika
GROUP BY p.imie, p.naziwsko, g.liczba_godzin;
--g
SELECT p.imie, p.nazwisko
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.wynagrodzenia w ON p.id_pracownika=w.id_pracownika
JOIN ksiegowosc.pensje pe ON w.id_pensji=pe.id_pensji
WHERE pe.kwota>1500 AND pe.kwota<3000;
--WHERE pe.kwota BETWEEN 1500 AND 3000;
--h
SELECT p.imie, p.nazwisko
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.godziny g ON p.id_pracownika = g.id_pracownika
LEFT JOIN ksiegowosc.wynagrodzenia w ON w.id_pracownika=p.id_pracownika
LEFT JOIN ksiegowosc.premie pr ON w.id_premii = pr.id_premii
WHERE pr.kwota IS NULL AND g.liczba_godzin>160;

--i
SELECT p.imie, p.nazwisko, pe.kwota AS pensja
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika=w.id_pracownika
INNER JOIN ksiegowosc.pensje pe ON w.id_pensji = pe.id_pensji
ORDER BY pe.kwota;
--i
/*
--J
SELECT p.imie, p.nazwisko, pe.kwota, pr.kwota
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.wynagrodzenie w ON w.id_pracownika = p.id_pracownika
JOIN ksiegowosc.pensje pe ON w.id_pensji=pe.id_pensji
LEFT JOIN ksiegowosc.premie pr ON w.id_premii = pr.id_premii
ORDER BY pe.kwota DESC, COALESCE(pr.kwota,0) DESC;
--K
SELECT pr.stanowsiko, COUNT(*) AS liczba_pracownikow
FROM ksiegowosc.pensje pr
GROUP BY pr.stanowisko;
--l
SELECT 
pr.stanowisko,
AVG(pe.kwota) AS sredniapensja,
MIN(pe.kwota) AS minimalnapensja,
MAX(pe.kwota) AS maksymalnapensja
FROM ksiegowosc.pensje pr
JOIN ksiegowosc.wynagrodzenie w ON w.id_pensji=pr.id_pensji
JOIN ksiegowosc.pensje pe ON pe.id_pensji = w.id_pensji
WHERE pr.stanowisko='Kierownik'
GROUP BY pr.stanowisko;
--m
SELECT SUM(pe.kwota) AS suma
FROM ksiegowosc.pensje pe;
--n
SELECT pr.stanowisko, SUM(pr.kwota) AS suma
FROM ksiegowosc.pensje pr
GROUP BY pr.stanowisko;
--o
SELECT p.stanowisko, COUNT(pr.kwota) AS liczba
FROM ksiegowosc.pensje p
JOIN ksiegowosc.wynagrodzenie w ON w.id_pensji = p.id_pensji
JOIN ksiegowosc.premie pr ON pr.id_premii = w.id_premii
GROUP BY p.stanowisko
ORDER BY liczba;
--p
DELETE FROM ksiegowosc.pracownicy
WHERE id_pracownika IN (SELECT pr. id_pracownika
FROM  ksiegowosc.pracownicy pr
JOIN ksiegowosc.wynagrodzenie w ON w.id_pracownika=pr.id_pracownika
JOIN ksiegowosc.pensje pe ON pe.id_pensji = w.id_pensji 
WHERE pe.kwota < 1200);

/*
UPDATE ksiegowosc.pensje
SET kwota=1100
WHERE id_pensji IN ('1')
*/

/*
UPDATE ksiegowosc.premie
SET kwota=NULL
WHERE id_premii in ('1','2','3','5')
*/
