
CREATE TABLE IF NOT EXISTS rozliczenia.pensje
(
    id_pensji character varying(20) COLLATE pg_catalog."default" NOT NULL,
    stanowisko character varying(20) COLLATE pg_catalog."default" NOT NULL,
    kwota_brutto character varying(20) COLLATE pg_catalog."default",
    id_premii character varying(20) COLLATE pg_catalog."default" NOT NULL,
    kwota_netto character varying(20) COLLATE pg_catalog."default",
    CONSTRAINT pensje_pkey PRIMARY KEY (id_pensji)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS rozliczenia.pensje
    OWNER to postgres;