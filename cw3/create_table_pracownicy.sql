
CREATE TABLE IF NOT EXISTS rozliczenia.pracownicy1
(
    id_pracownika character varying(20) COLLATE pg_catalog."default" NOT NULL,
    imie character varying(20) COLLATE pg_catalog."default" NOT NULL,
    nazwisko character varying(20) COLLATE pg_catalog."default" NOT NULL,
    adres character varying(20) COLLATE pg_catalog."default" NOT NULL,
    telefon character varying(20) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT pracownicy_pkey PRIMARY KEY (id_pracownika)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS rozliczenia.pracownicy1
    OWNER to postgres;