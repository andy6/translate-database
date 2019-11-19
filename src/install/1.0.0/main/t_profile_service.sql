--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Creates a new foreign table 'main.t_profile_service' in the current database.

-- Table main.t_profile_service
-- DROP TABLE IF EXISTS main.t_profile_service CASCADE;
CREATE TABLE IF NOT EXISTS main.t_profile_service (
  id serial PRIMARY KEY NOT NULL,
  id_profile INTEGER NOT NULL,
  id_service INTEGER NOT NULL,
  
  CONSTRAINT fk_t_profile_service_id_profile FOREIGN KEY (id_profile)
  REFERENCES main.t_profile (id) 
  ON UPDATE NO ACTION ON DELETE CASCADE,
  CONSTRAINT fk_t_profile_service_id_service FOREIGN KEY (id_service)
  REFERENCES main.t_service (id) 
  ON UPDATE NO ACTION ON DELETE CASCADE
  
);
COMMENT ON TABLE main.t_profile_service IS 'Table stores user profile.';
COMMENT ON COLUMN main.t_profile_service.id IS 'Table identifier.';
COMMENT ON COLUMN main.t_profile_service.id_profile IS 'Foreign key to table "main.t_profile".';
COMMENT ON COLUMN main.t_profile_service.id_service IS 'Foreign key to table "main.t_service".';
-- rollback DROP TABLE IF EXISTS main.t_profile_service;
