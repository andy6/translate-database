--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Creates a new foreign table 'main.t_profile_lang' in the current database.

-- Table main.t_profile_lang
-- DROP TABLE IF EXISTS main.t_profile_lang CASCADE;
CREATE TABLE IF NOT EXISTS main.t_profile_lang (
  id serial PRIMARY KEY NOT NULL,
  id_profile INTEGER NOT NULL,
  id_lang CHARACTER VARYING(3) NOT NULL,
  
  CONSTRAINT fk_t_profile_lang_id_profile FOREIGN KEY (id_profile)
  REFERENCES main.t_profile (id) 
  ON UPDATE NO ACTION ON DELETE CASCADE,
  CONSTRAINT fk_t_profile_lang_id_lang FOREIGN KEY (id_lang)
  REFERENCES main.t_lang (id) 
  ON UPDATE NO ACTION ON DELETE CASCADE
  
);
COMMENT ON TABLE main.t_profile_lang IS 'Table stores user profile.';
COMMENT ON COLUMN main.t_profile_lang.id IS 'Table identifier.';
COMMENT ON COLUMN main.t_profile_lang.id_profile IS 'Foreign key to table "main.t_profile".';
COMMENT ON COLUMN main.t_profile_lang.id_lang IS 'Foreign key to table "main.t_lang".';
-- rollback DROP TABLE IF EXISTS main.t_profile_lang;
