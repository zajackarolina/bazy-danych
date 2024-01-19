-- DROP TABLE IF EXISTS rozliczenia.premie;

CREATE TABLE IF NOT EXISTS rozliczenia.premie
(
    id_premii character varying(20) COLLATE pg_catalog."default" NOT NULL,
    rodzaj character varying(20) COLLATE pg_catalog."default" NOT NULL,
    kwota character varying(20) COLLATE pg_catalog."default",
    CONSTRAINT premie_pkey PRIMARY KEY (id_premii)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS rozliczenia.premie
    OWNER to postgres;