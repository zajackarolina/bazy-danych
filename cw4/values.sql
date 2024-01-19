-- Wstawianie danych do tabeli pracownicy
INSERT INTO ksiegowosc.pracownicy (id_pracownika, imie, nazwisko, adres, telefon)
VALUES 
    (1, 'Jan', 'Kowalski', 'ul. Przykładowa 1', '123-456-789'),
    (2, 'Anna', 'Nowak', 'ul. Testowa 2', '987-654-321'),
    (3, 'Marek', 'Wiśniewski', 'ul. Prosta 3', '555-111-222'),
    (4, 'Ewa', 'Lewandowska', 'ul. Kwiatowa 4', '111-222-333'),
    (5, 'Piotr', 'Dąbrowski', 'ul. Słoneczna 5', '999-888-777'),
    (6, 'Magda', 'Wójcik', 'ul. Radosna 6', '333-444-555'),
    (7, 'Krzysztof', 'Kaczmarek', 'ul. Uśmiechnięta 7', '777-666-555'),
    (8, 'Aleksandra', 'Zielińska', 'ul. Nowoczesna 8', '222-888-999'),
    (9, 'Maciej', 'Adamczyk', 'ul. Pracowita 9', '444-555-666'),
    (10, 'Karolina', 'Kubiak', 'ul. Harmonijna 10', '666-999-111');

-- Wstawianie danych do tabeli godziny
INSERT INTO ksiegowosc.godziny (id_godziny, data, liczba_godzin, id_pracownika)
VALUES 
    (1, '2023-01-01', 8, 1),
    (2, '2023-01-02', 7, 2),
    (3, '2023-01-03', 9, 3),
    (4, '2023-01-04', 8, 4),
    (5, '2023-01-05', 7, 5),
    (6, '2023-01-06', 9, 6),
    (7, '2023-01-07', 8, 7),
    (8, '2023-01-08', 7, 8),
    (9, '2023-01-09', 9, 9),
    (10, '2023-01-10', 8, 10);

-- Wstawianie danych do tabeli pensje
INSERT INTO ksiegowosc.pensje (id_pensji, stanowisko, kwota)
VALUES 
    (1, 'Specjalista', 5000.00),
    (2, 'Kierownik', 7000.00),
    (3, 'Analityk', 5500.00),
    (4, 'Programista', 6000.00),
    (5, 'Administrator', 6500.00),
    (6, 'Projektant', 5500.00),
    (7, 'Tester', 5200.00),
    (8, 'Architekt', 7500.00),
    (9, 'Inżynier', 5800.00),
    (10, 'Deweloper', 6200.00);

-- Wstawianie danych do tabeli premie
INSERT INTO ksiegowosc.premie (id_premii, rodzaj, kwota)
VALUES 
    (1, 'Premia za wyniki', 1000.00),
    (2, 'Premia świąteczna', 500.00),
    (3, 'Premia za staż', 800.00),
    (4, 'Premia za efektywność', 1200.00),
    (5, 'Premia jubileuszowa', 1500.00),
    (6, 'Premia motywacyjna', 900.00),
    (7, 'Premia uznaniowa', 1100.00),
    (8, 'Premia specjalna', 1300.00),
    (9, 'Premia nagrodowa', 700.00),
    (10, 'Premia za projekt', 950.00);

-- Wstawianie danych do tabeli wynagrodzenie
INSERT INTO ksiegowosc.wynagrodzenie (id_wynagrodzenia, data, id_pracownika, id_godziny, id_pensji, id_premii)
VALUES 
    (1, '2023-01-01', 1, 1, 1, 1),
    (2, '2023-01-02', 2, 2, 2, 2),
    (3, '2023-01-03', 3, 3, 3, 3),
    (4, '2023-01-04', 4, 4, 4, 4),
    (5, '2023-01-05', 5, 5, 5, 5),
    (6, '2023-01-06', 6, 6, 6, 6),
    (7, '2023-01-07', 7, 7, 7, 7),
    (8, '2023-01-08', 8, 8, 8, 8),
    (9, '2023-01-09', 9, 9, 9, 9),
    (10, '2023-01-10', 10, 10, 10, 10);
