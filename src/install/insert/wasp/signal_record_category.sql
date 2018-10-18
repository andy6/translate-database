--liquibase formatted sql
--changeset Andy:1.0.5.1 (splitStatements:false endDelimiter:;)
--comment Adding data to table wasp.signalrecord_category.

INSERT INTO wasp.signalrecord_category (fk_signal_record, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, deleted)
  SELECT 
  (SELECT id FROM ew.signal_record WHERE description LIKE 'yessir'), 
  (SELECT id FROM ew.language WHERE code LIKE 'en'), 
  (SELECT id FROM wasp.category WHERE name LIKE 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'GeneralRadioEmission'), 
  (SELECT id FROM wasp.wasp_taskphase t WHERE t.name LIKE 'vysílaná zpráva' AND t.fk_report_category = fk_report_category LIMIT 1), 
  false 
  WHERE NOT EXISTS 
  (SELECT 1 FROM wasp.signalrecord_category WHERE 
  fk_signal_record = (SELECT id FROM ew.signal_record WHERE description LIKE 'yessir') AND 
  fk_language = (SELECT id FROM ew.language WHERE code LIKE 'en') AND 
  fk_category = (SELECT id FROM wasp.category WHERE name LIKE 'Začátečník') AND 
  fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GeneralRadioEmission') AND 
  fk_wasp_taskphase = (SELECT id FROM wasp.wasp_taskphase t WHERE t.name LIKE 'vysílaná zpráva' AND t.fk_report_category = fk_report_category LIMIT 1));
--rollback DELETE FROM wasp.signalrecord_category WHERE fk_signal_record = (SELECT id FROM ew.signal_record WHERE description LIKE 'yessir') AND fk_language = (SELECT id FROM ew.language WHERE code LIKE 'en') AND fk_category = (SELECT id FROM wasp.category WHERE name LIKE 'Začátečník') AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GeneralRadioEmission') AND fk_wasp_taskphase = (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'vysílaná zpráva');


INSERT INTO wasp.signalrecord_category (fk_signal_record, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, deleted)
  SELECT 
  (SELECT id FROM ew.signal_record WHERE description LIKE 't-mit orders'), 
  (SELECT id FROM ew.language WHERE code LIKE 'en'), 
  (SELECT id FROM wasp.category WHERE name LIKE 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'GeneralRadioEmission'), 
  (SELECT id FROM wasp.wasp_taskphase t WHERE t.name LIKE 'vysílaná zpráva' AND t.fk_report_category = fk_report_category LIMIT 1), 
  false 
  WHERE NOT EXISTS 
  (SELECT 1 FROM wasp.signalrecord_category WHERE 
  fk_signal_record = (SELECT id FROM ew.signal_record WHERE description LIKE 't-mit orders') AND 
  fk_language = (SELECT id FROM ew.language WHERE code LIKE 'en') AND 
  fk_category = (SELECT id FROM wasp.category WHERE name LIKE 'Začátečník') AND 
  fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GeneralRadioEmission') AND 
  fk_wasp_taskphase = (SELECT id FROM wasp.wasp_taskphase t WHERE t.name LIKE 'vysílaná zpráva' AND t.fk_report_category = fk_report_category LIMIT 1));
--rollback DELETE FROM wasp.signalrecord_category WHERE fk_signal_record = (SELECT id FROM ew.signal_record WHERE description LIKE 't-mit orders') AND fk_language = (SELECT id FROM ew.language WHERE code LIKE 'en') AND fk_category = (SELECT id FROM wasp.category WHERE name LIKE 'Začátečník') AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GeneralRadioEmission') AND fk_wasp_taskphase = (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'vysílaná zpráva');




