CREATE TABLE IF NOT EXISTS country_localized_names
(
    country_id smallint NOT NULL,
    language_id smallint NOT NULL,
    name character varying(100) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT country_localized_names_pkey PRIMARY KEY (country_id, language_id),
    CONSTRAINT country_localized_names_country_id FOREIGN KEY (country_id)
        REFERENCES public.countries (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT country_localized_names_language_id FOREIGN KEY (language_id)
        REFERENCES public.languages (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);