--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Creates a new table 'reality.t_unit' in the current database.

-- Table reality.t_unit
-- DROP TABLE IF EXISTS reality.t_unit CASCADE;
CREATE TABLE IF NOT EXISTS reality.t_unit (
  id serial PRIMARY KEY NOT NULL,
  id_building integer NOT NULL,
  id_user integer NOT NULL,
  unit_type reality.unit_type_enum NOT NULL,
  label character varying(50) NOT NULL,
  population smallint,
  floor_area smallint,

  ts_created timestamp with time zone,
  ts_changed timestamp with time zone,

  CONSTRAINT fk_flat_id_building FOREIGN KEY (id_building)
  REFERENCES reality.t_building (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE,
  CONSTRAINT fk_flat_id_user FOREIGN KEY (id_user)
  REFERENCES main.t_user (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE
);
COMMENT ON TABLE reality.t_unit IS 'Table stores house units.';
COMMENT ON COLUMN reality.t_unit.id IS 'Table identifier.';
COMMENT ON COLUMN reality.t_unit.id_building IS 'Foreign key to table "reality.t_building".';
COMMENT ON COLUMN reality.t_unit.id_user IS 'Foreign key to table "main.t_user".';
COMMENT ON COLUMN reality.t_unit.unit_type IS 'Type of unit.';
COMMENT ON COLUMN reality.t_unit.label IS 'Name of unit.';
COMMENT ON COLUMN reality.t_unit.population IS 'Number of people.';
COMMENT ON COLUMN reality.t_unit.floor_area IS 'Floor area.';
COMMENT ON COLUMN reality.t_unit.ts_created IS 'Timestamp of created.';
COMMENT ON COLUMN reality.t_unit.ts_changed IS 'Timestamp of changed.';

DROP TRIGGER IF EXISTS tb_flat_timestamp ON reality.t_unit;
CREATE TRIGGER tb_flat_timestamp
  BEFORE INSERT OR UPDATE
  ON reality.t_unit
  FOR EACH ROW
EXECUTE PROCEDURE main.proc_timestamp();
COMMENT ON TRIGGER tb_flat_timestamp ON reality.t_unit IS 'Trigger calls timestamp procedure.';