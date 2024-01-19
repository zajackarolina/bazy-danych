--5
SELECT nazwisko, adres
FROM rozliczenia.pracownicy1;
--6
SELECT
    EXTRACT(ISODOW FROM TO_DATE(data_, 'YYYY-MM-DD')) AS dzien_tygodnia,
    EXTRACT(MONTH FROM TO_DATE(data_, 'YYYY-MM-DD')) AS miesiac
FROM rozliczenia.godziny;
--7
UPDATE rozliczenia.pensje
SET kwota_netto = (CAST(kwota_brutto AS NUMERIC) * 0.85);
