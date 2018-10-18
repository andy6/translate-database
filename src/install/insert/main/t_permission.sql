--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;)
--comment Adding data to table 'main.t_permission'.

INSERT INTO main.t_permission (name, description)
  VALUES ('TEST', 'TEST')
  ON CONFLICT (name) DO UPDATE SET description = 'TEST';
--rollback DELETE FROM main.t_permission WHERE name = 'TEST'

