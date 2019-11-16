--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Creates a new table 'main.t_service' in the current database.

-- Table main.t_service
-- DROP TABLE IF EXISTS main.t_service CASCADE;
CREATE TABLE IF NOT EXISTS main.t_service (
  id serial PRIMARY KEY NOT NULL,
  lang CHARACTER VARYING(3) NOT NULL,
  label CHARACTER VARYING(200) NOT NULL
);
COMMENT ON TABLE main.t_service IS 'Table stores language services.';
COMMENT ON COLUMN main.t_service.id IS 'Table identifier.';
COMMENT ON COLUMN main.t_service.lang IS 'Label language.';
COMMENT ON COLUMN main.t_service.label IS 'Label of language service.';
-- rollback DROP TABLE IF EXISTS main.t_service;
