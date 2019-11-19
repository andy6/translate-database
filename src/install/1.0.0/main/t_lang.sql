--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Creates a new table 'main.t_lang' in the current database.

-- Table main.t_lang
-- DROP TABLE IF EXISTS main.t_lang CASCADE;
CREATE TABLE IF NOT EXISTS main.t_lang (
  id CHARACTER VARYING(3) PRIMARY KEY NOT NULL,
  label_cz CHARACTER VARYING(200) NOT NULL,
  label_en CHARACTER VARYING(200) NOT NULL,
  label_de CHARACTER VARYING(200) NOT NULL
);
COMMENT ON TABLE main.t_lang IS 'Table stores language.';
COMMENT ON COLUMN main.t_lang.id IS 'Table identifier.';
COMMENT ON COLUMN main.t_lang.label_cz IS 'Czech label.';
COMMENT ON COLUMN main.t_lang.label_en IS 'English label.';
COMMENT ON COLUMN main.t_lang.label_de IS 'German label.';
-- rollback DROP TABLE IF EXISTS main.t_lang;
