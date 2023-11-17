CREATE DATABASE mydb;
\c mydb;

CREATE TABLE IF NOT EXISTS public."first-table"
(
    "ID" integer NOT NULL DEFAULT 0,
    "Name" character varying COLLATE pg_catalog."default" NOT NULL,
    "Date" date NOT NULL,
    "Price" real NOT NULL,
    CONSTRAINT "first-table_pkey" PRIMARY KEY ("ID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."first-table"
    OWNER to postgres;

COMMENT ON TABLE public."first-table"
    IS 'First table for my Postgres DB';
