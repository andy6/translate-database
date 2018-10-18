--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Creates a new table 'reality.t_unit_user' in the current database.

-- Table reality.t_unit_user
-- DROP TABLE IF EXISTS reality.t_unit_user CASCADE;
CREATE TABLE IF NOT EXISTS reality.t_unit_user (
  id serial PRIMARY KEY NOT NULL,
  id_unit integer NOT NULL,
  id_user integer NOT NULL,
  ownership reality.ownership_type_enum DEFAULT 'PRIVATE'::reality.ownership_type_enum,
  part smallint DEFAULT 1,

  ts_created timestamp with time zone,
  ts_changed timestamp with time zone,

  CONSTRAINT fk_t_flat_user_id_flat FOREIGN KEY (id_unit)
  REFERENCES reality.t_unit (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE,
  CONSTRAINT fk_t_user_association_id_user FOREIGN KEY (id_user)
  REFERENCES main.t_user (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE
);
COMMENT ON TABLE reality.t_unit_user IS 'Relation table of units and users.';
COMMENT ON COLUMN reality.t_unit_user.id IS 'Table identifier.';
COMMENT ON COLUMN reality.t_unit_user.id_unit IS 'Foreign key to table "reality.t_unit".';
COMMENT ON COLUMN reality.t_unit_user.id_user IS 'Foreign key to table "main.t_user".';
COMMENT ON COLUMN reality.t_unit_user.ownership IS 'Unit ownership.';
COMMENT ON COLUMN reality.t_unit_user.part IS 'Part of unit.';
COMMENT ON COLUMN reality.t_unit_user.ts_created IS 'Timestamp of created.';
COMMENT ON COLUMN reality.t_unit_user.ts_changed IS 'Timestamp of changed.';

DROP TRIGGER IF EXISTS tb_flat_user_timestamp ON reality.t_unit_user;
CREATE TRIGGER tb_flat_user_timestamp
  BEFORE INSERT OR UPDATE
  ON reality.t_unit_user
  FOR EACH ROW
EXECUTE PROCEDURE main.proc_timestamp();
COMMENT ON TRIGGER tb_flat_user_timestamp ON reality.t_unit_user IS 'Trigger calls timestamp procedure.';