INSERT INTO wasp.signalrecord_category (fk_signal_record, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, deleted)
  SELECT 
  (SELECT id FROM ew.signal_record WHERE description LIKE 'yessir'), 
  (SELECT id FROM ew.language WHERE code LIKE 'cs'), 
  (SELECT id FROM wasp.category WHERE name LIKE 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo'), 
  (SELECT id FROM wasp.wasp_taskphase t WHERE t.name LIKE 'výzva k přesunu ' AND t.fk_report_category = fk_report_category LIMIT 1), 
  false 
  WHERE NOT EXISTS 
  (SELECT 1 FROM wasp.signalrecord_category WHERE 
  fk_signal_record = (SELECT id FROM ew.signal_record WHERE description LIKE 'yessir') AND 
  fk_language = (SELECT id FROM ew.language WHERE code LIKE 'cs') AND 
  fk_category = (SELECT id FROM wasp.category WHERE name LIKE 'Začátečník') AND 
  fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo') AND 
  fk_wasp_taskphase = (SELECT id FROM wasp.wasp_taskphase t WHERE t.name LIKE 'výzva k přesunu ' AND t.fk_report_category = fk_report_category LIMIT 1));
--rollback DELETE FROM wasp.signalrecord_category WHERE fk_signal_record = (SELECT id FROM ew.signal_record WHERE description LIKE 'yessir') AND fk_language = (SELECT id FROM ew.language WHERE code LIKE 'cs') AND fk_category = (SELECT id FROM wasp.category WHERE name LIKE 'Začátečník') AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo') AND fk_wasp_taskphase = (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ');



INSERT INTO wasp.signalrecord_category (fk_signal_record, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, deleted)
SELECT 
  (SELECT id FROM ew.signal_record WHERE description LIKE 'yessir'), 
  (SELECT id FROM ew.language WHERE code LIKE 'en'), 
  (SELECT id FROM wasp.category WHERE name LIKE 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'UAVExploration'), 
  (SELECT id FROM wasp.wasp_taskphase t WHERE t.name LIKE 'uav posílání dat.' AND t.fk_report_category = fk_report_category LIMIT 1), 
  false 
  WHERE NOT EXISTS 
  (SELECT 1 FROM wasp.signalrecord_category WHERE 
  fk_signal_record = (SELECT id FROM ew.signal_record WHERE description LIKE 'yessir') AND 
  fk_language = (SELECT id FROM ew.language WHERE code LIKE 'en') AND 
  fk_category = (SELECT id FROM wasp.category WHERE name LIKE 'Začátečník') AND 
  fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'UAVExploration') AND 
  fk_wasp_taskphase = (SELECT id FROM wasp.wasp_taskphase t WHERE t.name LIKE 'uav posílání dat.' AND t.fk_report_category = fk_report_category LIMIT 1));
--rollback DELETE FROM wasp.signalrecord_category WHERE fk_signal_record = (SELECT id FROM ew.signal_record WHERE description LIKE 'yessir') AND fk_language = (SELECT id FROM ew.language WHERE code LIKE 'en') AND fk_category = (SELECT id FROM wasp.category WHERE name LIKE 'Začátečník') AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'UAVExploration') AND fk_wasp_taskphase = (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'uav posílání dat.');




INSERT INTO wasp.signalrecord_category (fk_signal_record, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, deleted)
SELECT 
  (SELECT id FROM ew.signal_record WHERE description LIKE 'yessir'), 
  (SELECT id FROM ew.language WHERE code LIKE 'en'), 
  (SELECT id FROM wasp.category WHERE name LIKE 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'UAVControl'), 
  (SELECT id FROM wasp.wasp_taskphase t WHERE t.name LIKE 'ovládání uav' AND t.fk_report_category = fk_report_category LIMIT 1), 
  false 
  WHERE NOT EXISTS 
  (SELECT 1 FROM wasp.signalrecord_category WHERE 
  fk_signal_record = (SELECT id FROM ew.signal_record WHERE description LIKE 'yessir') AND 
  fk_language = (SELECT id FROM ew.language WHERE code LIKE 'en') AND 
  fk_category = (SELECT id FROM wasp.category WHERE name LIKE 'Začátečník') AND 
  fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'UAVControl') AND 
  fk_wasp_taskphase = (SELECT id FROM wasp.wasp_taskphase t WHERE t.name LIKE 'ovládání uav' AND t.fk_report_category = fk_report_category LIMIT 1));
