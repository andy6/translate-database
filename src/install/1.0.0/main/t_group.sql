--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Creates a new table 'main.t_group' in the current database.

-- Table main. groups
-- DROP TABLE IF EXISTS main.t_group CASCADE;
CREATE TABLE IF NOT EXISTS main.t_group (
  id serial PRIMARY KEY NOT NULL,
  name character varying(50) UNIQUE NOT NULL,
  description character varying(255) NOT NULL,

  ts_created timestamp with time zone,
  ts_changed timestamp with time zone
);
COMMENT ON TABLE main.t_group IS 'Table stores groups of users.';
COMMENT ON COLUMN main.t_group.id IS 'Table identifier.';
COMMENT ON COLUMN main.t_group.name IS 'Name of group.';
COMMENT ON COLUMN main.t_group.description IS 'Description of group.';
COMMENT ON COLUMN main.t_group.ts_created IS 'Timestamp of group created.';
COMMENT ON COLUMN main.t_group.ts_changed IS 'Timestamp of group changed.';
-- rollback DROP TABLE IF EXISTS main.t_group;

DROP TRIGGER IF EXISTS tb_group_timestamp ON main.t_group;
CREATE TRIGGER tb_group_timestamp
  BEFORE INSERT OR UPDATE
  ON main.t_group
  FOR EACH ROW
EXECUTE PROCEDURE main.proc_timestamp();
COMMENT ON TRIGGER tb_group_timestamp ON main.t_group IS 'Trigger calls timestamp procedure.';
-- rollback DROP TRIGGER IF EXISTS tb_group_timestamp ON main.t_group;

