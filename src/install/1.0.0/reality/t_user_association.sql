--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Creates a new table 'reality.t_user_association' in the current database.

-- Table reality.t_user_association
-- DROP TABLE IF EXISTS reality.t_user_association CASCADE;
CREATE TABLE IF NOT EXISTS reality.t_user_association (
  id serial PRIMARY KEY NOT NULL,
  id_user integer NOT NULL,
  id_association integer NOT NULL,

  ts_created timestamp with time zone,
  ts_changed timestamp with time zone,

  CONSTRAINT fk_t_user_association_id_association FOREIGN KEY (id_association)
  REFERENCES reality.t_association (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE,
  CONSTRAINT fk_t_user_association_id_user FOREIGN KEY (id_user)
  REFERENCES main.t_user (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE
);
COMMENT ON TABLE reality.t_user_association IS 'Table .';

DROP TRIGGER IF EXISTS tb_user_association_timestamp ON reality.t_user_association;
CREATE TRIGGER tb_user_association_timestamp
  BEFORE INSERT OR UPDATE
  ON reality.t_user_association
  FOR EACH ROW
EXECUTE PROCEDURE main.proc_timestamp();
COMMENT ON TRIGGER tb_user_association_timestamp ON reality.t_user_association IS 'Trigger calls timestamp procedure.';

