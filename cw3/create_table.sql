CREATE TABLE IF NOT EXISTS rozliczenia.godziny
(
    id_godziny character varying(20) COLLATE pg_catalog."default" NOT NULL,
    data_ character varying(20) COLLATE pg_catalog."default" NOT NULL,
    liczba_godzin character varying(20) COLLATE pg_catalog."default",
    id_pracownika character varying(20) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT godziny_pkey PRIMARY KEY (id_godziny)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS rozliczenia.godziny
    OWNER to postgres;