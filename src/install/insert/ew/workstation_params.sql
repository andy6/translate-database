--liquibase formatted sql
--changeset Andy:1.0.5.3 (splitStatements:false endDelimiter:;)
--comment Adding data to table ew.workstation_params.

INSERT INTO ew.workstation_params (fk_trained_entity, signal_level_coefficient)
  SELECT (SELECT id FROM ew.trained_entity WHERE workstation LIKE 'MPRS1-Operator'), 1.0 WHERE NOT EXISTS 
  (SELECT 1 FROM ew.workstation_params WHERE fk_trained_entity = (SELECT id FROM ew.trained_entity WHERE workstation LIKE 'MPRS1-Operator') AND signal_level_coefficient = 1.0);
--rollback DELETE FROM ew.workstation_params WHERE workstation LIKE 'MPRS1-Operator';

INSERT INTO ew.workstation_params (fk_trained_entity, signal_level_coefficient)
  SELECT (SELECT id FROM ew.trained_entity WHERE workstation LIKE 'MPRS2-Operator'), 1.0 WHERE NOT EXISTS 
  (SELECT 1 FROM ew.workstation_params WHERE fk_trained_entity = (SELECT id FROM ew.trained_entity WHERE workstation LIKE 'MPRS2-Operator') AND signal_level_coefficient = 1.0);
--rollback DELETE FROM ew.workstation_params WHERE workstation LIKE 'MPRS2-Operator';

INSERT INTO ew.workstation_params (fk_trained_entity, signal_level_coefficient)
  SELECT (SELECT id FROM ew.trained_entity WHERE workstation LIKE 'MPRS3-Operator'), 1.0 WHERE NOT EXISTS 
  (SELECT 1 FROM ew.workstation_params WHERE fk_trained_entity = (SELECT id FROM ew.trained_entity WHERE workstation LIKE 'MPRS3-Operator') AND signal_level_coefficient = 1.0);
--rollback DELETE FROM ew.workstation_params WHERE workstation LIKE 'MPRS3-Operator';

INSERT INTO ew.workstation_params (fk_trained_entity, signal_level_coefficient)
  SELECT (SELECT id FROM ew.trained_entity WHERE workstation LIKE 'PRTA1-Operator'), 1.4 WHERE NOT EXISTS 
  (SELECT 1 FROM ew.workstation_params WHERE fk_trained_entity = (SELECT id FROM ew.trained_entity WHERE workstation LIKE 'PRTA1-Operator') AND signal_level_coefficient = 1.4);
--rollback DELETE FROM ew.workstation_params WHERE workstation LIKE 'PRTA1-Operator';

INSERT INTO ew.workstation_params (fk_trained_entity, signal_level_coefficient)
  SELECT (SELECT id FROM ew.trained_entity WHERE workstation LIKE 'PRTA2-Operator'), 1.4 WHERE NOT EXISTS 
  (SELECT 1 FROM ew.workstation_params WHERE fk_trained_entity = (SELECT id FROM ew.trained_entity WHERE workstation LIKE 'PRTA2-Operator') AND signal_level_coefficient = 1.4);
--rollback DELETE FROM ew.workstation_params WHERE workstation LIKE 'PRTA2-Operator';

INSERT INTO ew.workstation_params (fk_trained_entity, signal_level_coefficient)
  SELECT (SELECT id FROM ew.trained_entity WHERE workstation LIKE 'RUP1-Operator'), 1.2 WHERE NOT EXISTS 
  (SELECT 1 FROM ew.workstation_params WHERE fk_trained_entity = (SELECT id FROM ew.trained_entity WHERE workstation LIKE 'RUP1-Operator') AND signal_level_coefficient = 1.2);
--rollback DELETE FROM ew.workstation_params WHERE workstation LIKE 'RUP1-Operator';

INSERT INTO ew.workstation_params (fk_trained_entity, signal_level_coefficient)
  SELECT (SELECT id FROM ew.trained_entity WHERE workstation LIKE 'RUP2-Operator'), 1.2 WHERE NOT EXISTS 
  (SELECT 1 FROM ew.workstation_params WHERE fk_trained_entity = (SELECT id FROM ew.trained_entity WHERE workstation LIKE 'RUP2-Operator') AND signal_level_coefficient = 1.2);
--rollback DELETE FROM ew.workstation_params WHERE workstation LIKE 'RUP2-Operator';

INSERT INTO ew.workstation_params (fk_trained_entity, signal_level_coefficient)
  SELECT (SELECT id FROM ew.trained_entity WHERE workstation LIKE 'ECM-Operator'), 1.0 WHERE NOT EXISTS 
  (SELECT 1 FROM ew.workstation_params WHERE fk_trained_entity = (SELECT id FROM ew.trained_entity WHERE workstation LIKE 'ECM-Operator') AND signal_level_coefficient = 1.0);
--rollback DELETE FROM ew.workstation_params WHERE workstation LIKE 'ECM-Operator';
