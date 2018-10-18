--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Creates a new table 'main.t_user_group' in the current database.

-- Table main.user_groups
-- DROP TABLE IF EXISTS main.t_user_group CASCADE;
CREATE TABLE IF NOT EXISTS main.t_user_group (
  id serial PRIMARY KEY NOT NULL,
  id_user integer NOT NULL,
  id_group integer NOT NULL,

  ts_created timestamp with time zone,
  ts_changed timestamp with time zone,

  CONSTRAINT fk_t_user_group_id_group FOREIGN KEY (id_group)
  REFERENCES main.t_group (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE,
  CONSTRAINT fk_t_user_group_id_user FOREIGN KEY (id_user)
  REFERENCES main.t_user (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE
);
COMMENT ON TABLE main.t_user_group IS 'Relation table of users and groups.';
COMMENT ON COLUMN main.t_user_group.id IS 'Table identifier.';
COMMENT ON COLUMN main.t_user_group.id_user IS 'User identifier.';
COMMENT ON COLUMN main.t_user_group.id_group IS 'Group identifier.';
-- rollback DROP TABLE IF EXISTS main.t_user_group;

DROP TRIGGER IF EXISTS tb_user_group_timestamp ON main.t_user_group;
CREATE TRIGGER tb_user_group_timestamp
  BEFORE INSERT OR UPDATE
  ON main.t_user_group
  FOR EACH ROW
EXECUTE PROCEDURE main.proc_timestamp();
COMMENT ON TRIGGER tb_user_group_timestamp ON main.t_user_group IS 'Trigger calls timestamp procedure.';
-- rollback DROP TRIGGER IF EXISTS tb_user_group_timestamp ON main.t_user_group;