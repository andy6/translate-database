--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Creates a new table 'reality.t_association' in the current database.

-- Table reality.t_association
-- DROP TABLE IF EXISTS reality.t_association CASCADE;
CREATE TABLE IF NOT EXISTS reality.t_association (
  id serial PRIMARY KEY NOT NULL,
  name character varying(255) UNIQUE NOT NULL,
  ts_from timestamp with time zone,
  ts_to timestamp with time zone,
  valid boolean DEFAULT false,

  ts_created timestamp with time zone,
  ts_changed timestamp with time zone
);
COMMENT ON TABLE reality.t_association IS 'Table stores associations.';
COMMENT ON COLUMN reality.t_association.id IS 'Table identifier.';
COMMENT ON COLUMN reality.t_association.name IS 'Unique name of association.';
COMMENT ON COLUMN reality.t_association.ts_from IS 'Timestamp from.';
COMMENT ON COLUMN reality.t_association.ts_to IS 'Timestamp to.';
COMMENT ON COLUMN reality.t_association.valid IS 'Validation check.';
COMMENT ON COLUMN reality.t_association.ts_created IS 'Timestamp of association created.';
COMMENT ON COLUMN reality.t_association.ts_changed IS 'Timestamp of association changed.';
--rollback DROP TABLE IF EXISTS reality.t_association;

--changeset Andy:1.0.1 (splitStatements:false endDelimiter:;) dbms:postgresql
--comment Creates a trigger on table 'reality.t_association'.
DROP TRIGGER IF EXISTS tb_association_timestamp ON reality.t_association;
CREATE TRIGGER tb_association_timestamp
  BEFORE INSERT OR UPDATE
  ON reality.t_association
  FOR EACH ROW
EXECUTE PROCEDURE main.proc_timestamp();
COMMENT ON TRIGGER tb_association_timestamp ON reality.t_association IS 'Trigger calls timestamp procedure.';
--rollback DROP TRIGGER IF EXISTS tb_association_timestamp ON reality.t_association;