-- Tabela pracownicy
CREATE TABLE ksiegowosc.pracownicy (
    id_pracownika SERIAL PRIMARY KEY,
    imie VARCHAR(50),
    nazwisko VARCHAR(50),
    adres VARCHAR(100),
    telefon VARCHAR(20)
);

-- Tabela godziny
CREATE TABLE ksiegowosc.godziny (
    id_godziny SERIAL PRIMARY KEY,
    data DATE,
    liczba_godzin INT,
    id_pracownika INT REFERENCES ksiegowosc.pracownicy(id_pracownika)
);

-- Tabela pensje
CREATE TABLE ksiegowosc.pensje (
    id_pensji SERIAL PRIMARY KEY,
    stanowisko VARCHAR(50),
    kwota DECIMAL(10, 2)
);

-- Tabela premie
CREATE TABLE ksiegowosc.premie (
    id_premii SERIAL PRIMARY KEY,
    rodzaj VARCHAR(50),
    kwota DECIMAL(10, 2)
);

-- Tabela wynagrodzenie
CREATE TABLE ksiegowosc.wynagrodzenie (
    id_wynagrodzenia SERIAL PRIMARY KEY,
    data DATE,
    id_pracownika INT REFERENCES ksiegowosc.pracownicy(id_pracownika),
    id_godziny INT REFERENCES ksiegowosc.godziny(id_godziny),
    id_pensji INT REFERENCES ksiegowosc.pensje(id_pensji),
    id_premii INT REFERENCES ksiegowosc.premie(id_premii)
);
SELECT id_pracownika nazwisko
FROM ksiegowosc.pracownicy

