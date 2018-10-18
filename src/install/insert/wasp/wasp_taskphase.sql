--liquibase formatted sql
--changeset Andy:1.0.4.1 (splitStatements:false endDelimiter:;)
--comment Adding data to table wasp.wasp_taskphase.


INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE '<NULL>' AND wasp_taskname = '<NULL>'),
  'výchozí pro evaluátory', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND fk_report_category IS NULL);
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE '<NULL>' AND wasp_taskname = '<NULL>';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname = 'behavior/ElectronicWarfare/ConnectionChecker'),
  'výzva k ohlášení spojení ', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname = 'behavior/ElectronicWarfare/ConnectionChecker'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname = 'behavior/ElectronicWarfare/ConnectionChecker';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname = 'behavior/ElectronicWarfare/ConnectionChecker'),
  'odpověď podřízeného na výzvu ', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname = 'behavior/ElectronicWarfare/ConnectionChecker'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname = 'behavior/ElectronicWarfare/ConnectionChecker';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname = 'behavior/Movement/dismountFrom'),
  'výzva k sesednutí ', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k sesednutí ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname = 'behavior/Movement/dismountFrom'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k sesednutí ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname = 'behavior/Movement/dismountFrom';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname = 'behavior/Movement/dismountFrom'),
  'odpověď podřízeného o zahájení sesednutí ', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení sesednutí ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname = 'behavior/Movement/dismountFrom'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení sesednutí ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname = 'behavior/Movement/dismountFrom';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname = 'behavior/Movement/dismountFrom'),
  'odpověď nasedlé jednotky o sesednutí ', 
  3,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedlé jednotky o sesednutí ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname = 'behavior/Movement/dismountFrom'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedlé jednotky o sesednutí ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname = 'behavior/Movement/dismountFrom';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname = 'behavior/Movement/dismountFrom'),
  'odpověď podřízeného o dokončení sesednutí ', 
  4,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení sesednutí ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname = 'behavior/Movement/dismountFrom'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení sesednutí ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname = 'behavior/Movement/dismountFrom';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname = 'behavior/Movement/mountTo'),
  'výzva k nasednutí ', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k nasednutí ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname = 'behavior/Movement/mountTo'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k nasednutí ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname = 'behavior/Movement/mountTo';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname = 'behavior/Movement/mountTo'),
  'odpověď podřízeného o zahájení nasednutí ', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení nasednutí ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname = 'behavior/Movement/mountTo'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení nasednutí ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname = 'behavior/Movement/mountTo';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname = 'behavior/Movement/mountTo'),
  'odpověď podřízeného o dokončení nasednutí ', 
  4,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení nasednutí ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname = 'behavior/Movement/mountTo'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení nasednutí ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname = 'behavior/Movement/mountTo';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname = 'behavior/Movement/changeFormation'),
  'výzva ke změně formace jednotky ', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně formace jednotky ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname = 'behavior/Movement/changeFormation'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně formace jednotky ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname = 'behavior/Movement/changeFormation';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname = 'behavior/Movement/changeFormation'),
  'odpověď podřízeného o zahájení změny formace ', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení změny formace ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname = 'behavior/Movement/changeFormation'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení změny formace ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname = 'behavior/Movement/changeFormation';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname = 'behavior/Movement/changeFormation'),
  'odpověď podřízeného o dokončení změny formace ', 
  3,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení změny formace ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname = 'behavior/Movement/changeFormation'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení změny formace ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname = 'behavior/Movement/changeFormation';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname = 'behavior/Movement/hitchUp'),
  'hlášení nadřízenému o zahájení připojování vozidla ', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení připojování vozidla ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname = 'behavior/Movement/hitchUp'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení připojování vozidla ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname = 'behavior/Movement/hitchUp';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname = 'behavior/Movement/hitchUp'),
  'hlášení nadřízenému o dokončení připojení vozidla ', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení připojení vozidla ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname = 'behavior/Movement/hitchUp'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení připojení vozidla ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname = 'behavior/Movement/hitchUp';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname = 'behavior/Movement/unhitch'),
  'hlášení nadřízenému o zahájení odpojování vozidla ', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení odpojování vozidla ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname = 'behavior/Movement/unhitch'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení odpojování vozidla ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname = 'behavior/Movement/unhitch';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname = 'behavior/Movement/unhitch'),
  'hlášení nadřízenému o dokončení odpojování vozidla ', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení odpojování vozidla ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname = 'behavior/Movement/unhitch'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení odpojování vozidla ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname = 'behavior/Movement/unhitch';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname = 'behavior/Warfare/setFirePermission'),
  'výzva ke změně povolení palby ', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně povolení palby ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname = 'behavior/Warfare/setFirePermission'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně povolení palby ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname = 'behavior/Warfare/setFirePermission';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname = 'behavior/Warfare/setFirePermission'),
  'odpověď o dokončení změny povolení palby ', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o dokončení změny povolení palby ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname = 'behavior/Warfare/setFirePermission'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o dokončení změny povolení palby ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname = 'behavior/Warfare/setFirePermission';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname = 'behavior/Movement/groundMoveTo'),
  'výzva k přesunu ', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname = 'behavior/Movement/groundMoveTo'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname = 'behavior/Movement/groundMoveTo';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname = 'behavior/Movement/groundMoveTo'),
  'odpověď podřízeného o zahájení přesunu ', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname = 'behavior/Movement/groundMoveTo'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname = 'behavior/Movement/groundMoveTo';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname = 'behavior/Movement/groundMoveTo'),
  'odpověď podřízeného o dosažení postupového bodu ', 
  3,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname = 'behavior/Movement/groundMoveTo'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname = 'behavior/Movement/groundMoveTo';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname = 'behavior/Movement/groundMoveTo'),
  'odpověď podřízeného o dokončení přesunu ', 
  4,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname = 'behavior/Movement/groundMoveTo'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname = 'behavior/Movement/groundMoveTo';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname = 'behavior/Warfare/ShotOnTarget'),
  'hlášení nadřízenému o zahájení výstřelu na cíl ', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na cíl ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname = 'behavior/Warfare/ShotOnTarget'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na cíl ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname = 'behavior/Warfare/ShotOnTarget';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname = 'behavior/Warfare/ShotOnTarget'),
  'hlášení nadřízenému o dokončení výstřelu na cíl ', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na cíl ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname = 'behavior/Warfare/ShotOnTarget'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na cíl ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname = 'behavior/Warfare/ShotOnTarget';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname = 'behavior/Warfare/ShotOnPoint'),
  'hlášení nadřízenému o zahájení výstřelu na bod ', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na bod ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname = 'behavior/Warfare/ShotOnPoint'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na bod ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname = 'behavior/Warfare/ShotOnPoint';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname = 'behavior/Warfare/ShotOnPoint'),
  'hlášení nadřízenému o dokončení výstřelu na bod ', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na bod ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname = 'behavior/Warfare/ShotOnPoint'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na bod ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname = 'behavior/Warfare/ShotOnPoint';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname = 'behavior/Warfare/indirectFireAttack'),
  'hlášení nadřízenému o zahájení útoku ', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení útoku ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname = 'behavior/Warfare/indirectFireAttack'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení útoku ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname = 'behavior/Warfare/indirectFireAttack';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname = 'behavior/Warfare/indirectFireAttack'),
  'hlášení nadřízenému o normálním ukončení útoku ', 
  3,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o normálním ukončení útoku ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname = 'behavior/Warfare/indirectFireAttack'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o normálním ukončení útoku ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname = 'behavior/Warfare/indirectFireAttack';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname = 'behavior/Warfare/indirectFireAttack'),
  'hlášení nadřízenému o ukončení útoku z důvodu nedostatku munice ', 
  4,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o ukončení útoku z důvodu nedostatku munice ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname = 'behavior/Warfare/indirectFireAttack'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o ukončení útoku z důvodu nedostatku munice ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname = 'behavior/Warfare/indirectFireAttack';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname = 'behavior/Warfare/directFireAttack'),
  'hlášení nadřízenému o zahájení přesunu na místo útoku ', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu na místo útoku ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname = 'behavior/Warfare/directFireAttack'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu na místo útoku ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname = 'behavior/Warfare/directFireAttack';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname = 'behavior/Warfare/directFireAttack'),
  'hlášení nadřízenému o dokončení útoku ', 
  4,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení útoku ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname = 'behavior/Warfare/directFireAttack'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení útoku ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname = 'behavior/Warfare/directFireAttack';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname = 'behavior/Warfare/directFireAttack'),
  'hlášení nadřízenému o dosažení místa útoku a zahájení útoku ', 
  3,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dosažení místa útoku a zahájení útoku ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname = 'behavior/Warfare/directFireAttack'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dosažení místa útoku a zahájení útoku ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname = 'behavior/Warfare/directFireAttack';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname = 'behavior/Movement/TransferSuplies'),
  'hlášení nadřízenému o zahájení přesunu zásob ', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu zásob ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname = 'behavior/Movement/TransferSuplies'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu zásob ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname = 'behavior/Movement/TransferSuplies';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname = 'behavior/Movement/TransferSuplies'),
  'hlášení nadřízenému o úspěšném dokončení doplnění zásob ', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o úspěšném dokončení doplnění zásob ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname = 'behavior/Movement/TransferSuplies'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o úspěšném dokončení doplnění zásob ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname = 'behavior/Movement/TransferSuplies';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname = 'behavior/Movement/TransferSuplies'),
  'hlášení nadřízenému o neúspěšném dokončení doplnění zásob ', 
  3,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o neúspěšném dokončení doplnění zásob ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname = 'behavior/Movement/TransferSuplies'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o neúspěšném dokončení doplnění zásob ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname = 'behavior/Movement/TransferSuplies';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname = 'behavior/Warfare/TakeDefensivePosition'),
  'výzva k zaujetí obranné pozice ', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zaujetí obranné pozice ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname = 'behavior/Warfare/TakeDefensivePosition'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zaujetí obranné pozice ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname = 'behavior/Warfare/TakeDefensivePosition';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname = 'behavior/Warfare/TakeDefensivePosition'),
  'odpověď podřízeného o zahájení přesunu na zadanou pozici ', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu na zadanou pozici ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname = 'behavior/Warfare/TakeDefensivePosition'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu na zadanou pozici ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname = 'behavior/Warfare/TakeDefensivePosition';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname = 'behavior/Warfare/TakeDefensivePosition'),
  'odpověď podřízeného o dosažení pozice a zaujetí obranné pozice ', 
  3,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení pozice a zaujetí obranné pozice ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname = 'behavior/Warfare/TakeDefensivePosition'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení pozice a zaujetí obranné pozice ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname = 'behavior/Warfare/TakeDefensivePosition';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname = 'behavior/Warfare/TakeDefensivePosition'),
  'odpověď podřízeného o provedení sesednutí ', 
  4,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o provedení sesednutí ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname = 'behavior/Warfare/TakeDefensivePosition'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o provedení sesednutí ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname = 'behavior/Warfare/TakeDefensivePosition';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'WeatherRadioEmission' AND wasp_taskname = 'behavior/Warfare/WeatherRadioEmissionComposition'),
  'pouze nahrávka vysílání počasí ', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'pouze nahrávka vysílání počasí ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'WeatherRadioEmission' AND wasp_taskname = 'behavior/Warfare/WeatherRadioEmissionComposition'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'pouze nahrávka vysílání počasí ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'WeatherRadioEmission' AND wasp_taskname = 'behavior/Warfare/WeatherRadioEmissionComposition';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'JammerStart' AND wasp_taskname = 'behavior/ElectronicWarfare/JammerStart'),
  'pouze nahrávka pro rušení ', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'pouze nahrávka pro rušení ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'JammerStart' AND wasp_taskname = 'behavior/ElectronicWarfare/JammerStart'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'pouze nahrávka pro rušení ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'JammerStart' AND wasp_taskname = 'behavior/ElectronicWarfare/JammerStart';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'AttachToUnit' AND wasp_taskname = 'behavior/AttachToUnit'),
  'hlášení nadřízenému o připojení do jednotky ', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o připojení do jednotky ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AttachToUnit' AND wasp_taskname = 'behavior/AttachToUnit'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o připojení do jednotky ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AttachToUnit' AND wasp_taskname = 'behavior/AttachToUnit';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'DetachFromUnit' AND wasp_taskname = 'behavior/DetachFromUnit'),
  'hlášení nadřízenému o odpojení od jednotky ', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o odpojení od jednotky ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DetachFromUnit' AND wasp_taskname = 'behavior/DetachFromUnit'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o odpojení od jednotky ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DetachFromUnit' AND wasp_taskname = 'behavior/DetachFromUnit';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname = 'behavior/ElectronicWarfare/ChangeChannel'),
  'výzva k ohlášení spojení ', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname = 'behavior/ElectronicWarfare/ChangeChannel'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname = 'behavior/ElectronicWarfare/ChangeChannel';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname = 'behavior/ElectronicWarfare/ChangeChannel'),
  'odpověď podřízeného na výzvu ', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname = 'behavior/ElectronicWarfare/ChangeChannel'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname = 'behavior/ElectronicWarfare/ChangeChannel';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname = 'behavior/ElectronicWarfare/ChangeChannel'),
  'odpověď podřízeného o změně kanálu ', 
  3,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o změně kanálu ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname = 'behavior/ElectronicWarfare/ChangeChannel'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o změně kanálu ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname = 'behavior/ElectronicWarfare/ChangeChannel';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname = 'behavior/Movement/Stop'),
  'výzva k zastavení', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zastavení' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname = 'behavior/Movement/Stop'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zastavení' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname = 'behavior/Movement/Stop';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname = 'behavior/Movement/Stop'),
  'odpověď podřízeného o dokončení zastavení ', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení zastavení ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname = 'behavior/Movement/Stop'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení zastavení ' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname = 'behavior/Movement/Stop';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'GeneralRadioEmission' AND wasp_taskname = 'behavior/Warfare/GeneralRadioEmissionComposition'),
  'vysílaná zpráva', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'vysílaná zpráva' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GeneralRadioEmission' AND wasp_taskname = 'behavior/Warfare/GeneralRadioEmissionComposition'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'vysílaná zpráva' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GeneralRadioEmission' AND wasp_taskname = 'behavior/Warfare/GeneralRadioEmissionComposition';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname = 'behavior/Movement/airFlightPreparation'),
  'registrace letadla u řídící věži', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'registrace letadla u řídící věži' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname = 'behavior/Movement/airFlightPreparation'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'registrace letadla u řídící věži' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname = 'behavior/Movement/airFlightPreparation';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator'),
  'řídící věž registruje letadlo', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž registruje letadlo' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž registruje letadlo' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname = 'behavior/Movement/airFlightPreparation'),
  'letadlo dává požadavek na start', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dává požadavek na start' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname = 'behavior/Movement/airFlightPreparation'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dává požadavek na start' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname = 'behavior/Movement/airFlightPreparation';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator'),
  'řídící věž povoluje start', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povoluje start' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povoluje start' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname = 'behavior/Movement/airFlightPreparation'),
  'letadlo je připraveno ke startu', 
  3,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno ke startu' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname = 'behavior/Movement/airFlightPreparation'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno ke startu' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname = 'behavior/Movement/airFlightPreparation';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator'),
  'řídící věž nahlasí, která runway', 
  3,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlasí, která runway' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlasí, která runway' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname = 'behavior/Movement/airFlightPreparation'),
  'letadlo potvrdí runway', 
  4,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname = 'behavior/Movement/airFlightPreparation'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname = 'behavior/Movement/airFlightPreparation';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname = 'behavior/Movement/airTakeoff'),
  'letadlo je připraveno na vzlet', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno na vzlet' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname = 'behavior/Movement/airTakeoff'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno na vzlet' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname = 'behavior/Movement/airTakeoff';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator'),
  'řídící věž popíše taxi dráhu', 
  4,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž popíše taxi dráhu' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž popíše taxi dráhu' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname = 'behavior/Movement/airTakeoff'),
  'letadlo potvrdí taxi dráhu', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí taxi dráhu' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname = 'behavior/Movement/airTakeoff'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí taxi dráhu' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname = 'behavior/Movement/airTakeoff';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator'),
  'řídící věž potvdí letovou výšku', 
  5,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž potvdí letovou výšku' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž potvdí letovou výšku' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname = 'behavior/Movement/airTakeoff'),
  'letadlo potvrdí letovou výšku', 
  3,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí letovou výšku' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname = 'behavior/Movement/airTakeoff'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí letovou výšku' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname = 'behavior/Movement/airTakeoff';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator'),
  'řídící věž zdělí dráhu opuštění letiště', 
  6,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž zdělí dráhu opuštění letiště' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž zdělí dráhu opuštění letiště' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname = 'behavior/Movement/airTakeoff'),
  'letadlo potvrdí dráhu opuštění letiště', 
  4,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí dráhu opuštění letiště' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname = 'behavior/Movement/airTakeoff'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí dráhu opuštění letiště' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname = 'behavior/Movement/airTakeoff';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator'),
  'řídící věž nahlásí frekvenci ŘLP', 
  7,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí frekvenci ŘLP' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí frekvenci ŘLP' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname = 'behavior/Movement/airTakeoff'),
  'letadlo potvrdí frekvenci ŘLP', 
  5,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci ŘLP' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname = 'behavior/Movement/airTakeoff'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci ŘLP' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname = 'behavior/Movement/airTakeoff';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname = 'behavior/Movement/airTakeoff'),
  'letadlo se registruje u ŘLP', 
  6,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje u ŘLP' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname = 'behavior/Movement/airTakeoff'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje u ŘLP' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname = 'behavior/Movement/airTakeoff';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname = 'AirTrafficControlEvaluator'),
  'řízení letového provozu sdělí informace o letu', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu sdělí informace o letu' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname = 'AirTrafficControlEvaluator'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu sdělí informace o letu' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname = 'AirTrafficControlEvaluator';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname = 'behavior/Movement/airTakeoff'),
  'letadlo potvrdí informace o letu', 
  7,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí informace o letu' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname = 'behavior/Movement/airTakeoff'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí informace o letu' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname = 'behavior/Movement/airTakeoff';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname = 'AirTrafficControlEvaluator'),
  'řízení letového provozu nahlasí frekvenci pro komunikaci s ŘLP', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu nahlasí frekvenci pro komunikaci s ŘLP' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname = 'AirTrafficControlEvaluator'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu nahlasí frekvenci pro komunikaci s ŘLP' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname = 'AirTrafficControlEvaluator';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname = 'behavior/Movement/airTakeoff'),
  'letadlo potvrdí frekvenci pro komunikaci s ŘLP', 
  8,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci pro komunikaci s ŘLP' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname = 'behavior/Movement/airTakeoff'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci pro komunikaci s ŘLP' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname = 'behavior/Movement/airTakeoff';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname = 'behavior/Movement/airLand'),
  'letadlo se registruje na věži pro přistání', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje na věži pro přistání' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname = 'behavior/Movement/airLand'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje na věži pro přistání' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname = 'behavior/Movement/airLand';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator'),
  'řídící věž - pokračuj', 
  8,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž - pokračuj' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž - pokračuj' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname = 'behavior/Movement/airLand'),
  'letadlo nahlásí informace o sobě', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí informace o sobě' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname = 'behavior/Movement/airLand'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí informace o sobě' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname = 'behavior/Movement/airLand';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator'),
  'řídící věž nahlásí, která runway', 
  9,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí, která runway' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí, která runway' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname = 'behavior/Movement/airLand'),
  'letadlo potvrdí runway', 
  3,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname = 'behavior/Movement/airLand'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname = 'behavior/Movement/airLand';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator'),
  'řídící věž povolí přistání', 
  10,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povolí přistání' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povolí přistání' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname = 'AirportControlTowerEvaluator';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname = 'behavior/Movement/airLand'),
  'letadlo potvrdí přistání', 
  4,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí přistání' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname = 'behavior/Movement/airLand'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí přistání' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname = 'behavior/Movement/airLand';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname = 'behavior/Movement/airMoveTo'),
  'letadlo se ohlásí na ŘLP', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se ohlásí na ŘLP' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname = 'behavior/Movement/airMoveTo'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se ohlásí na ŘLP' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname = 'behavior/Movement/airMoveTo';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname = 'AirTrafficControlEvaluator'),
  'řízení letového provozu čeká na pokračování', 
  3,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu čeká na pokračování' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname = 'AirTrafficControlEvaluator'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu čeká na pokračování' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname = 'AirTrafficControlEvaluator';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname = 'behavior/Movement/airMoveTo'),
  'letadlo dá požadavek na změnu letového plánu', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dá požadavek na změnu letového plánu' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname = 'behavior/Movement/airMoveTo'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dá požadavek na změnu letového plánu' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname = 'behavior/Movement/airMoveTo';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname = 'AirTrafficControlEvaluator'),
  'řízení letového provozu odsouhlasí plán', 
  4,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu odsouhlasí plán' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname = 'AirTrafficControlEvaluator'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu odsouhlasí plán' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname = 'AirTrafficControlEvaluator';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname = 'behavior/Movement/airMoveTo'),
  'letadlo ukončí konverzaci', 
  3,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí konverzaci' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname = 'behavior/Movement/airMoveTo'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí konverzaci' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname = 'behavior/Movement/airMoveTo';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname = 'behavior/Movement/airMoveTo'),
  'letadlo sdělí informace o něm (palivo atd.)', 
  4,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo sdělí informace o něm (palivo atd.)' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname = 'behavior/Movement/airMoveTo'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo sdělí informace o něm (palivo atd.)' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname = 'behavior/Movement/airMoveTo';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname = 'behavior/Warfare/GuidingAircraftByIC'),
  'letadlo je připraveno k navádění.', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno k navádění.' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname = 'behavior/Warfare/GuidingAircraftByIC'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno k navádění.' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname = 'behavior/Warfare/GuidingAircraftByIC';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname = 'JTACEvaluator'),
  'naváděcí jednotka dá pokyn k aktivování zbraní.', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá pokyn k aktivování zbraní.' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname = 'JTACEvaluator'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá pokyn k aktivování zbraní.' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname = 'JTACEvaluator';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname = 'behavior/Warfare/GuidingAircraftByIC'),
  'letadlo potvrdí aktivování zbraní', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí aktivování zbraní' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname = 'behavior/Warfare/GuidingAircraftByIC'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí aktivování zbraní' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname = 'behavior/Warfare/GuidingAircraftByIC';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname = 'behavior/Warfare/GuidingAircraftByIC'),
  'letadlo nahlásí vstup do naváděné oblasti', 
  3,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí vstup do naváděné oblasti' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname = 'behavior/Warfare/GuidingAircraftByIC'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí vstup do naváděné oblasti' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname = 'behavior/Warfare/GuidingAircraftByIC';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname = 'JTACEvaluator'),
  'naváděcí jednotka dá příkaz k pokračování.', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá příkaz k pokračování.' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname = 'JTACEvaluator'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá příkaz k pokračování.' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname = 'JTACEvaluator';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname = 'behavior/Warfare/GuidingAircraftByIC'),
  'letadlo nahlásí kontakt s nepřítelem.', 
  4,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí kontakt s nepřítelem.' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname = 'behavior/Warfare/GuidingAircraftByIC'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí kontakt s nepřítelem.' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname = 'behavior/Warfare/GuidingAircraftByIC';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname = 'behavior/Warfare/GuidingAircraftByIC'),
  'letadlo ukončí komunikaci.', 
  5,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí komunikaci.' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname = 'behavior/Warfare/GuidingAircraftByIC'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí komunikaci.' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname = 'behavior/Warfare/GuidingAircraftByIC';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'UAVExploration' AND wasp_taskname = 'behavior/Movement/uavExploration'),
  'uav je aktivován.', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'uav je aktivován.' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'UAVExploration' AND wasp_taskname = 'behavior/Movement/uavExploration'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'uav je aktivován.' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'UAVExploration' AND wasp_taskname = 'behavior/Movement/uavExploration';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'UAVExploration' AND wasp_taskname = 'behavior/Movement/uavExploration'),
  'uav posílání dat.', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'uav posílání dat.' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'UAVExploration' AND wasp_taskname = 'behavior/Movement/uavExploration'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'uav posílání dat.' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'UAVExploration' AND wasp_taskname = 'behavior/Movement/uavExploration';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'UAVControl' AND wasp_taskname = 'UAVControlEvaluator'),
  'ovládání uav', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'ovládání uav' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'UAVControl' AND wasp_taskname = 'UAVControlEvaluator'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'ovládání uav' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'UAVControl' AND wasp_taskname = 'UAVControlEvaluator';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname = 'behavior/Warfare/ObserveOnPoint'),
  'zahájení pozorování na dané pozici', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení pozorování na dané pozici' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname = 'behavior/Warfare/ObserveOnPoint'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení pozorování na dané pozici' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname = 'behavior/Warfare/ObserveOnPoint';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname = 'behavior/Warfare/ObserveOnPoint'),
  'ukončení pozorování na dané pozici', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení pozorování na dané pozici' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname = 'behavior/Warfare/ObserveOnPoint'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení pozorování na dané pozici' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname = 'behavior/Warfare/ObserveOnPoint';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname = 'behavior/Warfare/ObserveAfterRoute'),
  'zahájení průzkumu na dané trase', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení průzkumu na dané trase' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname = 'behavior/Warfare/ObserveAfterRoute'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení průzkumu na dané trase' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname = 'behavior/Warfare/ObserveAfterRoute';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname = 'behavior/Warfare/ObserveAfterRoute'),
  'ukončení průzkumu na dané trase', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení průzkumu na dané trase' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname = 'behavior/Warfare/ObserveAfterRoute'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení průzkumu na dané trase' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname = 'behavior/Warfare/ObserveAfterRoute';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname = 'behavior/Movement/areaDemarcation'),
  'přesun k vytyčované oblasti', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'přesun k vytyčované oblasti' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname = 'behavior/Movement/areaDemarcation'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'přesun k vytyčované oblasti' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname = 'behavior/Movement/areaDemarcation';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname = 'behavior/Movement/areaDemarcation'),
  'zahájení vytyčování oblasti', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení vytyčování oblasti' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname = 'behavior/Movement/areaDemarcation'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení vytyčování oblasti' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname = 'behavior/Movement/areaDemarcation';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname = 'behavior/Movement/areaDemarcation'),
  'ukončení vytyčování', 
  3,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení vytyčování' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname = 'behavior/Movement/areaDemarcation'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení vytyčování' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname = 'behavior/Movement/areaDemarcation';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname = 'behavior/Warfare/directFireAttack'),
  'výzva k zahájení útoku přímou palbou', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení útoku přímou palbou' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname = 'behavior/Warfare/directFireAttack'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení útoku přímou palbou' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname = 'behavior/Warfare/directFireAttack';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname = 'behavior/Warfare/indirectFireAttack'),
  'výzva k zahájení nepřímého útoku', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení nepřímého útoku' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname = 'behavior/Warfare/indirectFireAttack'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení nepřímého útoku' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname = 'behavior/Warfare/indirectFireAttack';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname = 'behavior/Movement/Retreat'),
  'výzva k zahájení ústupu', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení ústupu' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname = 'behavior/Movement/Retreat'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení ústupu' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname = 'behavior/Movement/Retreat';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname = 'behavior/Movement/Retreat'),
  'odpoveď o zahájení ústupu', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o zahájení ústupu' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname = 'behavior/Movement/Retreat'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o zahájení ústupu' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname = 'behavior/Movement/Retreat';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname = 'behavior/Movement/Retreat'),
  'odpoveď o ukončení nasedání', 
  3,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení nasedání' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname = 'behavior/Movement/Retreat'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení nasedání' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname = 'behavior/Movement/Retreat';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname = 'behavior/Movement/Retreat'),
  'odpoveď o ukončení ústupu', 
  4,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení ústupu' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname = 'behavior/Movement/Retreat'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení ústupu' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname = 'behavior/Movement/Retreat';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname = 'behavior/Movement/mountTo'),
  'odpověď nasedávající entity o nasednutí', 
  3,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedávající entity o nasednutí' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname = 'behavior/Movement/mountTo'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedávající entity o nasednutí' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname = 'behavior/Movement/mountTo';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname = 'behavior/Movement/followEntity'),
  'výzva k zahájení následování', 
  1,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení následování' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname = 'behavior/Movement/followEntity'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení následování' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname = 'behavior/Movement/followEntity';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname = 'behavior/Movement/followEntity'),
  'odpověď o zahájení následování', 
  2,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o zahájení následování' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname = 'behavior/Movement/followEntity'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o zahájení následování' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname = 'behavior/Movement/followEntity';

INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname = 'behavior/Movement/followEntity'),
  'odpověď o ukončení následování', 
  3,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o ukončení následování' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname = 'behavior/Movement/followEntity'));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o ukončení následování' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname = 'behavior/Movement/followEntity';
