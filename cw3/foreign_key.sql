CREATE TABLE IF NOT EXISTS rozliczenia.godziny
(
    id_godziny character varying(20) COLLATE pg_catalog."default" NOT NULL,
    data_ character varying(20) COLLATE pg_catalog."default" NOT NULL,
    liczba_godzin character varying(20) COLLATE pg_catalog."default",
    id_pracownika character varying(20) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT godziny_pkey PRIMARY KEY (id_godziny),
    CONSTRAINT godziny_id_pracownika_fkey FOREIGN KEY (id_pracownika)
        REFERENCES rozliczenia.pracownicy1 (id_pracownika) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)