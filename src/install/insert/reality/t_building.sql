--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;)
--comment Adding data to table 'reality.t_building'.

INSERT INTO reality.t_building (id_association, name, floors, approval_date, built_date, street, city, zip, country)
  VALUES ((SELECT id FROM reality.t_association WHERE name = 'SVJ Údolní 54, Brno'), 'First building', 5, '1919-01-01 00:00:00.000000+02', '1919-01-01', 'Some street', 'Some city', 60200, 'Czech republic')
  ON CONFLICT (name) DO UPDATE SET id_association = (SELECT id FROM reality.t_association WHERE name = 'SVJ Údolní 54, Brno');
--rollback DELETE FROM reality.t_building WHERE name = 'First building'

