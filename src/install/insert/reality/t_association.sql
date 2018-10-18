--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;)
--comment Adding data to table 'reality.t_association'.

INSERT INTO reality.t_association (name, ts_from, ts_to, valid)
  VALUES ('SVJ Údolní 54, Brno', '2018-01-01 00:00:00.000000+02', '2019-01-01 00:00:00.000000+02', true)
  ON CONFLICT (name) DO UPDATE ts_from = '2018-01-01 00:00:00.000000+02', ts_to = '2019-01-01 00:00:00.000000+02', valid = true;
--rollback DELETE FROM reality.t_association WHERE name = 'Předseda výboru'

