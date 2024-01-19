ALTER TABLE ksiegowosc.godziny
ADD FOREIGN KEY (id_pracownika)
REFERENCES ksiegowosc.pracownicy(id_pracownika)
ON DELETE SET NULL;

ALTER TABLE ksiegowosc.wynagrodzenia
ADD FOREIGN KEY (id_pracownika)
REFERENCES ksiegowosc.pracownicy(id_pracownika)
ON DELETE SET NULL;
	
ALTER TABLE ksiegowosc.wynagrodzenia
ADD FOREIGN KEY (id_godziny)
REFERENCES ksiegowosc.godziny(id_godziny)
ON DELETE SET NULL;

ALTER TABLE ksiegowosc.wynagrodzenia
ADD FOREIGN KEY (id_pensji)
REFERENCES ksiegowosc.pensje(id_pensji)
ON DELETE SET NULL;
	
ALTER TABLE ksiegowosc.wynagrodzenia
ADD FOREIGN KEY (id_premii)
REFERENCES ksiegowosc.premie(id_premii)
ON DELETE SET NULL;


