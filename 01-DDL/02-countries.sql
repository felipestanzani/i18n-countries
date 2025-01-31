-- Table: countries

CREATE TABLE IF NOT EXISTS countries
(
    id smallint NOT NULL,
    code character varying(2) COLLATE pg_catalog."default" NOT NULL,
    default_name character varying(60) COLLATE pg_catalog."default" NOT NULL,
    idd_code character varying(6) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT countries_primary_key PRIMARY KEY (id),
    CONSTRAINT countries_name UNIQUE (default_name),
    CONSTRAINT countries_code UNIQUE (code)
);