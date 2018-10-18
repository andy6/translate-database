--liquibase formatted sql
--changeset Andy:1.0.3.1 (splitStatements:false endDelimiter:;)
--comment Adding data to table wasp.report.

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'HitchUpStartRes - CZ, Beg', 
  (SELECT id FROM ew.language WHERE code = 'cs'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp'), 
  1, 
  'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE provádím připojení.', 
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'HitchUpStartRes - CZ, Beg');
--rollback DELETE FROM wasp.report WHERE name LIKE 'HitchUpStartRes - CZ, Beg';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'HitchUpStartRes - CZ, Adv', 
  (SELECT id FROM ew.language WHERE code = 'cs'), 
  (SELECT id FROM wasp.category WHERE name = 'Pokročilý'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp'), 1, 'CS_DESTINATION zde CS_SOURCE provádím připojení.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'HitchUpStartRes - CZ, Adv');
--rollback DELETE FROM wasp.report WHERE name LIKE 'HitchUpStartRes - CZ, Adv';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'HitchUpStartRes - EN, Beg', 
  (SELECT id FROM ew.language WHERE code = 'en'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp'), 1, 'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE connect vehicles.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'HitchUpStartRes - EN, Beg');
--rollback DELETE FROM wasp.report WHERE name LIKE 'HitchUpStartRes - EN, Beg';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'HitchUpStartRes - EN, Adv', 
  (SELECT id FROM ew.language WHERE code = 'en'), 
  (SELECT id FROM wasp.category WHERE name = 'Pokročilý'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp'), 1, 'CS_DESTINATION from CS_SOURCE connect vehicles.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'HitchUpStartRes - EN, Adv');
--rollback DELETE FROM wasp.report WHERE name LIKE 'HitchUpStartRes - EN, Adv';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'HitchUpStartRes - RU, Beg', 
  (SELECT id FROM ew.language WHERE code = 'ru'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp'), 1, 'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Я делаю соединение.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'HitchUpStartRes - RU, Beg');
--rollback DELETE FROM wasp.report WHERE name LIKE 'HitchUpStartRes - RU, Beg';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'HitchUpStartRes - RU, Adv', 
  (SELECT id FROM ew.language WHERE code = 'ru'), 
  (SELECT id FROM wasp.category WHERE name = 'Pokročilý'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp'), 1, 'CS_DESTINATION здесь CS_SOURCE Я делаю соединение.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'HitchUpStartRes - RU, Adv');
--rollback DELETE FROM wasp.report WHERE name LIKE 'HitchUpStartRes - RU, Adv';



INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'HitchUpEndRes - CZ, Beg', 
  (SELECT id FROM ew.language WHERE code = 'cs'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp'), 2, 'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE provedl jsem připojení.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'HitchUpEndRes - CZ, Beg');
--rollback DELETE FROM wasp.report WHERE name LIKE 'HitchUpEndRes - CZ, Beg';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'HitchUpEndRes - CZ, Adv', 
  (SELECT id FROM ew.language WHERE code = 'cs'), 
  (SELECT id FROM wasp.category WHERE name = 'Pokročilý'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp'), 2, 'CS_DESTINATION zde CS_SOURCE provedl jsem připojení.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'HitchUpEndRes - CZ, Adv');
--rollback DELETE FROM wasp.report WHERE name LIKE 'HitchUpEndRes - CZ, Adv';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'HitchUpEndRes - EN, Beg', 
  (SELECT id FROM ew.language WHERE code = 'en'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp'), 2, 'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE I made a connection.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'HitchUpEndRes - EN, Beg');
--rollback DELETE FROM wasp.report WHERE name LIKE 'HitchUpEndRes - EN, Beg';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'HitchUpEndRes - EN, Adv', 
  (SELECT id FROM ew.language WHERE code = 'en'), 
  (SELECT id FROM wasp.category WHERE name = 'Pokročilý'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp'), 2, 'CS_DESTINATION from CS_SOURCE I made a connection.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'HitchUpEndRes - EN, Adv');
--rollback DELETE FROM wasp.report WHERE name LIKE 'HitchUpEndRes - EN, Adv';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'HitchUpEndRes - RU, Beg', 
  (SELECT id FROM ew.language WHERE code = 'ru'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp'), 2, 'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Я сделал соединение.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'HitchUpEndRes - RU, Beg');
--rollback DELETE FROM wasp.report WHERE name LIKE 'HitchUpEndRes - RU, Beg';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'HitchUpEndRes - RU, Adv', 
  (SELECT id FROM ew.language WHERE code = 'ru'), 
  (SELECT id FROM wasp.category WHERE name = 'Pokročilý'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp'), 2, 'CS_DESTINATION здесь CS_SOURCE Я сделал соединение.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'HitchUpEndRes - RU, Adv');
