--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Creates a new table 'main.t_group_permission' in the current database.

-- Table main.t_group_permission
-- DROP TABLE IF EXISTS main.t_group_permission CASCADE;
CREATE TABLE IF NOT EXISTS main.t_group_permission (
  id serial PRIMARY KEY NOT NULL,
  id_group integer NOT NULL,
  id_permission integer NOT NULL,

  ts_created timestamp with time zone,
  ts_changed timestamp with time zone,

  CONSTRAINT fk_t_user_group_id_group FOREIGN KEY (id_group)
  REFERENCES main.t_group (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE,
  CONSTRAINT fk_t_group_permission_id_permission FOREIGN KEY (id_permission)
  REFERENCES main.t_permission (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE
);
COMMENT ON TABLE main.t_group_permission IS 'Relation table of groups and permission.';
COMMENT ON COLUMN main.t_group_permission.id IS 'Table identifier.';
COMMENT ON COLUMN main.t_group_permission.id_group IS 'Group identifier.';
COMMENT ON COLUMN main.t_group_permission.id_permission IS 'Permission identifier.';
-- rollback DROP TABLE IF EXISTS main.t_group_permission;

DROP TRIGGER IF EXISTS tb_group_permission_timestamp ON main.t_group_permission;
CREATE TRIGGER tb_group_permission_timestamp
  BEFORE INSERT OR UPDATE
  ON main.t_group_permission
  FOR EACH ROW
EXECUTE PROCEDURE main.proc_timestamp();
COMMENT ON TRIGGER tb_group_permission_timestamp ON main.t_group_permission IS 'Trigger calls timestamp procedure.';
-- rollback DROP TRIGGER IF EXISTS tb_group_permission_timestamp ON main.t_group_permission;