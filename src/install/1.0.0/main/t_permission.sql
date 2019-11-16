--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Creates a new table 'main.t_permission' in the current database.

-- Table main.t_permission
-- DROP TABLE IF EXISTS main.t_permission CASCADE;
CREATE TABLE IF NOT EXISTS main.t_permission (
  id serial PRIMARY KEY NOT NULL,
  name character varying(50) UNIQUE NOT NULL,
  description character varying(255) NOT NULL,
  enabled boolean NOT NULL DEFAULT true,

  ts_created timestamp with time zone,
  ts_changed timestamp with time zone
);
COMMENT ON TABLE main.t_permission IS 'Table stores permissions of groups.';
COMMENT ON COLUMN main.t_permission.id IS 'Table identifier.';
COMMENT ON COLUMN main.t_permission.name IS 'Name of permission.';
COMMENT ON COLUMN main.t_permission.description IS 'Description of permission.';
COMMENT ON COLUMN main.t_permission.enabled IS 'Enable flag.';
COMMENT ON COLUMN main.t_permission.ts_created IS 'Timestamp of permission created.';
COMMENT ON COLUMN main.t_permission.ts_changed IS 'Timestamp of permission changed.';
-- rollback DROP TABLE IF EXISTS main.t_permission;

--changeset Andy:1.0.1 (splitStatements:false endDelimiter:;) dbms:postgresql
--comment Creates a trigger on table 'main.t_permission'.
DROP TRIGGER IF EXISTS tb_permission_timestamp ON main.t_permission;
CREATE TRIGGER tb_permission_timestamp
  BEFORE INSERT OR UPDATE
  ON main.t_permission
  FOR EACH ROW
EXECUTE PROCEDURE main.proc_timestamp();
COMMENT ON TRIGGER tb_permission_timestamp ON main.t_permission IS 'Trigger calls timestamp procedure.';
-- rollback DROP TRIGGER IF EXISTS tb_permission_timestamp ON main.t_permission;

