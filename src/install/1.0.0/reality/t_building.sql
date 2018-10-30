--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Creates a new table 'reality.t_building' in the current database.

-- Table reality.t_building
-- DROP TABLE IF EXISTS reality.t_building CASCADE;
CREATE TABLE IF NOT EXISTS reality.t_building (
  id serial PRIMARY KEY NOT NULL,
  id_association integer NOT NULL,
  name character varying(255) UNIQUE NOT NULL,
  floors smallint,
  approval_date date,
  built_date date,
  street character varying(255) NOT NULL,
  city character varying(255) NOT NULL,
  zip integer NOT NULL,
  country character varying(255) NOT NULL,

  ts_created timestamp with time zone,
  ts_changed timestamp with time zone,

  CONSTRAINT fk_t_building_id_association FOREIGN KEY (id_association)
  REFERENCES reality.t_association (id)
  ON UPDATE NO ACTION ON DELETE CASCADE
);
COMMENT ON TABLE reality.t_building IS 'Table stores buildings.';
COMMENT ON COLUMN reality.t_building.id_association IS 'Association identifier.';
COMMENT ON COLUMN reality.t_building.name IS 'Name of building.';
COMMENT ON COLUMN reality.t_building.floors IS 'Number of floors.';
COMMENT ON COLUMN reality.t_building.approval_date IS 'Approval date.';
COMMENT ON COLUMN reality.t_building.built_date IS 'Built date.';
COMMENT ON COLUMN reality.t_building.street IS 'Street.';
COMMENT ON COLUMN reality.t_building.city IS 'City.';
COMMENT ON COLUMN reality.t_building.zip IS 'ZIP.';
COMMENT ON COLUMN reality.t_building.ts_created IS 'Timestamp of building created.';
COMMENT ON COLUMN reality.t_building.ts_changed IS 'Timestamp of building changed.';
--rollback DROP TABLE IF EXISTS reality.t_building;

--changeset Andy:1.0.1 (splitStatements:false endDelimiter:;) dbms:postgresql
--comment Creates a trigger on table 'reality.t_building'.
DROP TRIGGER IF EXISTS tb_building_timestamp ON reality.t_building;
CREATE TRIGGER tb_building_timestamp
  BEFORE INSERT OR UPDATE
  ON reality.t_building
  FOR EACH ROW
EXECUTE PROCEDURE main.proc_timestamp();
COMMENT ON TRIGGER tb_building_timestamp ON reality.t_building IS 'Trigger calls timestamp procedure.';
--rollback DROP TRIGGER IF EXISTS tb_building_timestamp ON reality.t_building;