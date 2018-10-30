--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql
--comment Creates a new table 'reality.t_unit' in the current database.

-- Table reality.t_unit
-- DROP TABLE IF EXISTS reality.t_unit CASCADE;
CREATE TABLE IF NOT EXISTS reality.t_unit (
  id serial PRIMARY KEY NOT NULL,
  id_building integer NOT NULL,
  unit_type reality.unit_type_enum NOT NULL,
  label character varying(50) NOT NULL,
  population smallint,
  floor_area smallint,

  ts_created timestamp with time zone,
  ts_changed timestamp with time zone,

  CONSTRAINT fk_t_unit_id_building FOREIGN KEY (id_building)
  REFERENCES reality.t_building (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE,
  CONSTRAINT t_unit_id_building_id_user_label_key UNIQUE (id_building, label)
);
COMMENT ON TABLE reality.t_unit IS 'Table stores house units.';
COMMENT ON COLUMN reality.t_unit.id IS 'Table identifier.';
COMMENT ON COLUMN reality.t_unit.id_building IS 'Foreign key to table "reality.t_building".';
COMMENT ON COLUMN reality.t_unit.unit_type IS 'Type of unit.';
COMMENT ON COLUMN reality.t_unit.label IS 'Name of unit.';
COMMENT ON COLUMN reality.t_unit.population IS 'Number of people.';
COMMENT ON COLUMN reality.t_unit.floor_area IS 'Floor area.';
COMMENT ON COLUMN reality.t_unit.ts_created IS 'Timestamp of unit created.';
COMMENT ON COLUMN reality.t_unit.ts_changed IS 'Timestamp of unit changed.';
--rollback DROP TABLE IF EXISTS reality.t_unit;

--comment Creates a trigger on table 'reality.t_unit'.
DROP TRIGGER IF EXISTS tb_unit_timestamp ON reality.t_unit;
CREATE TRIGGER tb_unit_timestamp
  BEFORE INSERT OR UPDATE
  ON reality.t_unit
  FOR EACH ROW
EXECUTE PROCEDURE main.proc_timestamp();
COMMENT ON TRIGGER tb_unit_timestamp ON reality.t_unit IS 'Trigger calls timestamp procedure.';
--rollback DROP TRIGGER IF EXISTS tb_unit_timestamp ON reality.t_unit;

--changeset Andy:1.0.1 (splitStatements:false endDelimiter:;) dbms:h2
--comment Creates a new table 'reality.t_unit' in the current database.

-- Table reality.t_unit
-- DROP TABLE IF EXISTS reality.t_unit CASCADE;
CREATE TABLE IF NOT EXISTS reality.t_unit (
  id serial PRIMARY KEY NOT NULL,
  id_building integer NOT NULL,
  unit_type ENUM('FLAT', 'COMMERCIAL_PREMISES', 'COMMON_PREMISES', 'CELLAR') NOT NULL,
  label character varying(50) NOT NULL,
  population smallint,
  floor_area smallint,

  ts_created timestamp with time zone,
  ts_changed timestamp with time zone,

  CONSTRAINT fk_t_unit_id_building FOREIGN KEY (id_building)
  REFERENCES reality.t_building (id) 
  ON UPDATE NO ACTION ON DELETE CASCADE,
  CONSTRAINT t_unit_id_building_id_user_label_key UNIQUE (id_building, label)
);