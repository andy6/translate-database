--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Creates a new table 'main.t_profile' in the current database.

-- Table main.t_profile
-- DROP TABLE IF EXISTS main.t_profile CASCADE;
CREATE TABLE IF NOT EXISTS main.t_profile (
  id serial PRIMARY KEY NOT NULL,
  id_user INTEGER UNIQUE NOT NULL,
  price INTEGER,
  description CHARACTER VARYING(255)
  
);
COMMENT ON TABLE main.t_profile IS 'Table stores user profile.';
COMMENT ON COLUMN main.t_profile.id IS 'Table identifier.';
COMMENT ON COLUMN main.t_profile.id_user IS 'Foreign key to table "main.t_user".';
COMMENT ON COLUMN main.t_profile.price IS 'Price.';
COMMENT ON COLUMN main.t_profile.description IS 'Description.';
-- rollback DROP TABLE IF EXISTS main.t_profile;