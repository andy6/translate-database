--liquibase formatted sql
--changeset Andy:1.0.3.1 (splitStatements:false endDelimiter:;)
--comment Adding data to table ew.trained_entity.

INSERT INTO ew.trained_entity (workstation, deleted)
  SELECT 'MPRS1-Operator', false WHERE NOT EXISTS (SELECT 1 FROM ew.trained_entity WHERE workstation LIKE 'MPRS1-Operator');
--rollback DELETE FROM ew.trained_entity WHERE workstation LIKE 'MPRS1-Operator';

INSERT INTO ew.trained_entity (workstation, deleted)
  SELECT 'MPRS2-Operator', false WHERE NOT EXISTS (SELECT 1 FROM ew.trained_entity WHERE workstation LIKE 'MPRS2-Operator');
--rollback DELETE FROM ew.trained_entity WHERE workstation LIKE 'MPRS2-Operator';

INSERT INTO ew.trained_entity (workstation, deleted)
  SELECT 'MPRS3-Operator', false WHERE NOT EXISTS (SELECT 1 FROM ew.trained_entity WHERE workstation LIKE 'MPRS3-Operator');
--rollback DELETE FROM ew.trained_entity WHERE workstation LIKE 'MPRS3-Operator';

INSERT INTO ew.trained_entity (workstation, deleted)
  SELECT 'PRTA1-Operator', false WHERE NOT EXISTS (SELECT 1 FROM ew.trained_entity WHERE workstation LIKE 'PRTA1-Operator');
--rollback DELETE FROM ew.trained_entity WHERE workstation LIKE 'PRTA1-Operator';

INSERT INTO ew.trained_entity (workstation, deleted)
  SELECT 'PRTA2-Operator', false WHERE NOT EXISTS (SELECT 1 FROM ew.trained_entity WHERE workstation LIKE 'PRTA2-Operator');
--rollback DELETE FROM ew.trained_entity WHERE workstation LIKE 'PRTA2-Operator';

INSERT INTO ew.trained_entity (workstation, deleted)
  SELECT 'RUPOP1-Operator', false WHERE NOT EXISTS (SELECT 1 FROM ew.trained_entity WHERE workstation LIKE 'RUPOP1-Operator');
--rollback DELETE FROM ew.trained_entity WHERE workstation LIKE 'RUPOP1-Operator';

INSERT INTO ew.trained_entity (workstation, deleted)
  SELECT 'RUPOP2-Operator', false WHERE NOT EXISTS (SELECT 1 FROM ew.trained_entity WHERE workstation LIKE 'RUPOP2-Operator');
--rollback DELETE FROM ew.trained_entity WHERE workstation LIKE 'RUPOP2-Operator';

--changeset Andy:1.0.5.3 (splitStatements:false endDelimiter:;)
--comment Adding data to table ew.trained_entity.

INSERT INTO ew.trained_entity (workstation, deleted)
  SELECT 'ECM-Operator', false WHERE NOT EXISTS (SELECT 1 FROM ew.trained_entity WHERE workstation LIKE 'ECM-Operator');
--rollback DELETE FROM ew.trained_entity WHERE workstation LIKE 'ECM-Operator';

--changeset Andy:1.0.5.4 (splitStatements:false endDelimiter:;)
--comment Adding data to table ew.trained_entity.

INSERT INTO ew.trained_entity (workstation, deleted)
  SELECT 'KV-Operator', false WHERE NOT EXISTS (SELECT 1 FROM ew.trained_entity WHERE workstation LIKE 'KV-Operator');
--rollback DELETE FROM ew.trained_entity WHERE workstation LIKE 'KV-Operator';

INSERT INTO ew.trained_entity (workstation, deleted)
  SELECT 'VKV-Operator', false WHERE NOT EXISTS (SELECT 1 FROM ew.trained_entity WHERE workstation LIKE 'VKV-Operator');
--rollback DELETE FROM ew.trained_entity WHERE workstation LIKE 'VKV-Operator';

INSERT INTO ew.trained_entity (workstation, deleted)
  SELECT 'UKV-Operator', false WHERE NOT EXISTS (SELECT 1 FROM ew.trained_entity WHERE workstation LIKE 'UKV-Operator');
--rollback DELETE FROM ew.trained_entity WHERE workstation LIKE 'UKV-Operator';

INSERT INTO ew.trained_entity (workstation, deleted)
  SELECT 'RCIED-Operator', false WHERE NOT EXISTS (SELECT 1 FROM ew.trained_entity WHERE workstation LIKE 'RCIED-Operator');
--rollback DELETE FROM ew.trained_entity WHERE workstation LIKE 'RCIED-Operator';
