-- Table: public.languages

CREATE TABLE IF NOT EXISTS languages
(
    id smallint NOT NULL,
    name character varying(40) COLLATE pg_catalog."default" NOT NULL,
    code character varying(2) COLLATE pg_catalog."default" NOT NULL,
    available boolean NOT NULL DEFAULT false,
    CONSTRAINT languages__primary_key PRIMARY KEY (id),
    CONSTRAINT languages_name UNIQUE (name),
    CONSTRAINT languages_code UNIQUE (code)
);