--rollback DELETE FROM wasp.signalrecord_category WHERE fk_signal_record = (SELECT id FROM ew.signal_record WHERE description LIKE 'yessir') AND fk_language = (SELECT id FROM ew.language WHERE code LIKE 'en') AND fk_category = (SELECT id FROM wasp.category WHERE name LIKE 'Začátečník') AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'UAVControl') AND fk_wasp_taskphase = (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ovládání uav');






--liquibase formatted sql
--changeset Andy:1.0.5.2 (splitStatements:false endDelimiter:;)
--comment Adding data to table wasp.signalrecord_category.
INSERT INTO wasp.signalrecord_category (fk_signal_record, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, deleted)
  SELECT 
  (SELECT id FROM ew.signal_record WHERE description LIKE 't-mit orders'), 
  (SELECT id FROM ew.language WHERE code LIKE 'en'), 
  (SELECT id FROM wasp.category WHERE name LIKE 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'JammerStart'), 
  (SELECT id FROM wasp.wasp_taskphase t WHERE t.name LIKE 'výchozí pro evaluátory'), 
  false 
  WHERE NOT EXISTS 
  (SELECT 1 FROM wasp.signalrecord_category WHERE 
  fk_signal_record = (SELECT id FROM ew.signal_record WHERE description LIKE 't-mit orders') AND 
  fk_language = (SELECT id FROM ew.language WHERE code LIKE 'en') AND 
  fk_category = (SELECT id FROM wasp.category WHERE name LIKE 'Začátečník') AND 
  fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'JammerStart') AND 
  fk_wasp_taskphase = (SELECT id FROM wasp.wasp_taskphase t WHERE t.name LIKE 'výchozí pro evaluátory'));
--rollback DELETE FROM wasp.signalrecord_category WHERE fk_signal_record = (SELECT id FROM ew.signal_record WHERE description LIKE 't-mit orders') AND fk_language = (SELECT id FROM ew.language WHERE code LIKE 'en') AND fk_category = (SELECT id FROM wasp.category WHERE name LIKE 'Začátečník') AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'JammerStart') AND fk_wasp_taskphase = (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.signalrecord_category (fk_signal_record, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, deleted)
  SELECT 
  (SELECT id FROM ew.signal_record WHERE description LIKE 't-mit orders'), 
  (SELECT id FROM ew.language WHERE code LIKE 'en'), 
  (SELECT id FROM wasp.category WHERE name LIKE 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'JammerStart'), 
  (SELECT id FROM wasp.wasp_taskphase t WHERE t.name LIKE 'výchozí pro evaluátory'), 
  false 
  WHERE NOT EXISTS 
  (SELECT 1 FROM wasp.signalrecord_category WHERE 
  fk_signal_record = (SELECT id FROM ew.signal_record WHERE description LIKE 'yessir') AND 
  fk_language = (SELECT id FROM ew.language WHERE code LIKE 'en') AND 
  fk_category = (SELECT id FROM wasp.category WHERE name LIKE 'Začátečník') AND 
  fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'JammerStart') AND 
  fk_wasp_taskphase = (SELECT id FROM wasp.wasp_taskphase t WHERE t.name LIKE 'výchozí pro evaluátory'));
--rollback DELETE FROM wasp.signalrecord_category WHERE fk_signal_record = (SELECT id FROM ew.signal_record WHERE description LIKE 'yessir') AND fk_language = (SELECT id FROM ew.language WHERE code LIKE 'en') AND fk_category = (SELECT id FROM wasp.category WHERE name LIKE 'Začátečník') AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'JammerStart') AND fk_wasp_taskphase = (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.signalrecord_category (fk_signal_record, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, deleted)
  SELECT 
  (SELECT id FROM ew.signal_record WHERE description LIKE 't-mit orders'), 
  (SELECT id FROM ew.language WHERE code LIKE 'en'), 
  (SELECT id FROM wasp.category WHERE name LIKE 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'CivilRadioEmission'), 
  (SELECT id FROM wasp.wasp_taskphase t WHERE t.name LIKE 'výchozí pro evaluátory'), 
  false 
  WHERE NOT EXISTS 
  (SELECT 1 FROM wasp.signalrecord_category WHERE 
  fk_signal_record = (SELECT id FROM ew.signal_record WHERE description LIKE 't-mit orders') AND 
  fk_language = (SELECT id FROM ew.language WHERE code LIKE 'en') AND 
  fk_category = (SELECT id FROM wasp.category WHERE name LIKE 'Začátečník') AND 
  fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'CivilRadioEmission') AND 
  fk_wasp_taskphase = (SELECT id FROM wasp.wasp_taskphase t WHERE t.name LIKE 'výchozí pro evaluátory'));
--rollback DELETE FROM wasp.signalrecord_category WHERE fk_signal_record = (SELECT id FROM ew.signal_record WHERE description LIKE 't-mit orders') AND fk_language = (SELECT id FROM ew.language WHERE code LIKE 'en') AND fk_category = (SELECT id FROM wasp.category WHERE name LIKE 'Začátečník') AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'CivilRadioEmission') AND fk_wasp_taskphase = (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

