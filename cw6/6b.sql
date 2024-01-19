--a
/*
UPDATE ksiegowosc.pracownicy
SET telefon= CONCAT('(+48) ', telefon)
WHERE telefon LIKE '%';
*/ --CONCAT laczy tekst +48 z numerami telefonu

/*
SELECT telefon
FROM ksiegowosc.pracownicy; */
--b
/*
UPDATE ksiegowosc.pracownicy
SET telefon = CONCAT(SUBSTRING(telefon, 1, 3), '-', SUBSTRING(telefon, 4, 3), '-', SUBSTRING(telefon, 7, 3))
*/
---c
/*
SELECT UPPER(imie), UPPER(nazwisko)
FROM ksiegowosc.pracownicy
ORDER BY LENGTH(nazwisko) DESC
LIMIT 1;
*/
--d
/*
SELECT imie pe, nazwisko pe, MD5(CAST(p.kwota AS VARCHAR))  AS hashowana_pensja
FROM ksiegowosc.pracownicy pe
JOIN ksiegowosc.wynagrodzenie w ON w.id_pracownika=pe.id_pracownika
JOIN ksiegowosc.pensje p ON w.id_pensji=p.id_pensji;
*/
---e
/*
SELECT imie p, nazwisko p, pe.kwota, pr.kwota 
FROM ksiegowosc.pracownicy p
LEFT JOIN ksiegowosc.wynagrodzenie w ON w.id_pracownika = p.id_pracownika
LEFT JOIN ksiegowosc.pensje pe ON w.id_pensji = pe.id_pensji
LEFT JOIN ksiegowosc.premie pr ON w.id_premii=pr.id_premii;
*/
--f
/*
SELECT CONCAT('Pracownik ', p.imie, ' ', p.nazwisko, ', w dniu ', g.data, ' otrzymał pensję całkowitą na kwotę ', pe.kwota, ' zł, gdzie wynagrodzenie zasadnicze wynosiło: ', pe.kwota, ' zł, premia: ', pr.kwota, ' zł, nadgodziny: ', COALESCE((g.liczba_godzin)-6,0), ' zł') AS raport
FROM ksiegowosc.pracownicy p
JOIN ksiegowosc.wynagrodzenie w ON p.id_pracownika = w.id_pracownika
LEFT JOIN ksiegowosc.godziny g ON w.id_godziny=g.id_godziny
LEFT JOIN ksiegowosc.pensje pe ON w.id_pensji=pe.id_pensji
LEFT JOIN ksiegowosc.premie pr ON w.id_premii=pr.id_premii
WHERE p.imie = 'Anna' AND p.nazwisko = 'Nowak';
*/




