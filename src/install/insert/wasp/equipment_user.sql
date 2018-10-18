--liquibase formatted sql
--changeset Andy:1.0.3.1 (splitStatements:false endDelimiter:;)
--comment Adding data to table wasp.equipment_user.

INSERT INTO wasp.equipment_user (name, deleted)
  SELECT 'AČR', false WHERE NOT EXISTS (SELECT 1 FROM wasp.equipment_user WHERE name = 'AČR');
--rollback DELETE FROM wasp.equipment_user WHERE name = 'AČR';

INSERT INTO wasp.equipment_user (name, deleted)
  SELECT 'NATO', false WHERE NOT EXISTS (SELECT 1 FROM wasp.equipment_user WHERE name = 'NATO');
--rollback DELETE FROM wasp.equipment_user WHERE name = 'NATO';

INSERT INTO wasp.equipment_user (name, deleted)
  SELECT 'Rusko', false WHERE NOT EXISTS (SELECT 1 FROM wasp.equipment_user WHERE name = 'Rusko');
--rollback DELETE FROM wasp.equipment_user WHERE name = 'Rusko';

