--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Creates a new table 't_user' in schema 'main' in the current database.

-- Table main.t_user
-- DROP TABLE IF EXISTS main.t_user CASCADE;
CREATE TABLE IF NOT EXISTS main.t_user (
  id serial PRIMARY KEY NOT NULL,
  email CHARACTER VARYING(100) UNIQUE NOT NULL,
  password CHARACTER VARYING(250) NOT NULL,
  first_name CHARACTER VARYING(50),
  last_name CHARACTER VARYING(50),
  enabled BOOLEAN DEFAULT true NOT NULL,
  ts_last_login TIMESTAMP WITH TIME ZONE,

  ts_created TIMESTAMP WITH TIME ZONE,
  ts_changed TIMESTAMP WITH TIME ZONE
);

COMMENT ON TABLE main.t_user IS 'Table stores user accounts.';
COMMENT ON COLUMN main.t_user.id IS 'Table identifier.';
COMMENT ON COLUMN main.t_user.email IS 'E-mail address.';
COMMENT ON COLUMN main.t_user.password IS 'Password.';
COMMENT ON COLUMN main.t_user.first_name IS 'First name.';
COMMENT ON COLUMN main.t_user.last_name IS 'Surname.';
COMMENT ON COLUMN main.t_user.enabled IS 'Enable flag.';
COMMENT ON COLUMN main.t_user.ts_last_login IS 'Timestamp of last login.';
COMMENT ON COLUMN main.t_user.ts_created IS 'Timestamp of user created.';
COMMENT ON COLUMN main.t_user.ts_changed IS 'Timestamp of user changed.';
-- rollback DROP TABLE IF EXISTS main.t_user;

--changeset Andy:1.0.1 (splitStatements:false endDelimiter:;) dbms:postgresql
--comment Creates a trigger on table 'main.t_user'.
DROP TRIGGER IF EXISTS tb_user_timestamp ON main.t_user;
CREATE TRIGGER tb_user_timestamp
  BEFORE INSERT OR UPDATE
  ON main.t_user
  FOR EACH ROW
EXECUTE PROCEDURE main.proc_timestamp();
COMMENT ON TRIGGER tb_user_timestamp ON main.t_user IS 'Trigger calls timestamp procedure.';
-- rollback DROP TRIGGER IF EXISTS tb_user_timestamp ON main.t_user;

