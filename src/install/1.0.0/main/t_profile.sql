--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Creates a new table 'main.t_profile' in the current database.

-- Table main.t_profile
-- DROP TABLE IF EXISTS main.t_profile CASCADE;
CREATE TABLE IF NOT EXISTS main.t_profile (
  id serial PRIMARY KEY NOT NULL,
  id_user INTEGER UNIQUE NOT NULL,
  phone INTEGER UNIQUE,
  email character varying(50) UNIQUE NOT NULL,
  street character varying(50),
  city character varying(50),
  zip smallint,
  country character varying(255),

  ts_created timestamp with time zone,
  ts_changed timestamp with time zone
);
COMMENT ON TABLE main.t_address IS 'Table stores user addresses.';
COMMENT ON COLUMN main.t_address.id IS 'Table identifier.';
COMMENT ON COLUMN main.t_address.id_user IS 'Foreign key to table "main.t_user".';
COMMENT ON COLUMN main.t_address.phone IS 'Phone number.';
COMMENT ON COLUMN main.t_address.email IS 'E-mail address.';
COMMENT ON COLUMN main.t_address.street IS 'Street.';
COMMENT ON COLUMN main.t_address.city IS 'City.';
COMMENT ON COLUMN main.t_address.zip IS 'ZIP.';
COMMENT ON COLUMN main.t_address.country IS 'Country.';
COMMENT ON COLUMN main.t_address.ts_created IS 'Timestamp of address created.';
COMMENT ON COLUMN main.t_address.ts_changed IS 'Timestamp of address changed.';
-- rollback DROP TABLE IF EXISTS main.t_address;

--changeset Andy:1.0.1 (splitStatements:false endDelimiter:;) dbms:postgresql
--comment Creates a trigger on table 'main.t_address'.
DROP TRIGGER IF EXISTS tb_address_timestamp ON main.t_address;
CREATE TRIGGER tb_address_timestamp
  BEFORE INSERT OR UPDATE
  ON main.t_address
  FOR EACH ROW
EXECUTE PROCEDURE main.proc_timestamp();
COMMENT ON TRIGGER tb_address_timestamp ON main.t_address IS 'Trigger calls timestamp procedure.';
-- rollback DROP TRIGGER IF EXISTS tb_address_timestamp ON main.t_address;

