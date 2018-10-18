--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Creates a new table 'technology.t_revision_time' in the current database.

-- Table technology.t_revision_time
-- DROP TABLE IF EXISTS technology.t_revision_time CASCADE;
CREATE TABLE IF NOT EXISTS technology.t_revision_time (
  id serial PRIMARY KEY NOT NULL,
  id_revision integer NOT NULL,
  supplier character varying(255) NOT NULL,
  description character varying(255) NOT NULL,
  date timestamp with time zone NOT NULL,
  passed boolean DEFAULT false,

  ts_created timestamp with time zone,
  ts_changed timestamp with time zone,

  CONSTRAINT fk_revision_time_id_revision FOREIGN KEY (id_revision)
  REFERENCES technology.t_revision (id) MATCH SIMPLE
  ON UPDATE NO ACTION ON DELETE CASCADE
);
COMMENT ON TABLE technology.t_revision_time IS 'Table stores dates of revisions.';
COMMENT ON COLUMN technology.t_revision_time.id_revision IS 'Foreign key to table "technology.t_revision".';
COMMENT ON COLUMN technology.t_revision_time.id IS 'Table identifier.';
COMMENT ON COLUMN technology.t_revision_time.supplier IS 'Supplier of revision.';
COMMENT ON COLUMN technology.t_revision_time.description IS 'Description of revision.';
COMMENT ON COLUMN technology.t_revision_time.date IS 'Date of revision.';

DROP TRIGGER IF EXISTS tb_revision_time_timestamp ON technology.t_revision_time;
CREATE TRIGGER tb_revision_time_timestamp
  BEFORE INSERT OR UPDATE
  ON technology.t_revision_time
  FOR EACH ROW
EXECUTE PROCEDURE main.proc_timestamp();
COMMENT ON TRIGGER tb_revision_time_timestamp ON technology.t_revision_time IS 'Trigger calls timestamp procedure.';
