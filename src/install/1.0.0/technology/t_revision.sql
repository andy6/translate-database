--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Creates a new table 'technology.t_revision' in the current database.

-- Table technology.t_revision
-- DROP TABLE IF EXISTS technology.t_revision CASCADE;
CREATE TABLE IF NOT EXISTS technology.t_revision (
  id serial PRIMARY KEY NOT NULL,
  id_association integer NOT NULL,
  subject character varying(50) NOT NULL,
  description character varying(255) NOT NULL,
  repeat_after smallint,

  ts_created timestamp with time zone,
  ts_changed timestamp with time zone,

  CONSTRAINT fk_revision_id_association FOREIGN KEY (id_association)
  REFERENCES reality.t_association (id) 
  ON UPDATE NO ACTION ON DELETE CASCADE
);
COMMENT ON TABLE technology.t_revision IS 'Table stores revisions.';
COMMENT ON COLUMN technology.t_revision.id IS 'Table identifier.';
COMMENT ON COLUMN technology.t_revision.id_association IS 'Foreign key to table "reality.t_association".';
COMMENT ON COLUMN technology.t_revision.subject IS 'Subject of revision.';
COMMENT ON COLUMN technology.t_revision.description IS 'Description of revision.';
COMMENT ON COLUMN technology.t_revision.repeat_after IS 'Repeat revision over time [].';
--rollback DROP TABLE IF EXISTS technology.t_revision;

--changeset Andy:1.0.1 (splitStatements:false endDelimiter:;) dbms:postgresql
--comment Creates a trigger on table 'technology.t_revision'.
DROP TRIGGER IF EXISTS tb_revision_timestamp ON technology.t_revision;
CREATE TRIGGER tb_revision_timestamp
  BEFORE INSERT OR UPDATE
  ON technology.t_revision
  FOR EACH ROW
EXECUTE PROCEDURE main.proc_timestamp();
COMMENT ON TRIGGER tb_revision_timestamp ON technology.t_revision IS 'Trigger calls timestamp procedure.';
--rollback DROP TRIGGER IF EXISTS tb_revision_timestamp ON technology.t_revision;