--rollback DELETE FROM wasp.report WHERE name LIKE 'HitchUpEndRes - RU, Adv';



INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'UnHitchStartRes - CZ, Beg', 
  (SELECT id FROM ew.language WHERE code = 'cs'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch'), 1, 'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE provádím odpojení.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UnHitchStartRes - CZ, Beg');
--rollback DELETE FROM wasp.report WHERE name LIKE 'UnHitchStartRes - CZ, Beg';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'UnHitchStartRes - CZ, Adv', 
  (SELECT id FROM ew.language WHERE code = 'cs'), 
  (SELECT id FROM wasp.category WHERE name = 'Pokročilý'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch'), 1, 'CS_DESTINATION zde CS_SOURCE provádím odpojení.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UnHitchStartRes - CZ, Adv');
--rollback DELETE FROM wasp.report WHERE name LIKE 'UnHitchStartRes - CZ, Adv';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'UnHitchStartRes - EN, Beg', 
  (SELECT id FROM ew.language WHERE code = 'en'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch'), 1, 'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE I''m disconnecting.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UnHitchStartRes - EN, Beg');
--rollback DELETE FROM wasp.report WHERE name LIKE 'UnHitchStartRes - EN, Beg';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'UnHitchStartRes - EN, Adv', 
  (SELECT id FROM ew.language WHERE code = 'en'), 
  (SELECT id FROM wasp.category WHERE name = 'Pokročilý'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch'), 1, 'CS_DESTINATION from CS_SOURCE I''m disconnecting.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UnHitchStartRes - EN, Adv');
--rollback DELETE FROM wasp.report WHERE name LIKE 'UnHitchStartRes - EN, Adv';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'UnHitchStartRes - RU, Beg', 
  (SELECT id FROM ew.language WHERE code = 'ru'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch'), 1, 'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Я отсоединяю.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UnHitchStartRes - RU, Beg');
--rollback DELETE FROM wasp.report WHERE name LIKE 'UnHitchStartRes - RU, Beg';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'UnHitchStartRes - RU, Adv', 
  (SELECT id FROM ew.language WHERE code = 'ru'), 
  (SELECT id FROM wasp.category WHERE name = 'Pokročilý'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch'), 1, 'CS_DESTINATION здесь CS_SOURCE Я отсоединяю.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UnHitchStartRes - RU, Adv');
--rollback DELETE FROM wasp.report WHERE name LIKE 'UnHitchStartRes - RU, Adv';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'UnHitchEndRes - CZ, Beg', 
  (SELECT id FROM ew.language WHERE code = 'cs'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch'), 2, 'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE provedl jsem odpojení.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UnHitchEndRes - CZ, Beg');
--rollback DELETE FROM wasp.report WHERE name LIKE 'UnHitchEndRes - CZ, Beg';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'UnHitchEndRes - CZ, Adv', 
  (SELECT id FROM ew.language WHERE code = 'cs'), 
  (SELECT id FROM wasp.category WHERE name = 'Pokročilý'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch'), 2, 'CS_DESTINATION zde CS_SOURCE provedl jsem odpojení.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UnHitchEndRes - CZ, Adv');
--rollback DELETE FROM wasp.report WHERE name LIKE 'UnHitchEndRes - CZ, Adv';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'UnHitchEndRes - EN, Beg', 
  (SELECT id FROM ew.language WHERE code = 'en'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch'), 2, 'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE I disconnected.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UnHitchEndRes - EN, Beg');
--rollback DELETE FROM wasp.report WHERE name LIKE 'UnHitchEndRes - EN, Beg';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'UnHitchEndRes - EN, Adv', 
  (SELECT id FROM ew.language WHERE code = 'en'), 
  (SELECT id FROM wasp.category WHERE name = 'Pokročilý'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch'), 2, 'CS_DESTINATION from CS_SOURCE I disconnected.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UnHitchEndRes - EN, Adv');
--rollback DELETE FROM wasp.report WHERE name LIKE 'UnHitchEndRes - EN, Adv';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'UnHitchEndRes - RU, Beg', 
  (SELECT id FROM ew.language WHERE code = 'ru'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch'), 2, 'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Я отключен.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UnHitchEndRes - RU, Beg');
--rollback DELETE FROM wasp.report WHERE name LIKE 'UnHitchEndRes - RU, Beg';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'UnHitchEndRes - RU, Adv', 
  (SELECT id FROM ew.language WHERE code = 'ru'), 
  (SELECT id FROM wasp.category WHERE name = 'Pokročilý'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch'), 2, 'CS_DESTINATION здесь CS_SOURCE Я отключен.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UnHitchEndRes - RU, Adv');
--rollback DELETE FROM wasp.report WHERE name LIKE 'UnHitchEndRes - RU, Adv';


INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'MountToReq - CZ, Beg', 
  (SELECT id FROM ew.language WHERE code = 'cs'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'), 1, 'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE nasedněte.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToReq - CZ, Beg');
--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToReq - CZ, Beg';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'MountToReq - CZ, Adv', 
  (SELECT id FROM ew.language WHERE code = 'cs'), 
  (SELECT id FROM wasp.category WHERE name = 'Pokročilý'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'), 1, 'CS_DESTINATION zde CS_SOURCE nasedněte.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToReq - CZ, Adv');
--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToReq - CZ, Adv';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'MountToReq - EN, Beg', 
  (SELECT id FROM ew.language WHERE code = 'en'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'), 1, 'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE Mount to vehicle.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToReq - EN, Beg');
--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToReq - EN, Beg';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'MountToReq - EN, Adv', 
  (SELECT id FROM ew.language WHERE code = 'en'), 
  (SELECT id FROM wasp.category WHERE name = 'Pokročilý'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'), 1, 'CS_DESTINATION from CS_SOURCE Mount to vehicle.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToReq - EN, Adv');
--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToReq - EN, Adv';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'MountToReq - RU, Beg', 
  (SELECT id FROM ew.language WHERE code = 'ru'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'), 1, 'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE садиться в машину.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToReq - RU, Beg');
--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToReq - RU, Beg';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'MountToReq - RU, Adv', 
  (SELECT id FROM ew.language WHERE code = 'ru'), 
  (SELECT id FROM wasp.category WHERE name = 'Pokročilý'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'), 1, 'CS_DESTINATION здесь CS_SOURCE садиться в машину.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToReq - RU, Adv');
--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToReq - RU, Adv';


INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'MountToStartRes - CZ, Beg', 
  (SELECT id FROM ew.language WHERE code = 'cs'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'), 2, 'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE zahájili jsme nasednutí.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToStartRes - CZ, Beg');
--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToStartRes - CZ, Beg';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'MountToStartRes - CZ, Adv', 
  (SELECT id FROM ew.language WHERE code = 'cs'), 
  (SELECT id FROM wasp.category WHERE name = 'Pokročilý'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'), 2, 'CS_DESTINATION zde CS_SOURCE zahájili jsme nasednutí.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToStartRes - CZ, Adv');
--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToStartRes - CZ, Adv';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'MountToStartRes - EN, Beg', 
  (SELECT id FROM ew.language WHERE code = 'en'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'), 2, 'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE We started mount.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToStartRes - EN, Beg');
--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToStartRes - EN, Beg';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'MountToStartRes - EN, Adv', 
  (SELECT id FROM ew.language WHERE code = 'en'), 
  (SELECT id FROM wasp.category WHERE name = 'Pokročilý'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'), 2, 'CS_DESTINATION from CS_SOURCE We started mount.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToStartRes - EN, Adv');
--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToStartRes - EN, Adv';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'MountToStartRes - RU, Beg', 
  (SELECT id FROM ew.language WHERE code = 'ru'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'), 2, 'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE мы начали отжиг.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToStartRes - RU, Beg');
--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToStartRes - RU, Beg';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'MountToStartRes - RU, Adv', 
  (SELECT id FROM ew.language WHERE code = 'ru'), 
  (SELECT id FROM wasp.category WHERE name = 'Pokročilý'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'), 2, 'CS_DESTINATION здесь CS_SOURCE мы начали отжиг.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToStartRes - RU, Adv');
--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToStartRes - RU, Adv';




INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'MountToEndRes - CZ, Beg', 
  (SELECT id FROM ew.language WHERE code = 'ru'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'), 3, 'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE nasedli jsme.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToEndRes - CZ, Beg');
--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToStartRes - CZ, Beg';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'MountToEndRes - CZ, Adv', 
  (SELECT id FROM ew.language WHERE code = 'ru'), 
  (SELECT id FROM wasp.category WHERE name = 'Pokročilý'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'), 3, 'CS_DESTINATION zde CS_SOURCE nasedli jsme.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToEndRes - CZ, Adv');
--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToEndRes - CZ, Adv';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'MountToEndRes - EN, Beg', 
  (SELECT id FROM ew.language WHERE code = 'en'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'), 3, 'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE We mounted.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToEndRes - EN, Beg');
--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToStartRes - EN, Beg';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'MountToEndRes - EN, Adv', 
  (SELECT id FROM ew.language WHERE code = 'en'), 
  (SELECT id FROM wasp.category WHERE name = 'Pokročilý'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'), 3, 'CS_DESTINATION from CS_SOURCE We mounted.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToEndRes - EN, Adv');
--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToEndRes - EN, Adv';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'MountToEndRes - RU, Beg', 
  (SELECT id FROM ew.language WHERE code = 'ru'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'), 3, 'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE мы попали в транспортные средства.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToEndRes - RU, Beg');
--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToStartRes - RU, Beg';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'MountToEndRes - RU, Adv', 
  (SELECT id FROM ew.language WHERE code = 'ru'), 
  (SELECT id FROM wasp.category WHERE name = 'Pokročilý'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'), 3, 'CS_DESTINATION здесь CS_SOURCE мы попали в транспортные средства.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToEndRes - RU, Adv');
--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToEndRes - RU, Adv';



INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'DismountFromReq - CZ, Beg', 
  (SELECT id FROM ew.language WHERE code = 'cs'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'), 1, 'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE sesedněte.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromReq - CZ, Beg');
--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromReq - CZ, Beg';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'DismountFromReq - CZ, Adv', 
  (SELECT id FROM ew.language WHERE code = 'cs'), 
  (SELECT id FROM wasp.category WHERE name = 'Pokročilý'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'), 1, 'CS_DESTINATION zde CS_SOURCE sesedněte.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromReq - CZ, Adv');
--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromReq - CZ, Adv';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'DismountFromReq - EN, Beg', 
  (SELECT id FROM ew.language WHERE code = 'en'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'), 1, 'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE Dismount from the vehicle.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromReq - EN, Beg');
--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromReq - EN, Beg';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'DismountFromReq - EN, Adv', 
  (SELECT id FROM ew.language WHERE code = 'en'), 
  (SELECT id FROM wasp.category WHERE name = 'Pokročilý'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'), 1, 'CS_DESTINATION from CS_SOURCE Dismount from the vehicle.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromReq - EN, Adv');
--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromReq - EN, Adv';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'DismountFromReq - RU, Beg', 
  (SELECT id FROM ew.language WHERE code = 'ru'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'), 1, 'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE снести с автомобиля.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromReq - RU, Beg');
--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromReq - RU, Beg';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'DismountFromReq - RU, Adv', 
  (SELECT id FROM ew.language WHERE code = 'ru'), 
  (SELECT id FROM wasp.category WHERE name = 'Pokročilý'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'), 1, 'CS_DESTINATION здесь CS_SOURCE снести с автомобиля.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromReq - RU, Adv');
--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromReq - RU, Adv';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'Over - CZ', 
  (SELECT id FROM ew.language WHERE code = 'cs'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'ACK'), 1, 'Příjem.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'Over - CZ');
--rollback DELETE FROM wasp.report WHERE name LIKE 'Over - CZ';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'Over - EN', 
  (SELECT id FROM ew.language WHERE code = 'en'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'ACK'), 1, 'Over.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'Over - EN');
--rollback DELETE FROM wasp.report WHERE name LIKE 'Over - EN';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'Over - RU', 
  (SELECT id FROM ew.language WHERE code = 'ru'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'ACK'), 1, 'прием.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'Over - RU');
--rollback DELETE FROM wasp.report WHERE name LIKE 'Over - RU';


INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'End - CZ', 
  (SELECT id FROM ew.language WHERE code = 'cs'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'END'), 1, 'Konec.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'End - CZ');
--rollback DELETE FROM wasp.report WHERE name LIKE 'End - CZ';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'End - EN', 
  (SELECT id FROM ew.language WHERE code = 'en'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'END'), 1, 'Out.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'End - EN');
--rollback DELETE FROM wasp.report WHERE name LIKE 'End - EN';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'End - RU', 
  (SELECT id FROM ew.language WHERE code = 'ru'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  (SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'END'), 1, 'конец.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'End - RU');
--rollback DELETE FROM wasp.report WHERE name LIKE 'End - RU';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'Roger - CZ', 
  (SELECT id FROM ew.language WHERE code = 'cs'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  NULL, 1, 'Rozumím.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'Roger - CZ');
--rollback DELETE FROM wasp.report WHERE name LIKE 'Roger - CZ';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'Roger - EN', 
  (SELECT id FROM ew.language WHERE code = 'en'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  NULL, 1, 'Roger.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'Roger - EN');
--rollback DELETE FROM wasp.report WHERE name LIKE 'Roger - EN';

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, wasp_taskphase, sentence, deleted)
  SELECT 'Roger - RU', 
  (SELECT id FROM ew.language WHERE code = 'ru'), 
  (SELECT id FROM wasp.category WHERE name = 'Začátečník'), 
  NULL, 1, 'понимаю.', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'Roger - RU');
--rollback DELETE FROM wasp.report WHERE name LIKE 'Roger - RU';
