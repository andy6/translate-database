--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Creates a new table 'main.t_service' in the current database.

-- Table main.t_service
-- DROP TABLE IF EXISTS main.t_service CASCADE;
CREATE TABLE IF NOT EXISTS main.t_service (
  id CHARACTER VARYING(32) PRIMARY KEY NOT NULL,
  label_cz CHARACTER VARYING(200) NOT NULL,
  label_en CHARACTER VARYING(200) NOT NULL,
  label_de CHARACTER VARYING(200) NOT NULL
);
COMMENT ON TABLE main.t_service IS 'Table stores language services.';
COMMENT ON COLUMN main.t_service.id IS 'Table identifier.';
COMMENT ON COLUMN main.t_service.label_cz IS 'Czech label.';
COMMENT ON COLUMN main.t_service.label_en IS 'English label.';
COMMENT ON COLUMN main.t_service.label_de IS 'German label.';
-- rollback DROP TABLE IF EXISTS main.t_service;
