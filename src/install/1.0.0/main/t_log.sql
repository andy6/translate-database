--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Creates a new table 'main.t_log' in the current database.

-- Table main.t_log
-- DROP TABLE IF EXISTS main.t_log CASCADE;
CREATE TABLE IF NOT EXISTS main.t_log (
  id serial PRIMARY KEY NOT NULL,
  log_type text NOT NULL,
  log_category text NOT NULL,
  text_value text,

  id_user_created integer,
  detail_info character varying,
  ts_created timestamp with time zone,
  CONSTRAINT fk_t_log_id_user_created FOREIGN KEY (id_user_created)
  REFERENCES main.t_user (id) 
  ON UPDATE NO ACTION ON DELETE SET NULL
);
COMMENT ON TABLE main.t_log IS 'Table stores logs.';
COMMENT ON COLUMN main.t_log.id IS 'Table identifier.';
COMMENT ON COLUMN main.t_log.log_type IS 'Type.';
COMMENT ON COLUMN main.t_log.log_category IS 'Category.';
COMMENT ON COLUMN main.t_log.text_value IS 'Text.';
COMMENT ON COLUMN main.t_log.id_user_created IS 'Identifier of user.';
COMMENT ON COLUMN main.t_log.detail_info IS 'detail informations.';
COMMENT ON COLUMN main.t_log.ts_created IS 'Timestamp created.';
-- rollback DROP TABLE IF EXISTS main.t_log;

--changeset Andy:1.0.1 (splitStatements:false endDelimiter:;) dbms:postgresql
--comment Creates a trigger on table 'main.t_log'.
DROP TRIGGER IF EXISTS tb_log_timestamp ON main.t_log;
CREATE TRIGGER tb_log_timestamp
  BEFORE INSERT OR UPDATE
  ON main.t_log
  FOR EACH ROW
EXECUTE PROCEDURE main.proc_timestamp();
COMMENT ON TRIGGER tb_log_timestamp ON main.t_log IS 'Trigger calls timestamp procedure.';
-- rollback DROP TRIGGER IF EXISTS tb_log_timestamp ON main.t_log;
