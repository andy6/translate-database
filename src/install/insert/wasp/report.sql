--liquibase formatted sql
--changeset Andy:1.0.4.1 (splitStatements:false endDelimiter:;) dbms:postgresql
--comment Adding data to table wasp.report.


INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'HitchUpStartRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení připojování vozidla ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení připojování vozidla '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE provádím připojení.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'HitchUpStartRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'HitchUpStartRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení připojování vozidla ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'HitchUpStartRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení připojování vozidla ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení připojování vozidla '))),
		'CS_DESTINATION zde CS_SOURCE provádím připojení.
',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'HitchUpStartRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'HitchUpStartRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení připojování vozidla ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'HitchUpStartRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení připojování vozidla ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení připojování vozidla '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE connect vehicles.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'HitchUpStartRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'HitchUpStartRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení připojování vozidla ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'HitchUpStartRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení připojování vozidla ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení připojování vozidla '))),
		'CS_DESTINATION from CS_SOURCE connect vehicles.
',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'HitchUpStartRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'HitchUpStartRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení připojování vozidla ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'HitchUpStartRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení připojování vozidla ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení připojování vozidla '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Я делаю соединение.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'HitchUpStartRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'HitchUpStartRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení připojování vozidla ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'HitchUpStartRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení připojování vozidla ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení připojování vozidla '))),
		'CS_DESTINATION здесь CS_SOURCE Я делаю соединение.
.
',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'HitchUpStartRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'HitchUpStartRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení připojování vozidla ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'HitchUpEndRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení připojení vozidla ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení připojení vozidla '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE provedl jsem připojení.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'HitchUpEndRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'HitchUpEndRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení připojení vozidla ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'HitchUpEndRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení připojení vozidla ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení připojení vozidla '))),
		'CS_DESTINATION zde CS_SOURCE provedl jsem připojení.
',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'HitchUpEndRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'HitchUpEndRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení připojení vozidla ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'HitchUpEndRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení připojení vozidla ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení připojení vozidla '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE I made a connection.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'HitchUpEndRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'HitchUpEndRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení připojení vozidla ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'HitchUpEndRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení připojení vozidla ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení připojení vozidla '))),
		'CS_DESTINATION from CS_SOURCE I made a connection.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'HitchUpEndRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'HitchUpEndRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení připojení vozidla ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'HitchUpEndRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení připojení vozidla ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení připojení vozidla '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Я сделал соединение.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'HitchUpEndRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'HitchUpEndRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení připojení vozidla ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'HitchUpEndRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení připojení vozidla ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení připojení vozidla '))),
		'CS_DESTINATION здесь CS_SOURCE Я сделал соединение.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'HitchUpEndRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'HitchUpEndRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení připojení vozidla ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'UnHitchStartRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení odpojování vozidla ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení odpojování vozidla '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE provádím odpojení.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UnHitchStartRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'UnHitchStartRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení odpojování vozidla ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'UnHitchStartRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení odpojování vozidla ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení odpojování vozidla '))),
		'CS_DESTINATION zde CS_SOURCE provádím odpojení.
',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UnHitchStartRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'UnHitchStartRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení odpojování vozidla ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'UnHitchStartRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení odpojování vozidla ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení odpojování vozidla '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE I''m disconnecting.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UnHitchStartRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'UnHitchStartRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení odpojování vozidla ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'UnHitchStartRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení odpojování vozidla ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení odpojování vozidla '))),
		'CS_DESTINATION from CS_SOURCE I''m disconnecting.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UnHitchStartRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'UnHitchStartRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení odpojování vozidla ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'UnHitchStartRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení odpojování vozidla ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení odpojování vozidla '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Я отсоединяю.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UnHitchStartRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'UnHitchStartRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení odpojování vozidla ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'UnHitchStartRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení odpojování vozidla ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení odpojování vozidla '))),
		'CS_DESTINATION здесь CS_SOURCE Я отсоединяю.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UnHitchStartRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'UnHitchStartRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení odpojování vozidla ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'UnHitchEndRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení odpojování vozidla ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení odpojování vozidla '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE provedl jsem odpojení.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UnHitchEndRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'UnHitchEndRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení odpojování vozidla ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'UnHitchEndRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení odpojování vozidla ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení odpojování vozidla '))),
		'CS_DESTINATION zde CS_SOURCE provedl jsem odpojení.
',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UnHitchEndRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'UnHitchEndRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení odpojování vozidla ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'UnHitchEndRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení odpojování vozidla ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení odpojování vozidla '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE I disconnected.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UnHitchEndRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'UnHitchEndRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení odpojování vozidla ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'UnHitchEndRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení odpojování vozidla ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení odpojování vozidla '))),
		'CS_DESTINATION from CS_SOURCE I disconnected.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UnHitchEndRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'UnHitchEndRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení odpojování vozidla ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'UnHitchEndRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení odpojování vozidla ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení odpojování vozidla '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Я отключен.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UnHitchEndRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'UnHitchEndRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení odpojování vozidla ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'UnHitchEndRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení odpojování vozidla ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení odpojování vozidla '))),
		'CS_DESTINATION здесь CS_SOURCE Я отключен.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UnHitchEndRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'UnHitchEndRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení odpojování vozidla ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MountToReq - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k nasednutí ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k nasednutí '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE nasedněte.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToReq - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToReq - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k nasednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MountToReq - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k nasednutí ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k nasednutí '))),
		'CS_DESTINATION zde CS_SOURCE nasedněte.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToReq - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToReq - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k nasednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MountToReq - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k nasednutí ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k nasednutí '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE Mount to vehicle.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToReq - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToReq - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k nasednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MountToReq - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k nasednutí ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k nasednutí '))),
		'CS_DESTINATION from CS_SOURCE Mount to vehicle.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToReq - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToReq - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k nasednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MountToReq - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k nasednutí ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k nasednutí '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE садиться в машину.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToReq - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToReq - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k nasednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MountToReq - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k nasednutí ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k nasednutí '))),
		'CS_DESTINATION здесь CS_SOURCE садиться в машину.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToReq - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToReq - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k nasednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MountToStartRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení nasednutí ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení nasednutí '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE zahájili jsme nasednutí.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToStartRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToStartRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení nasednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MountToStartRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení nasednutí ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení nasednutí '))),
		'CS_DESTINATION zde CS_SOURCE zahájili jsme nasednutí.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToStartRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToStartRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení nasednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MountToRunRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení nasednutí ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení nasednutí '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE We started mount.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToRunRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToRunRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení nasednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MountToStartRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení nasednutí ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení nasednutí '))),
		'CS_DESTINATION from CS_SOURCE We started mount.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToStartRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToStartRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení nasednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MountToStartRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení nasednutí ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení nasednutí '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE мы начали отжиг.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToStartRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToStartRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení nasednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MountToStartRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení nasednutí ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení nasednutí '))),
		'CS_DESTINATION здесь CS_SOURCE мы начали отжиг.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToStartRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToStartRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení nasednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MountToEndRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení nasednutí ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení nasednutí '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE nasedli jsme.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToEndRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToEndRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení nasednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MountToEndRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení nasednutí ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení nasednutí '))),
		'CS_DESTINATION zde CS_SOURCE nasedli jsme.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToEndRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToEndRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení nasednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MountToEndRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení nasednutí ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení nasednutí '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE We mounted.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToEndRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToEndRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení nasednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MountToEndRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení nasednutí ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení nasednutí '))),
		'CS_DESTINATION from CS_SOURCE We mounted.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToEndRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToEndRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení nasednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MountToEndRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení nasednutí ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení nasednutí '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE мы попали в транспортные средства.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToEndRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToEndRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení nasednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MountToEndRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení nasednutí ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení nasednutí '))),
		'CS_DESTINATION здесь CS_SOURCE мы попали в транспортные средства.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountToEndRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MountToEndRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení nasednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DismountFromReq - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k sesednutí ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k sesednutí '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE sesedněte.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromReq - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromReq - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DismountFromReq - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k sesednutí ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k sesednutí '))),
		'CS_DESTINATION zde CS_SOURCE sesedněte.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromReq - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromReq - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DismountFromReq - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k sesednutí ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k sesednutí '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE Dismount from the vehicle.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromReq - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromReq - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DismountFromReq - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k sesednutí ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k sesednutí '))),
		'CS_DESTINATION from CS_SOURCE Dismount from the vehicle.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromReq - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromReq - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DismountFromReq - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k sesednutí ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k sesednutí '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE снести с автомобиля.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromReq - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromReq - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DismountFromReq - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k sesednutí ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k sesednutí '))),
		'CS_DESTINATION здесь CS_SOURCE снести с автомобиля.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromReq - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromReq - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DismountFromStartRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení sesednutí ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení sesednutí '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE zahájili jsme sesedání.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromStartRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromStartRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DismountFromStartRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení sesednutí ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení sesednutí '))),
		'CS_DESTINATION zde CS_SOURCE zahájili jsme sesedání.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromStartRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromStartRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DismountFromStartRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení sesednutí ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení sesednutí '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE We started dismounting vehicles.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromStartRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromStartRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DismountFromStartRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení sesednutí ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení sesednutí '))),
		'CS_DESTINATION from CS_SOURCE We started dismounting vehicles.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromStartRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromStartRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DismountFromStartRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení sesednutí ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení sesednutí '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE мы начали демонтировать транспортные средства.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromStartRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromStartRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DismountFromStartRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení sesednutí ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení sesednutí '))),
		'CS_DESTINATION здесь CS_SOURCE мы начали демонтировать транспортные средства.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromStartRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromStartRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DismountFromEntityRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedlé jednotky o sesednutí ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedlé jednotky o sesednutí '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE sesedl jsem.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromEntityRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromEntityRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedlé jednotky o sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DismountFromEntitylRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedlé jednotky o sesednutí ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedlé jednotky o sesednutí '))),
		'CS_DESTINATION zde CS_SOURCE  sesedl jsem.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromEntitylRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromEntitylRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedlé jednotky o sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DismountFromEntityRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedlé jednotky o sesednutí ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedlé jednotky o sesednutí '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE I dismounted from the vehicles.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromEntityRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromEntityRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedlé jednotky o sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DismountFromEntityRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedlé jednotky o sesednutí ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedlé jednotky o sesednutí '))),
		'CS_DESTINATION from CS_SOURCE  I dismounted from the vehicles.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromEntityRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromEntityRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedlé jednotky o sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DismountFromEntityRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedlé jednotky o sesednutí ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedlé jednotky o sesednutí '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE мы будем спешиваться с транспортных средств.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromEntityRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromEntityRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedlé jednotky o sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DismountFromEntityRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedlé jednotky o sesednutí ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedlé jednotky o sesednutí '))),
		'CS_DESTINATION здесь CS_SOURCE мы будем спешиваться с транспортных средств.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromEntityRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromEntityRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedlé jednotky o sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DismountFromEndRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení sesednutí ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení sesednutí '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE sesednutí dokončeno.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromEndRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromEndRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DismountFromEndRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení sesednutí ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení sesednutí '))),
		'CS_DESTINATION zde CS_SOURCE sesednutí dokončeno.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromEndRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromEndRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DismountFromEndRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení sesednutí ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení sesednutí '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE We dismounted from vehicles.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromEndRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromEndRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DismountFromEndRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení sesednutí ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení sesednutí '))),
		'CS_DESTINATION from CS_SOURCE We dismounted from vehicles.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromEndRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromEndRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DismountFromEndRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení sesednutí ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení sesednutí '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE мы спешились с транспортных средств.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromEndRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromEndRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DismountFromEndRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení sesednutí ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení sesednutí '))),
		'CS_DESTINATION здесь CS_SOURCE мы спешились с транспортных средств.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DismountFromEndRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DismountFromEndRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveToReq - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE zahajte přesun.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveToReq - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveToReq - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveToReq - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu '))),
		'CS_DESTINATION zde CS_SOURCE zahajte přesun.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveToReq - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveToReq - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveToReq - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE Start moving.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveToReq - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveToReq - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveToReq - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu '))),
		'CS_DESTINATION from CS_SOURCE Start moving.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveToReq - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveToReq - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveToReq - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE начать движение.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveToReq - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveToReq - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveToReq - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu '))),
		'CS_DESTINATION здесь CS_SOURCE начать движение.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveToReq - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveToReq - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveToStartRes -CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE zahájili jsme přesun.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveToStartRes -CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveToStartRes -CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveToStartRes -CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu '))),
		'CS_DESTINATION zde CS_SOURCE zahájili jsme přesun.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveToStartRes -CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveToStartRes -CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveToStartRes -EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE We started moving.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveToStartRes -EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveToStartRes -EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveToStartRes -EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu '))),
		'CS_DESTINATION from CS_SOURCE We started moving.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveToStartRes -EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveToStartRes -EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveToStartRes -RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE мы начали двигаться.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveToStartRes -RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveToStartRes -RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveToStartRes -RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu '))),
		'CS_DESTINATION здесь CS_SOURCE мы начали двигаться.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveToStartRes -RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveToStartRes -RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveToPointRes -CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE dosáhli jsme postupového bodu SYMBOLNAME.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveToPointRes -CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveToPointRes -CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveToPointRes -CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu '))),
		'CS_DESTINATION zde CS_SOURCE dosáhli jsme postupového bodu SYMBOLNAME.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveToPointRes -CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveToPointRes -CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveToPointRes -EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE We reached the point of progress SYMBOLNAME.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveToPointRes -EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveToPointRes -EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveToPointRes -EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu '))),
		'CS_DESTINATION from CS_SOURCE We reached the point of progress SYMBOLNAME.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveToPointRes -EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveToPointRes -EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveToPointRes -RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE мы достигли точки прогресса SYMBOLNAME.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveToPointRes -RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveToPointRes -RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveToPointRes -RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu '))),
		'CS_DESTINATION здесь CS_SOURCE мы достигли точки прогресса SYMBOLNAME.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveToPointRes -RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveToPointRes -RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveToEndRes -CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE přesun dokončen.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveToEndRes -CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveToEndRes -CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveToEndRes -CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu '))),
		'CS_DESTINATION zde CS_SOURCE přesun dokončen.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveToEndRes -CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveToEndRes -CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveToEndRes -EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE Move completed.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveToEndRes -EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveToEndRes -EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveToEndRes -EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu '))),
		'CS_DESTINATION from CS_SOURCE Move completed.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveToEndRes -EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveToEndRes -EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveToEndRes -RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE перемещение завершено.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveToEndRes -RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveToEndRes -RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveToEndRes -RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu '))),
		'CS_DESTINATION здесь CS_SOURCE перемещение завершено.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveToEndRes -RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveToEndRes -RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'StopReq - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname LIKE 'behavior/Movement/Stop'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zastavení' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname LIKE 'behavior/Movement/Stop')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zastavení'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE Stop.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'StopReq - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'StopReq - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zastavení');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'StopReq - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname LIKE 'behavior/Movement/Stop'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zastavení' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname LIKE 'behavior/Movement/Stop')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zastavení'))),
		'CS_DESTINATION zde CS_SOURCE Stop.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'StopReq - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'StopReq - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zastavení');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'StopReq - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname LIKE 'behavior/Movement/Stop'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zastavení' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname LIKE 'behavior/Movement/Stop')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zastavení'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE Stop.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'StopReq - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'StopReq - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zastavení');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'StopReq - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname LIKE 'behavior/Movement/Stop'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zastavení' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname LIKE 'behavior/Movement/Stop')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zastavení'))),
		'CS_DESTINATION from CS_SOURCE Stop.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'StopReq - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'StopReq - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zastavení');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'StopReq - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname LIKE 'behavior/Movement/Stop'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zastavení' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname LIKE 'behavior/Movement/Stop')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zastavení'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE остановить.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'StopReq - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'StopReq - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zastavení');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'StopReq - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname LIKE 'behavior/Movement/Stop'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zastavení' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname LIKE 'behavior/Movement/Stop')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zastavení'))),
		'CS_DESTINATION здесь CS_SOURCE остановить.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'StopReq - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'StopReq - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zastavení');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'StopEndRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname LIKE 'behavior/Movement/Stop'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení zastavení ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname LIKE 'behavior/Movement/Stop')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení zastavení '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE zastavili jsme.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'StopEndRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'StopEndRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení zastavení ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'StopEndRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname LIKE 'behavior/Movement/Stop'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení zastavení ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname LIKE 'behavior/Movement/Stop')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení zastavení '))),
		'CS_DESTINATION zde CS_SOURCE zastavili jsme.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'StopEndRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'StopEndRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení zastavení ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'StopEndRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname LIKE 'behavior/Movement/Stop'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení zastavení ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname LIKE 'behavior/Movement/Stop')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení zastavení '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE We stopped.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'StopEndRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'StopEndRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení zastavení ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'StopEndRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname LIKE 'behavior/Movement/Stop'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení zastavení ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname LIKE 'behavior/Movement/Stop')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení zastavení '))),
		'CS_DESTINATION from CS_SOURCE We stopped.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'StopEndRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'StopEndRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení zastavení ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'StopEndRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname LIKE 'behavior/Movement/Stop'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení zastavení ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname LIKE 'behavior/Movement/Stop')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení zastavení '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE мы остановились.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'StopEndRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'StopEndRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení zastavení ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'StopEndRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname LIKE 'behavior/Movement/Stop'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení zastavení ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname LIKE 'behavior/Movement/Stop')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení zastavení '))),
		'CS_DESTINATION здесь CS_SOURCE мы остановились.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'StopEndRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'StopEndRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení zastavení ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'AreaDemarcationRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'přesun k vytyčované oblasti' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'přesun k vytyčované oblasti'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE zahájil jsem přesun k oblasti vytyčování.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'AreaDemarcationRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'AreaDemarcationRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'přesun k vytyčované oblasti');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'AreaDemarcationRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'přesun k vytyčované oblasti' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'přesun k vytyčované oblasti'))),
		'CS_DESTINATION zde CS_SOURCE zahájil jsem přesun k oblasti vytyčování.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'AreaDemarcationRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'AreaDemarcationRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'přesun k vytyčované oblasti');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'AreaDemarcationRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'přesun k vytyčované oblasti' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'přesun k vytyčované oblasti'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE I started to move to the demarcation area.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'AreaDemarcationRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'AreaDemarcationRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'přesun k vytyčované oblasti');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'AreaDemarcationRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'přesun k vytyčované oblasti' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'přesun k vytyčované oblasti'))),
		'CS_DESTINATION from CS_SOURCE I started to move to the demarcation area.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'AreaDemarcationRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'AreaDemarcationRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'přesun k vytyčované oblasti');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'AreaDemarcationRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'přesun k vytyčované oblasti' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'přesun k vytyčované oblasti'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE мы начали двигаться в зону посадки.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'AreaDemarcationRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'AreaDemarcationRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'přesun k vytyčované oblasti');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'AreaDemarcationRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'přesun k vytyčované oblasti' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'přesun k vytyčované oblasti'))),
		'CS_DESTINATION здесь CS_SOURCE мы начали двигаться в зону посадки.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'AreaDemarcationRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'AreaDemarcationRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'přesun k vytyčované oblasti');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'AreaDemarcationEndRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení vytyčování' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení vytyčování'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE dokončil jsem vytyčování oblasti.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'AreaDemarcationEndRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'AreaDemarcationEndRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení vytyčování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'AreaDemarcationEndRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení vytyčování' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení vytyčování'))),
		'CS_DESTINATION zde CS_SOURCE dokončil jsem vytyčování oblasti.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'AreaDemarcationEndRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'AreaDemarcationEndRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení vytyčování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'AreaDemarcationEndRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení vytyčování' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení vytyčování'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE I finished the demarcation of area.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'AreaDemarcationEndRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'AreaDemarcationEndRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení vytyčování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'AreaDemarcationEndRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení vytyčování' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení vytyčování'))),
		'CS_DESTINATION from CS_SOURCE I finished the demarcation of area.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'AreaDemarcationEndRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'AreaDemarcationEndRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení vytyčování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'AreaDemarcationEndRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení vytyčování' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení vytyčování'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE мы закончили местоположение области.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'AreaDemarcationEndRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'AreaDemarcationEndRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení vytyčování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'AreaDemarcationEndRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení vytyčování' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení vytyčování'))),
		'CS_DESTINATION здесь CS_SOURCE мы закончили местоположение области.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'AreaDemarcationEndRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'AreaDemarcationEndRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení vytyčování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'AreaDemarcationStartRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení vytyčování oblasti' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení vytyčování oblasti'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE zahájil jsem vytyčování oblasti.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'AreaDemarcationStartRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'AreaDemarcationStartRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení vytyčování oblasti');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'AreaDemarcationStartRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení vytyčování oblasti' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení vytyčování oblasti'))),
		'CS_DESTINATION zde CS_SOURCE zahájil jsem vytyčování oblasti.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'AreaDemarcationStartRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'AreaDemarcationStartRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení vytyčování oblasti');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'AreaDemarcationStartRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení vytyčování oblasti' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení vytyčování oblasti'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE I started the demarcation of area.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'AreaDemarcationStartRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'AreaDemarcationStartRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení vytyčování oblasti');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'AreaDemarcationStartRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení vytyčování oblasti' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení vytyčování oblasti'))),
		'CS_DESTINATION from CS_SOURCE I started the demarcation of area.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'AreaDemarcationStartRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'AreaDemarcationStartRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení vytyčování oblasti');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'AreaDemarcationStartRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení vytyčování oblasti' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení vytyčování oblasti'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE мы начали местоположение области.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'AreaDemarcationStartRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'AreaDemarcationStartRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení vytyčování oblasti');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'AreaDemarcationStartRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení vytyčování oblasti' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení vytyčování oblasti'))),
		'CS_DESTINATION здесь CS_SOURCE мы начали местоположение области.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'AreaDemarcationStartRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'AreaDemarcationStartRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení vytyčování oblasti');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SetFirePermissionReq - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname LIKE 'behavior/Warfare/setFirePermission'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně povolení palby ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname LIKE 'behavior/Warfare/setFirePermission')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně povolení palby '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE CS_ENUM.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SetFirePermissionReq - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SetFirePermissionReq - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně povolení palby ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SetFirePermissionReq - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname LIKE 'behavior/Warfare/setFirePermission'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně povolení palby ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname LIKE 'behavior/Warfare/setFirePermission')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně povolení palby '))),
		'CS_DESTINATION zde CS_SOURCE  CS_ENUM.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SetFirePermissionReq - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SetFirePermissionReq - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně povolení palby ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SetFirePermissionReq - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname LIKE 'behavior/Warfare/setFirePermission'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně povolení palby ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname LIKE 'behavior/Warfare/setFirePermission')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně povolení palby '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE  CS_ENUM.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SetFirePermissionReq - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SetFirePermissionReq - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně povolení palby ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SetFirePermissionReq - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname LIKE 'behavior/Warfare/setFirePermission'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně povolení palby ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname LIKE 'behavior/Warfare/setFirePermission')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně povolení palby '))),
		'CS_DESTINATION from CS_SOURCE  CS_ENUM.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SetFirePermissionReq - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SetFirePermissionReq - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně povolení palby ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SetFirePermissionReq - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname LIKE 'behavior/Warfare/setFirePermission'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně povolení palby ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname LIKE 'behavior/Warfare/setFirePermission')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně povolení palby '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE  CS_ENUM.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SetFirePermissionReq - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SetFirePermissionReq - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně povolení palby ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SetFirePermissionReq - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname LIKE 'behavior/Warfare/setFirePermission'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně povolení palby ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname LIKE 'behavior/Warfare/setFirePermission')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně povolení palby '))),
		'CS_DESTINATION здесь CS_SOURCE  CS_ENUM.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SetFirePermissionReq - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SetFirePermissionReq - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně povolení palby ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SetFirePermissionEndRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname LIKE 'behavior/Warfare/setFirePermission'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o dokončení změny povolení palby ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname LIKE 'behavior/Warfare/setFirePermission')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o dokončení změny povolení palby '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE Změnili jsme povolení palby.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SetFirePermissionEndRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SetFirePermissionEndRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o dokončení změny povolení palby ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SetFirePermissionEndRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname LIKE 'behavior/Warfare/setFirePermission'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o dokončení změny povolení palby ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname LIKE 'behavior/Warfare/setFirePermission')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o dokončení změny povolení palby '))),
		'CS_DESTINATION zde CS_SOURCE Změnili jsme povolení palby.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SetFirePermissionEndRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SetFirePermissionEndRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o dokončení změny povolení palby ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SetFirePermissionEndRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname LIKE 'behavior/Warfare/setFirePermission'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o dokončení změny povolení palby ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname LIKE 'behavior/Warfare/setFirePermission')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o dokončení změny povolení palby '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE We changed the firing permission.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SetFirePermissionEndRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SetFirePermissionEndRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o dokončení změny povolení palby ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SetFirePermissionEndRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname LIKE 'behavior/Warfare/setFirePermission'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o dokončení změny povolení palby ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname LIKE 'behavior/Warfare/setFirePermission')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o dokončení změny povolení palby '))),
		'CS_DESTINATION from CS_SOURCE We changed the firing permission.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SetFirePermissionEndRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SetFirePermissionEndRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o dokončení změny povolení palby ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SetFirePermissionEndRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname LIKE 'behavior/Warfare/setFirePermission'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o dokončení změny povolení palby ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname LIKE 'behavior/Warfare/setFirePermission')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o dokončení změny povolení palby '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE мы изменили разрешение на стрельбу.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SetFirePermissionEndRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SetFirePermissionEndRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o dokončení změny povolení palby ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SetFirePermissionEndRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname LIKE 'behavior/Warfare/setFirePermission'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o dokončení změny povolení palby ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname LIKE 'behavior/Warfare/setFirePermission')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o dokončení změny povolení palby '))),
		'CS_DESTINATION здесь CS_SOURCE мы изменили разрешение на стрельбу.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SetFirePermissionEndRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SetFirePermissionEndRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o dokončení změny povolení palby ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ShotOnPointStartRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnPoint'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na bod ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnPoint')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na bod '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE Střelba na bod zahájena.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ShotOnPointStartRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ShotOnPointStartRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na bod ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ShotOnPointStartRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnPoint'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na bod ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnPoint')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na bod '))),
		'CS_DESTINATION zde CS_SOURCE Střelba na bod zahájena.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ShotOnPointStartRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ShotOnPointStartRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na bod ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ShotOnPointStartRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnPoint'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na bod ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnPoint')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na bod '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE Point shooting started.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ShotOnPointStartRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ShotOnPointStartRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na bod ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ShotOnPointStartRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnPoint'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na bod ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnPoint')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na bod '))),
		'CS_DESTINATION from CS_SOURCE Point shooting started.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ShotOnPointStartRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ShotOnPointStartRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na bod ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ShotOnPointStartRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnPoint'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na bod ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnPoint')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na bod '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Началась стрельба по пунктам.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ShotOnPointStartRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ShotOnPointStartRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na bod ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ShotOnPointStartRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnPoint'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na bod ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnPoint')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na bod '))),
		'CS_DESTINATION здесь CS_SOURCE Началась стрельба по пунктам.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ShotOnPointStartRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ShotOnPointStartRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na bod ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ShotOnPointEndRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnPoint'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na bod ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnPoint')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na bod '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE Střelba na bod ukončena.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ShotOnPointEndRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ShotOnPointEndRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na bod ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ShotOnPointEndRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnPoint'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na bod ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnPoint')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na bod '))),
		'CS_DESTINATION zde CS_SOURCE Střelba na bod ukončena.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ShotOnPointEndRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ShotOnPointEndRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na bod ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ShotOnPointEndRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnPoint'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na bod ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnPoint')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na bod '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE Shooting to the point is finished.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ShotOnPointEndRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ShotOnPointEndRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na bod ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ShotOnPointEndRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnPoint'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na bod ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnPoint')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na bod '))),
		'CS_DESTINATION from CS_SOURCE Shooting to the point is finished.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ShotOnPointEndRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ShotOnPointEndRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na bod ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ShotOnPointEndRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnPoint'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na bod ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnPoint')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na bod '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Съемка до точки завершена.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ShotOnPointEndRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ShotOnPointEndRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na bod ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ShotOnPointEndRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnPoint'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na bod ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnPoint')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na bod '))),
		'CS_DESTINATION здесь CS_SOURCE Съемка до точки завершена.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ShotOnPointEndRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ShotOnPointEndRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na bod ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ShotOnTargetStartRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnTarget'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na cíl ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnTarget')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na cíl '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE Střelba na cíl zahájena.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ShotOnTargetStartRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ShotOnTargetStartRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na cíl ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ShotOnTargetStartRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnTarget'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na cíl ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnTarget')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na cíl '))),
		'CS_DESTINATION zde CS_SOURCE Střelba na cíl zahájena.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ShotOnTargetStartRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ShotOnTargetStartRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na cíl ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ShotOnTargetStartRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnTarget'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na cíl ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnTarget')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na cíl '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE Goal shooting started.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ShotOnTargetStartRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ShotOnTargetStartRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na cíl ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ShotOnTargetStartRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnTarget'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na cíl ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnTarget')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na cíl '))),
		'CS_DESTINATION from CS_SOURCE Goal shooting started.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ShotOnTargetStartRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ShotOnTargetStartRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na cíl ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ShotOnTargetStartRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnTarget'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na cíl ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnTarget')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na cíl '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Началась стрельба по цели.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ShotOnTargetStartRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ShotOnTargetStartRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na cíl ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ShotOnTargetStartRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnTarget'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na cíl ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnTarget')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na cíl '))),
		'CS_DESTINATION здесь CS_SOURCE Началась стрельба по цели.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ShotOnTargetStartRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ShotOnTargetStartRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení výstřelu na cíl ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ShotOnTargetEndRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnTarget'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na cíl ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnTarget')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na cíl '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE Střelba na cíl ukončena.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ShotOnTargetEndRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ShotOnTargetEndRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na cíl ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ShotOnTargetEndRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnTarget'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na cíl ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnTarget')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na cíl '))),
		'CS_DESTINATION zde CS_SOURCE Střelba na cíl ukončena.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ShotOnTargetEndRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ShotOnTargetEndRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na cíl ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ShotOnTargetEndRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnTarget'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na cíl ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnTarget')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na cíl '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE Goal shooting finished.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ShotOnTargetEndRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ShotOnTargetEndRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na cíl ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ShotOnTargetEndRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnTarget'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na cíl ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnTarget')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na cíl '))),
		'CS_DESTINATION from CS_SOURCE Goal shooting finished.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ShotOnTargetEndRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ShotOnTargetEndRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na cíl ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ShotOnTargetEndRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnTarget'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na cíl ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnTarget')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na cíl '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Стрельба цели закончилась.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ShotOnTargetEndRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ShotOnTargetEndRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na cíl ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ShotOnTargetEndRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnTarget'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na cíl ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnTarget')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na cíl '))),
		'CS_DESTINATION здесь CS_SOURCE Стрельба цели закончилась.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ShotOnTargetEndRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ShotOnTargetEndRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení výstřelu na cíl ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectFireAttackStartRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu na místo útoku ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu na místo útoku '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE Zahájen přesun do místa útoku.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectFireAttackStartRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectFireAttackStartRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu na místo útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectFireAttackStartRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu na místo útoku ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu na místo útoku '))),
		'CS_DESTINATION zde CS_SOURCE Zahájen přesun do místa útoku.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectFireAttackStartRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectFireAttackStartRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu na místo útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectFireAttackStartRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu na místo útoku ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu na místo útoku '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE Start moving to the attack site.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectFireAttackStartRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectFireAttackStartRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu na místo útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectFireAttackStartRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu na místo útoku ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu na místo útoku '))),
		'CS_DESTINATION from CS_SOURCE Start moving to the attack site.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectFireAttackStartRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectFireAttackStartRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu na místo útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectFireAttackStartRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu na místo útoku ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu na místo útoku '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Начало перехода на сайт атаки.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectFireAttackStartRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectFireAttackStartRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu na místo útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectFireAttackStartRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu na místo útoku ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu na místo útoku '))),
		'CS_DESTINATION здесь CS_SOURCE Начало перехода на сайт атаки.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectFireAttackStartRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectFireAttackStartRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu na místo útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectFireAttackEndRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení útoku ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení útoku '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE Útok ukončen.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectFireAttackEndRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectFireAttackEndRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectFireAttackEndRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení útoku ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení útoku '))),
		'CS_DESTINATION zde CS_SOURCE Útok ukončen.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectFireAttackEndRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectFireAttackEndRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectFireAttackEndRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení útoku ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení útoku '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE Attack terminated.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectFireAttackEndRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectFireAttackEndRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectFireAttackEndRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení útoku ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení útoku '))),
		'CS_DESTINATION from CS_SOURCE Attack terminated.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectFireAttackEndRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectFireAttackEndRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectFireAttackEndRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení útoku ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení útoku '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Атака завершена.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectFireAttackEndRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectFireAttackEndRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectFireAttackEndRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení útoku ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení útoku '))),
		'CS_DESTINATION здесь CS_SOURCE Атака завершена.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectFireAttackEndRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectFireAttackEndRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dokončení útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectFireAttackPointAchievedRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dosažení místa útoku a zahájení útoku ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dosažení místa útoku a zahájení útoku '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE Místo útoku dosaženo, zahájili jsme útok.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectFireAttackPointAchievedRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectFireAttackPointAchievedRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dosažení místa útoku a zahájení útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectFireAttackPointAchievedRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dosažení místa útoku a zahájení útoku ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dosažení místa útoku a zahájení útoku '))),
		'CS_DESTINATION zde CS_SOURCE Místo útoku dosaženo, zahájili jsme útok.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectFireAttackPointAchievedRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectFireAttackPointAchievedRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dosažení místa útoku a zahájení útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectFireAttackPointAchievedRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dosažení místa útoku a zahájení útoku ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dosažení místa útoku a zahájení útoku '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE The attack site was reached, we launched an attack.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectFireAttackPointAchievedRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectFireAttackPointAchievedRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dosažení místa útoku a zahájení útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectFireAttackPointAchievedRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dosažení místa útoku a zahájení útoku ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dosažení místa útoku a zahájení útoku '))),
		'CS_DESTINATION from CS_SOURCE The attack site was reached, we launched an attack.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectFireAttackPointAchievedRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectFireAttackPointAchievedRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dosažení místa útoku a zahájení útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectFireAttackPointAchievedRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dosažení místa útoku a zahájení útoku ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dosažení místa útoku a zahájení útoku '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Сайт атаки был достигнут, мы начали атаку.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectFireAttackPointAchievedRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectFireAttackPointAchievedRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dosažení místa útoku a zahájení útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectFireAttackPointAchievedRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dosažení místa útoku a zahájení útoku ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dosažení místa útoku a zahájení útoku '))),
		'CS_DESTINATION здесь CS_SOURCE Сайт атаки был достигнут, мы начали атаку.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectFireAttackPointAchievedRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectFireAttackPointAchievedRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o dosažení místa útoku a zahájení útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectFireAttackStartRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení útoku ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení útoku '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE Útok zahájen.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectFireAttackStartRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectFireAttackStartRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectFireAttackStartRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení útoku ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení útoku '))),
		'CS_DESTINATION zde CS_SOURCE Útok zahájen.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectFireAttackStartRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectFireAttackStartRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectFireAttackStartRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení útoku ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení útoku '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE Attack started.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectFireAttackStartRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectFireAttackStartRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectFireAttackStartRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení útoku ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení útoku '))),
		'CS_DESTINATION from CS_SOURCE Attack started.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectFireAttackStartRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectFireAttackStartRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectFireAttackStartRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení útoku ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení útoku '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Началась атака.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectFireAttackStartRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectFireAttackStartRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectFireAttackStartRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení útoku ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení útoku '))),
		'CS_DESTINATION здесь CS_SOURCE Началась атака.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectFireAttackStartRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectFireAttackStartRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectFireAttackEndRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o normálním ukončení útoku ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o normálním ukončení útoku '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE Útok ukončen.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectFireAttackEndRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectFireAttackEndRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o normálním ukončení útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectFireAttackEndRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o normálním ukončení útoku ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o normálním ukončení útoku '))),
		'CS_DESTINATION zde CS_SOURCE Útok ukončen.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectFireAttackEndRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectFireAttackEndRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o normálním ukončení útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectFireAttackEndRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o normálním ukončení útoku ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o normálním ukončení útoku '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE Attack terminated.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectFireAttackEndRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectFireAttackEndRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o normálním ukončení útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectFireAttackEndRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o normálním ukončení útoku ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o normálním ukončení útoku '))),
		'CS_DESTINATION from CS_SOURCE Attack terminated.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectFireAttackEndRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectFireAttackEndRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o normálním ukončení útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectFireAttackEndRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o normálním ukončení útoku ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o normálním ukončení útoku '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Атака завершена.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectFireAttackEndRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectFireAttackEndRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o normálním ukončení útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectFireAttackEndRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o normálním ukončení útoku ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o normálním ukončení útoku '))),
		'CS_DESTINATION здесь CS_SOURCE Атака завершена.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectFireAttackEndRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectFireAttackEndRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o normálním ukončení útoku ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectFireAttackEndMunitionRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o ukončení útoku z důvodu nedostatku munice ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o ukončení útoku z důvodu nedostatku munice '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE Útok ukončen z důvodu nedostatku munice.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectFireAttackEndMunitionRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectFireAttackEndMunitionRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o ukončení útoku z důvodu nedostatku munice ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectFireAttackEndMunitionRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o ukončení útoku z důvodu nedostatku munice ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o ukončení útoku z důvodu nedostatku munice '))),
		'CS_DESTINATION zde CS_SOURCE Útok ukončen z důvodu nedostatku munice.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectFireAttackEndMunitionRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectFireAttackEndMunitionRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o ukončení útoku z důvodu nedostatku munice ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectFireAttackEndMunitionRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o ukončení útoku z důvodu nedostatku munice ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o ukončení útoku z důvodu nedostatku munice '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE Attack is terminated due to lack of ammunition.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectFireAttackEndMunitionRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectFireAttackEndMunitionRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o ukončení útoku z důvodu nedostatku munice ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectFireAttackEndMunitionRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o ukončení útoku z důvodu nedostatku munice ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o ukončení útoku z důvodu nedostatku munice '))),
		'CS_DESTINATION from CS_SOURCE Attack is terminated due to lack of ammunition.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectFireAttackEndMunitionRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectFireAttackEndMunitionRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o ukončení útoku z důvodu nedostatku munice ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectFireAttackEndMunitionRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o ukončení útoku z důvodu nedostatku munice ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o ukončení útoku z důvodu nedostatku munice '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Атака прекращается из-за отсутствия боеприпасов.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectFireAttackEndMunitionRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectFireAttackEndMunitionRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o ukončení útoku z důvodu nedostatku munice ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectFireAttackEndMunitionRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o ukončení útoku z důvodu nedostatku munice ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o ukončení útoku z důvodu nedostatku munice '))),
		'CS_DESTINATION здесь CS_SOURCE Атака прекращается из-за отсутствия боеприпасов.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectFireAttackEndMunitionRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectFireAttackEndMunitionRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o ukončení útoku z důvodu nedostatku munice ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SpottedEnemy - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'EnemySpotted' AND wasp_taskname LIKE 'EnemySpottedEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'EnemySpotted' AND wasp_taskname LIKE 'EnemySpottedEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE zpozorován nepřítel CS_GENERAL_STRING.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SpottedEnemy - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SpottedEnemy - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SpottedEnemy - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'EnemySpotted' AND wasp_taskname LIKE 'EnemySpottedEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'EnemySpotted' AND wasp_taskname LIKE 'EnemySpottedEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION zde CS_SOURCE zpozorován nepřítel CS_GENERAL_STRING.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SpottedEnemy - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SpottedEnemy - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SpottedEnemy - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'EnemySpotted' AND wasp_taskname LIKE 'EnemySpottedEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'EnemySpotted' AND wasp_taskname LIKE 'EnemySpottedEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE spotted enemy CS_GENERAL_STRING.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SpottedEnemy - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SpottedEnemy - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SpottedEnemy - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'EnemySpotted' AND wasp_taskname LIKE 'EnemySpottedEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'EnemySpotted' AND wasp_taskname LIKE 'EnemySpottedEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION from CS_SOURCE spotted enemy CS_GENERAL_STRING.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SpottedEnemy - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SpottedEnemy - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SpottedEnemy - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'EnemySpotted' AND wasp_taskname LIKE 'EnemySpottedEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'EnemySpotted' AND wasp_taskname LIKE 'EnemySpottedEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE был замечен враг CS_GENERAL_STRING.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SpottedEnemy - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SpottedEnemy - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SpottedEnemy - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'EnemySpotted' AND wasp_taskname LIKE 'EnemySpottedEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'EnemySpotted' AND wasp_taskname LIKE 'EnemySpottedEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION здесь CS_SOURCE был замечен враг CS_GENERAL_STRING.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SpottedEnemy - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SpottedEnemy - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SpottedStranger - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'StrangerSpotted' AND wasp_taskname LIKE 'StrangerSpottedEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'StrangerSpotted' AND wasp_taskname LIKE 'StrangerSpottedEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE zpozorována neznámá entita CS_GENERAL_STRING.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SpottedStranger - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SpottedStranger - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SpottedStranger - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'StrangerSpotted' AND wasp_taskname LIKE 'StrangerSpottedEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'StrangerSpotted' AND wasp_taskname LIKE 'StrangerSpottedEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION zde CS_SOURCE zpozorována neznámá entita CS_GENERAL_STRING.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SpottedStranger - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SpottedStranger - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SpottedStranger - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'StrangerSpotted' AND wasp_taskname LIKE 'StrangerSpottedEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'StrangerSpotted' AND wasp_taskname LIKE 'StrangerSpottedEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE spotted unknown entity CS_GENERAL_STRING.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SpottedStranger - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SpottedStranger - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SpottedStranger - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'StrangerSpotted' AND wasp_taskname LIKE 'StrangerSpottedEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'StrangerSpotted' AND wasp_taskname LIKE 'StrangerSpottedEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION from CS_SOURCE spotted unknown entity CS_GENERAL_STRING.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SpottedStranger - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SpottedStranger - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SpottedStranger - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'StrangerSpotted' AND wasp_taskname LIKE 'StrangerSpottedEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'StrangerSpotted' AND wasp_taskname LIKE 'StrangerSpottedEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE замечено неизвестное CS_GENERAL_STRING.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SpottedStranger - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SpottedStranger - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SpottedStranger - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'StrangerSpotted' AND wasp_taskname LIKE 'StrangerSpottedEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'StrangerSpotted' AND wasp_taskname LIKE 'StrangerSpottedEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION здесь CS_SOURCE замечено неизвестное CS_GENERAL_STRING.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SpottedStranger - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SpottedStranger - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'EnemyKilled - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'EnemyKilled' AND wasp_taskname LIKE 'EnemyKilledEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'EnemyKilled' AND wasp_taskname LIKE 'EnemyKilledEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE nepřítel CS_ENTITY_TYPE zničen.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'EnemyKilled - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'EnemyKilled - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'EnemyKilled - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'EnemyKilled' AND wasp_taskname LIKE 'EnemyKilledEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'EnemyKilled' AND wasp_taskname LIKE 'EnemyKilledEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION zde CS_SOURCE nepřítel CS_ENTITY_TYPE zničen.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'EnemyKilled - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'EnemyKilled - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'EnemyKilled - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'EnemyKilled' AND wasp_taskname LIKE 'EnemyKilledEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'EnemyKilled' AND wasp_taskname LIKE 'EnemyKilledEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE enemy CS_ENTITY_TYPE was killed.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'EnemyKilled - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'EnemyKilled - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'EnemyKilled - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'EnemyKilled' AND wasp_taskname LIKE 'EnemyKilledEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'EnemyKilled' AND wasp_taskname LIKE 'EnemyKilledEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION from CS_SOURCE enemy CS_ENTITY_TYPE was killed.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'EnemyKilled - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'EnemyKilled - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'EnemyKilled - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'EnemyKilled' AND wasp_taskname LIKE 'EnemyKilledEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'EnemyKilled' AND wasp_taskname LIKE 'EnemyKilledEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE враг CS_ENTITY_TYPE уничтожен.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'EnemyKilled - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'EnemyKilled - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'EnemyKilled - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'EnemyKilled' AND wasp_taskname LIKE 'EnemyKilledEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'EnemyKilled' AND wasp_taskname LIKE 'EnemyKilledEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION здесь CS_SOURCE враг CS_ENTITY_TYPE уничтожен.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'EnemyKilled - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'EnemyKilled - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FriendKilled - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FriendKilled' AND wasp_taskname LIKE 'FriendKilledEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FriendKilled' AND wasp_taskname LIKE 'FriendKilledEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE přítel CS_ENTITY_TYPE zničen.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FriendKilled - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FriendKilled - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FriendKilled - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FriendKilled' AND wasp_taskname LIKE 'FriendKilledEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FriendKilled' AND wasp_taskname LIKE 'FriendKilledEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION zde CS_SOURCE přítel CS_ENTITY_TYPE zničen.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FriendKilled - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FriendKilled - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FriendKilled - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FriendKilled' AND wasp_taskname LIKE 'FriendKilledEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FriendKilled' AND wasp_taskname LIKE 'FriendKilledEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE friend CS_ENTITY_TYPE was killed.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FriendKilled - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FriendKilled - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FriendKilled - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FriendKilled' AND wasp_taskname LIKE 'FriendKilledEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FriendKilled' AND wasp_taskname LIKE 'FriendKilledEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION from CS_SOURCE friend CS_ENTITY_TYPE was killed.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FriendKilled - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FriendKilled - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FriendKilled - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FriendKilled' AND wasp_taskname LIKE 'FriendKilledEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FriendKilled' AND wasp_taskname LIKE 'FriendKilledEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE друг CS_ENTITY_TYPE уничтожен.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FriendKilled - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FriendKilled - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FriendKilled - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FriendKilled' AND wasp_taskname LIKE 'FriendKilledEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FriendKilled' AND wasp_taskname LIKE 'FriendKilledEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION здесь CS_SOURCE друг CS_ENTITY_TYPE уничтожен.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FriendKilled - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FriendKilled - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MunitionLevel - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Munition' AND wasp_taskname LIKE 'MunitionEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Munition' AND wasp_taskname LIKE 'MunitionEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE dochází munice.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MunitionLevel - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MunitionLevel - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MunitionLevel - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Munition' AND wasp_taskname LIKE 'MunitionEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Munition' AND wasp_taskname LIKE 'MunitionEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION zde CS_SOURCE dochází munice.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MunitionLevel - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MunitionLevel - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MunitionLevel - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Munition' AND wasp_taskname LIKE 'MunitionEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Munition' AND wasp_taskname LIKE 'MunitionEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE low of munition.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MunitionLevel - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MunitionLevel - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MunitionLevel - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Munition' AND wasp_taskname LIKE 'MunitionEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Munition' AND wasp_taskname LIKE 'MunitionEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION from CS_SOURCE low of munition.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MunitionLevel - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MunitionLevel - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MunitionLevel - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Munition' AND wasp_taskname LIKE 'MunitionEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Munition' AND wasp_taskname LIKE 'MunitionEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE происходить боеприпасов.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MunitionLevel - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MunitionLevel - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MunitionLevel - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Munition' AND wasp_taskname LIKE 'MunitionEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Munition' AND wasp_taskname LIKE 'MunitionEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION здесь CS_SOURCE происходить боеприпасов.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MunitionLevel - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MunitionLevel - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FuelLevel - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Fuel' AND wasp_taskname LIKE 'FuelEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Fuel' AND wasp_taskname LIKE 'FuelEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE dochází palivo.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FuelLevel - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FuelLevel - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FuelLevel - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Fuel' AND wasp_taskname LIKE 'FuelEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Fuel' AND wasp_taskname LIKE 'FuelEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION zde CS_SOURCE dochází palivo.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FuelLevel - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FuelLevel - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FuelLevel - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Fuel' AND wasp_taskname LIKE 'FuelEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Fuel' AND wasp_taskname LIKE 'FuelEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE low of fuel.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FuelLevel - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FuelLevel - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FuelLevel - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Fuel' AND wasp_taskname LIKE 'FuelEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Fuel' AND wasp_taskname LIKE 'FuelEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION from CS_SOURCE low of fuel.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FuelLevel - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FuelLevel - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FuelLevel - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Fuel' AND wasp_taskname LIKE 'FuelEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Fuel' AND wasp_taskname LIKE 'FuelEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE происходить топливо.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FuelLevel - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FuelLevel - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FuelLevel - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Fuel' AND wasp_taskname LIKE 'FuelEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Fuel' AND wasp_taskname LIKE 'FuelEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION здесь CS_SOURCE происходить топливо.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FuelLevel - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FuelLevel - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectDetonation - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectDetonation' AND wasp_taskname LIKE 'DirectDetonationEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectDetonation' AND wasp_taskname LIKE 'DirectDetonationEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE jsem pod palbou.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectDetonation - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectDetonation - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectDetonation - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectDetonation' AND wasp_taskname LIKE 'DirectDetonationEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectDetonation' AND wasp_taskname LIKE 'DirectDetonationEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION zde CS_SOURCE jsem pod palbou.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectDetonation - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectDetonation - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectDetonation - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectDetonation' AND wasp_taskname LIKE 'DirectDetonationEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectDetonation' AND wasp_taskname LIKE 'DirectDetonationEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE I am under fire.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectDetonation - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectDetonation - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectDetonation - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectDetonation' AND wasp_taskname LIKE 'DirectDetonationEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectDetonation' AND wasp_taskname LIKE 'DirectDetonationEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION from CS_SOURCE I am under fire.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectDetonation - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectDetonation - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectDetonation - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectDetonation' AND wasp_taskname LIKE 'DirectDetonationEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectDetonation' AND wasp_taskname LIKE 'DirectDetonationEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Я под огнем.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectDetonation - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectDetonation - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectDetonation - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectDetonation' AND wasp_taskname LIKE 'DirectDetonationEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectDetonation' AND wasp_taskname LIKE 'DirectDetonationEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION здесь CS_SOURCE Я под огнем.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectDetonation - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectDetonation - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectDetonation - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectDetonation' AND wasp_taskname LIKE 'IndirectDetonationEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectDetonation' AND wasp_taskname LIKE 'IndirectDetonationEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE nepřímá střelba.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectDetonation - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectDetonation - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectDetonation - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectDetonation' AND wasp_taskname LIKE 'IndirectDetonationEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectDetonation' AND wasp_taskname LIKE 'IndirectDetonationEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION zde CS_SOURCE nepřímá střelba.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectDetonation - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectDetonation - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectDetonation - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectDetonation' AND wasp_taskname LIKE 'IndirectDetonationEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectDetonation' AND wasp_taskname LIKE 'IndirectDetonationEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE indirect fire.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectDetonation - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectDetonation - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectDetonation - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectDetonation' AND wasp_taskname LIKE 'IndirectDetonationEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectDetonation' AND wasp_taskname LIKE 'IndirectDetonationEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION from CS_SOURCE indirect fire.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectDetonation - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectDetonation - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectDetonation - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectDetonation' AND wasp_taskname LIKE 'IndirectDetonationEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectDetonation' AND wasp_taskname LIKE 'IndirectDetonationEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE косвенная стрельба.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectDetonation - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectDetonation - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectDetonation - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectDetonation' AND wasp_taskname LIKE 'IndirectDetonationEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectDetonation' AND wasp_taskname LIKE 'IndirectDetonationEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION здесь CS_SOURCE косвенная стрельба.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectDetonation - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectDetonation - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SelfDamage - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SelfDamage' AND wasp_taskname LIKE 'SelfDamageEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SelfDamage' AND wasp_taskname LIKE 'SelfDamageEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE jsem poškozen.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SelfDamage - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SelfDamage - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SelfDamage - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SelfDamage' AND wasp_taskname LIKE 'SelfDamageEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SelfDamage' AND wasp_taskname LIKE 'SelfDamageEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION zde CS_SOURCE jsem poškozen.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SelfDamage - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SelfDamage - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SelfDamage - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SelfDamage' AND wasp_taskname LIKE 'SelfDamageEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SelfDamage' AND wasp_taskname LIKE 'SelfDamageEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE I am damaged.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SelfDamage - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SelfDamage - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SelfDamage - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SelfDamage' AND wasp_taskname LIKE 'SelfDamageEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SelfDamage' AND wasp_taskname LIKE 'SelfDamageEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION from CS_SOURCE I am damaged.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SelfDamage - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SelfDamage - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SelfDamage - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SelfDamage' AND wasp_taskname LIKE 'SelfDamageEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SelfDamage' AND wasp_taskname LIKE 'SelfDamageEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Я поврежден.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SelfDamage - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SelfDamage - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SelfDamage - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SelfDamage' AND wasp_taskname LIKE 'SelfDamageEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SelfDamage' AND wasp_taskname LIKE 'SelfDamageEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION здесь CS_SOURCE Я поврежден.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SelfDamage - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SelfDamage - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'CheckConnectionReq - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ConnectionChecker'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ConnectionChecker')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE kontrola spojení.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'CheckConnectionReq - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'CheckConnectionReq - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'CheckConnectionReq - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ConnectionChecker'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ConnectionChecker')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení '))),
		'CS_DESTINATION zde CS_SOURCE kontrola spojení.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'CheckConnectionReq - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'CheckConnectionReq - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'CheckConnectionReq - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ConnectionChecker'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ConnectionChecker')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE check connection.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'CheckConnectionReq - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'CheckConnectionReq - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'CheckConnectionReq - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ConnectionChecker'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ConnectionChecker')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení '))),
		'CS_DESTINATION from CS_SOURCE check connection.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'CheckConnectionReq - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'CheckConnectionReq - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'CheckConnectionReq - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ConnectionChecker'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ConnectionChecker')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE проверить соединение.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'CheckConnectionReq - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'CheckConnectionReq - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'CheckConnectionReq - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ConnectionChecker'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ConnectionChecker')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení '))),
		'CS_DESTINATION здесь CS_SOURCE проверить соединение.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'CheckConnectionReq - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'CheckConnectionReq - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'CheckConnectionSignalStrength1Res - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ConnectionChecker'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ConnectionChecker')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE slyším výborně.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'CheckConnectionSignalStrength1Res - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'CheckConnectionSignalStrength1Res - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'CheckConnectionSignalStrength1Res - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ConnectionChecker'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ConnectionChecker')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu '))),
		'CS_DESTINATION zde CS_SOURCE slyším výborně.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'CheckConnectionSignalStrength1Res - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'CheckConnectionSignalStrength1Res - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'CheckConnectionSignalStrength1Res - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ConnectionChecker'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ConnectionChecker')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE loud.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'CheckConnectionSignalStrength1Res - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'CheckConnectionSignalStrength1Res - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'CheckConnectionSignalStrength1Res - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ConnectionChecker'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ConnectionChecker')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu '))),
		'CS_DESTINATION from CS_SOURCE loud.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'CheckConnectionSignalStrength1Res - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'CheckConnectionSignalStrength1Res - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'CheckConnectionSignalStrength1Res - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ConnectionChecker'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ConnectionChecker')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Я хорошо слышу.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'CheckConnectionSignalStrength1Res - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'CheckConnectionSignalStrength1Res - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'CheckConnectionSignalStrength1Res - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ConnectionChecker'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ConnectionChecker')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu '))),
		'CS_DESTINATION здесь CS_SOURCE Я хорошо слышу.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'CheckConnectionSignalStrength1Res - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'CheckConnectionSignalStrength1Res - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeFormationReq - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně formace jednotky ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně formace jednotky '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE formace CS_ENUM.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeFormationReq - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeFormationReq - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně formace jednotky ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeFormationReq - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně formace jednotky ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně formace jednotky '))),
		'CS_DESTINATION zde CS_SOURCE formace CS_ENUM.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeFormationReq - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeFormationReq - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně formace jednotky ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeFormationReq - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně formace jednotky ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně formace jednotky '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE formation .',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeFormationReq - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeFormationReq - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně formace jednotky ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeFormationReq - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně formace jednotky ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně formace jednotky '))),
		'CS_DESTINATION from CS_SOURCE formation CS_ENUM.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeFormationReq - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeFormationReq - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně formace jednotky ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeFormationReq - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně formace jednotky ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně formace jednotky '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE образование CS_ENUM.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeFormationReq - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeFormationReq - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně formace jednotky ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeFormationReq - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně formace jednotky ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně formace jednotky '))),
		'CS_DESTINATION здесь CS_SOURCE образование CS_ENUM.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeFormationReq - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeFormationReq - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva ke změně formace jednotky ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeFormationStartRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení změny formace ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení změny formace '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE měníme formaci na CS_ENUM.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeFormationStartRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeFormationStartRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení změny formace ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeFormationStartRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení změny formace ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení změny formace '))),
		'CS_DESTINATION zde CS_SOURCE měníme formaci na CS_ENUM.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeFormationStartRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeFormationStartRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení změny formace ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeFormationStartRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení změny formace ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení změny formace '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE We change the formation to CS_ENUM.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeFormationStartRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeFormationStartRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení změny formace ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeFormationStartRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení změny formace ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení změny formace '))),
		'CS_DESTINATION from CS_SOURCE We change the formation to CS_ENUM.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeFormationStartRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeFormationStartRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení změny formace ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeFormationStartRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení změny formace ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení změny formace '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE мы меняем формацию на CS_ENUM.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeFormationStartRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeFormationStartRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení změny formace ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeFormationStartRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení změny formace ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení změny formace '))),
		'CS_DESTINATION здесь CS_SOURCE мы меняем формацию на CS_ENUM.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeFormationStartRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeFormationStartRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení změny formace ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeFormationEndRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení změny formace ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení změny formace '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE formace změněna.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeFormationEndRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeFormationEndRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení změny formace ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeFormationEndRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení změny formace ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení změny formace '))),
		'CS_DESTINATION zde CS_SOURCE formace změněna.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeFormationEndRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeFormationEndRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení změny formace ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeFormationEndRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení změny formace ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení změny formace '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE formation changed.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeFormationEndRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeFormationEndRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení změny formace ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeFormationEndRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení změny formace ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení změny formace '))),
		'CS_DESTINATION from CS_SOURCE formation changed.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeFormationEndRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeFormationEndRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení změny formace ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeFormationEndRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení změny formace ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení změny formace '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE формация изменена.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeFormationEndRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeFormationEndRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení změny formace ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeFormationEndRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení změny formace ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení změny formace '))),
		'CS_DESTINATION здесь CS_SOURCE формация изменена.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeFormationEndRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeFormationEndRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení změny formace ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TransferSupliesStartRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu zásob ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu zásob '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE zahajuji přesun zásob.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TransferSupliesStartRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TransferSupliesStartRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu zásob ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TransferSupliesStartRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu zásob ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu zásob '))),
		'CS_DESTINATION zde CS_SOURCE zahajuji přesun zásob.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TransferSupliesStartRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TransferSupliesStartRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu zásob ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TransferSupliesStartRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu zásob ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu zásob '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE I''m starting to move stocks.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TransferSupliesStartRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TransferSupliesStartRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu zásob ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TransferSupliesStartRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu zásob ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu zásob '))),
		'CS_DESTINATION from CS_SOURCE I''m starting to move stocks.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TransferSupliesStartRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TransferSupliesStartRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu zásob ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TransferSupliesStartRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu zásob ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu zásob '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Я начинаю перемещать акции.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TransferSupliesStartRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TransferSupliesStartRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu zásob ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TransferSupliesStartRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu zásob ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu zásob '))),
		'CS_DESTINATION здесь CS_SOURCE Я начинаю перемещать акции.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TransferSupliesStartRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TransferSupliesStartRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o zahájení přesunu zásob ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TransferSupliesEndRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o úspěšném dokončení doplnění zásob ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o úspěšném dokončení doplnění zásob '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE přesun zásob proveden.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TransferSupliesEndRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TransferSupliesEndRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o úspěšném dokončení doplnění zásob ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TransferSupliesEndRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o úspěšném dokončení doplnění zásob ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o úspěšném dokončení doplnění zásob '))),
		'CS_DESTINATION zde CS_SOURCE přesun zásob proveden.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TransferSupliesEndRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TransferSupliesEndRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o úspěšném dokončení doplnění zásob ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TransferSupliesEndRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o úspěšném dokončení doplnění zásob ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o úspěšném dokončení doplnění zásob '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE stock transfer performed.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TransferSupliesEndRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TransferSupliesEndRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o úspěšném dokončení doplnění zásob ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TransferSupliesEndRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o úspěšném dokončení doplnění zásob ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o úspěšném dokončení doplnění zásob '))),
		'CS_DESTINATION from CS_SOURCE stock transfer performed.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TransferSupliesEndRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TransferSupliesEndRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o úspěšném dokončení doplnění zásob ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TransferSupliesEndRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o úspěšném dokončení doplnění zásob ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o úspěšném dokončení doplnění zásob '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Мы переместили инвентарь.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TransferSupliesEndRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TransferSupliesEndRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o úspěšném dokončení doplnění zásob ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TransferSupliesEndFailedRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o úspěšném dokončení doplnění zásob ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o úspěšném dokončení doplnění zásob '))),
		'CS_DESTINATION здесь CS_SOURCE Мы переместили инвентарь.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TransferSupliesEndFailedRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TransferSupliesEndFailedRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o úspěšném dokončení doplnění zásob ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TransferSupliesEndFailedRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o neúspěšném dokončení doplnění zásob ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o neúspěšném dokončení doplnění zásob '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE přesun zásob selhal.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TransferSupliesEndFailedRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TransferSupliesEndFailedRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o neúspěšném dokončení doplnění zásob ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TransferSupliesEndFailedRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o neúspěšném dokončení doplnění zásob ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o neúspěšném dokončení doplnění zásob '))),
		'CS_DESTINATION zde CS_SOURCE přesun zásob selhal.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TransferSupliesEndFailedRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TransferSupliesEndFailedRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o neúspěšném dokončení doplnění zásob ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TransferSupliesEndFailedRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o neúspěšném dokončení doplnění zásob ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o neúspěšném dokončení doplnění zásob '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE stock transfer failed.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TransferSupliesEndFailedRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TransferSupliesEndFailedRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o neúspěšném dokončení doplnění zásob ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TransferSupliesEndFailedRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o neúspěšném dokončení doplnění zásob ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o neúspěšném dokončení doplnění zásob '))),
		'CS_DESTINATION from CS_SOURCE stock transfer failed.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TransferSupliesEndFailedRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TransferSupliesEndFailedRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o neúspěšném dokončení doplnění zásob ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TransferSupliesEndFailedRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o neúspěšném dokončení doplnění zásob ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o neúspěšném dokončení doplnění zásob '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE не удалось переместить инвентарь.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TransferSupliesEndFailedRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TransferSupliesEndFailedRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o neúspěšném dokončení doplnění zásob ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TransferSupliesEndRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o neúspěšném dokončení doplnění zásob ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o neúspěšném dokončení doplnění zásob '))),
		'CS_DESTINATION здесь CS_SOURCE не удалось переместить инвентарь.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TransferSupliesEndRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TransferSupliesEndRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o neúspěšném dokončení doplnění zásob ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeDefensivePositionReq - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zaujetí obranné pozice ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zaujetí obranné pozice '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE zaujměte obrannou pozici.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeDefensivePositionReq - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeDefensivePositionReq - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zaujetí obranné pozice ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeDefensivePositionReq - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zaujetí obranné pozice ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zaujetí obranné pozice '))),
		'CS_DESTINATION zde CS_SOURCE zaujměte obrannou pozici.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeDefensivePositionReq - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeDefensivePositionReq - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zaujetí obranné pozice ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeDefensivePositionReq - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zaujetí obranné pozice ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zaujetí obranné pozice '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE take a defensive position.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeDefensivePositionReq - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeDefensivePositionReq - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zaujetí obranné pozice ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeDefensivePositionReq - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zaujetí obranné pozice ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zaujetí obranné pozice '))),
		'CS_DESTINATION from CS_SOURCE take a defensive position.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeDefensivePositionReq - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeDefensivePositionReq - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zaujetí obranné pozice ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeDefensivePositionReq - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zaujetí obranné pozice ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zaujetí obranné pozice '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE взять оборонительную позицию.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeDefensivePositionReq - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeDefensivePositionReq - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zaujetí obranné pozice ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeDefensivePositionReq - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zaujetí obranné pozice ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zaujetí obranné pozice '))),
		'CS_DESTINATION здесь CS_SOURCE взять оборонительную позицию.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeDefensivePositionReq - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeDefensivePositionReq - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zaujetí obranné pozice ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeDefensivePositionStartRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu na zadanou pozici ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu na zadanou pozici '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE zahajuji přesun na obrannou pozici.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeDefensivePositionStartRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeDefensivePositionStartRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu na zadanou pozici ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeDefensivePositionStartRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu na zadanou pozici ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu na zadanou pozici '))),
		'CS_DESTINATION zde CS_SOURCE zahajuji přesun na obrannou pozici.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeDefensivePositionStartRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeDefensivePositionStartRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu na zadanou pozici ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeDefensivePositionStartRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu na zadanou pozici ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu na zadanou pozici '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE I''m moving to a defensive position.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeDefensivePositionStartRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeDefensivePositionStartRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu na zadanou pozici ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeDefensivePositionStartRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu na zadanou pozici ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu na zadanou pozici '))),
		'CS_DESTINATION from CS_SOURCE I''m moving to a defensive position.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeDefensivePositionStartRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeDefensivePositionStartRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu na zadanou pozici ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeDefensivePositionStartRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu na zadanou pozici ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu na zadanou pozici '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Я перехожу на оборонительную позицию.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeDefensivePositionStartRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeDefensivePositionStartRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu na zadanou pozici ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeDefensivePositionStartRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu na zadanou pozici ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu na zadanou pozici '))),
		'CS_DESTINATION здесь CS_SOURCE Я перехожу на оборонительную позицию.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeDefensivePositionStartRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeDefensivePositionStartRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu na zadanou pozici ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeDefensivePositionPosReachedRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení pozice a zaujetí obranné pozice ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení pozice a zaujetí obranné pozice '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE obranná pozice zaujmuta.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeDefensivePositionPosReachedRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeDefensivePositionPosReachedRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení pozice a zaujetí obranné pozice ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeDefensivePositionPosReachedRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení pozice a zaujetí obranné pozice ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení pozice a zaujetí obranné pozice '))),
		'CS_DESTINATION zde CS_SOURCE obranná pozice zaujmuta.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeDefensivePositionPosReachedRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeDefensivePositionPosReachedRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení pozice a zaujetí obranné pozice ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeDefensivePositionPosReachedRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení pozice a zaujetí obranné pozice ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení pozice a zaujetí obranné pozice '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE the defensive position is interesting.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeDefensivePositionPosReachedRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeDefensivePositionPosReachedRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení pozice a zaujetí obranné pozice ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeDefensivePositionPosReachedRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení pozice a zaujetí obranné pozice ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení pozice a zaujetí obranné pozice '))),
		'CS_DESTINATION from CS_SOURCE the defensive position is interesting.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeDefensivePositionPosReachedRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeDefensivePositionPosReachedRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení pozice a zaujetí obranné pozice ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeDefensivePositionPosReachedRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení pozice a zaujetí obranné pozice ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení pozice a zaujetí obranné pozice '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE интересная позиция обороны.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeDefensivePositionPosReachedRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeDefensivePositionPosReachedRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení pozice a zaujetí obranné pozice ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeDefensivePositionPosReachedRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení pozice a zaujetí obranné pozice ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení pozice a zaujetí obranné pozice '))),
		'CS_DESTINATION здесь CS_SOURCE интересная позиция обороны.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeDefensivePositionPosReachedRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeDefensivePositionPosReachedRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení pozice a zaujetí obranné pozice ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeDefensivePositionDismountRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o provedení sesednutí ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o provedení sesednutí '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE sesednuto.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeDefensivePositionDismountRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeDefensivePositionDismountRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o provedení sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeDefensivePositionDismountRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o provedení sesednutí ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o provedení sesednutí '))),
		'CS_DESTINATION zde CS_SOURCE sesednuto.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeDefensivePositionDismountRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeDefensivePositionDismountRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o provedení sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeDefensivePositionDismountRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o provedení sesednutí ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o provedení sesednutí '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE dismounted.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeDefensivePositionDismountRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeDefensivePositionDismountRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o provedení sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeDefensivePositionDismountRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o provedení sesednutí ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o provedení sesednutí '))),
		'CS_DESTINATION from CS_SOURCE dismounted.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeDefensivePositionDismountRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeDefensivePositionDismountRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o provedení sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeDefensivePositionDismountRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o provedení sesednutí ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o provedení sesednutí '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE мы спешились с транспортных средств.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeDefensivePositionDismountRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeDefensivePositionDismountRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o provedení sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeDefensivePositionDismountRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o provedení sesednutí ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o provedení sesednutí '))),
		'CS_DESTINATION здесь CS_SOURCE мы спешились с транспортных средств.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeDefensivePositionDismountRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeDefensivePositionDismountRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o provedení sesednutí ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'AttachToUnit - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AttachToUnit' AND wasp_taskname LIKE 'behavior/AttachToUnit'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o připojení do jednotky ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AttachToUnit' AND wasp_taskname LIKE 'behavior/AttachToUnit')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o připojení do jednotky '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE připojil jsem se k jednotce.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'AttachToUnit - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'AttachToUnit - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o připojení do jednotky ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'AttachToUnit - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AttachToUnit' AND wasp_taskname LIKE 'behavior/AttachToUnit'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o připojení do jednotky ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AttachToUnit' AND wasp_taskname LIKE 'behavior/AttachToUnit')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o připojení do jednotky '))),
		'CS_DESTINATION zde CS_SOURCE připojil jsem se k jednotce.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'AttachToUnit - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'AttachToUnit - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o připojení do jednotky ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'AttachToUnit - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AttachToUnit' AND wasp_taskname LIKE 'behavior/AttachToUnit'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o připojení do jednotky ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AttachToUnit' AND wasp_taskname LIKE 'behavior/AttachToUnit')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o připojení do jednotky '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE attach to unit.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'AttachToUnit - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'AttachToUnit - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o připojení do jednotky ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'AttachToUnit - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AttachToUnit' AND wasp_taskname LIKE 'behavior/AttachToUnit'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o připojení do jednotky ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AttachToUnit' AND wasp_taskname LIKE 'behavior/AttachToUnit')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o připojení do jednotky '))),
		'CS_DESTINATION from CS_SOURCE attach to unit.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'AttachToUnit - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'AttachToUnit - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o připojení do jednotky ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'AttachToUnit - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AttachToUnit' AND wasp_taskname LIKE 'behavior/AttachToUnit'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o připojení do jednotky ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AttachToUnit' AND wasp_taskname LIKE 'behavior/AttachToUnit')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o připojení do jednotky '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Я присоединился к подразделению.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'AttachToUnit - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'AttachToUnit - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o připojení do jednotky ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'AttachToUnit - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AttachToUnit' AND wasp_taskname LIKE 'behavior/AttachToUnit'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o připojení do jednotky ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AttachToUnit' AND wasp_taskname LIKE 'behavior/AttachToUnit')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o připojení do jednotky '))),
		'CS_DESTINATION здесь CS_SOURCE Я присоединился к подразделению.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'AttachToUnit - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'AttachToUnit - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o připojení do jednotky ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DetachFromUnit - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DetachFromUnit' AND wasp_taskname LIKE 'behavior/DetachFromUnit'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o odpojení od jednotky ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DetachFromUnit' AND wasp_taskname LIKE 'behavior/DetachFromUnit')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o odpojení od jednotky '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE odpojuji se od jednotky.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DetachFromUnit - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DetachFromUnit - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o odpojení od jednotky ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DetachFromUnit - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DetachFromUnit' AND wasp_taskname LIKE 'behavior/DetachFromUnit'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o odpojení od jednotky ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DetachFromUnit' AND wasp_taskname LIKE 'behavior/DetachFromUnit')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o odpojení od jednotky '))),
		'CS_DESTINATION zde CS_SOURCE odpojuji se od jednotky.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DetachFromUnit - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DetachFromUnit - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o odpojení od jednotky ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DetachFromUnit - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DetachFromUnit' AND wasp_taskname LIKE 'behavior/DetachFromUnit'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o odpojení od jednotky ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DetachFromUnit' AND wasp_taskname LIKE 'behavior/DetachFromUnit')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o odpojení od jednotky '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE detach from unit.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DetachFromUnit - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DetachFromUnit - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o odpojení od jednotky ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DetachFromUnit - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DetachFromUnit' AND wasp_taskname LIKE 'behavior/DetachFromUnit'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o odpojení od jednotky ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DetachFromUnit' AND wasp_taskname LIKE 'behavior/DetachFromUnit')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o odpojení od jednotky '))),
		'CS_DESTINATION from CS_SOURCE detach from unit.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DetachFromUnit - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DetachFromUnit - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o odpojení od jednotky ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DetachFromUnit - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DetachFromUnit' AND wasp_taskname LIKE 'behavior/DetachFromUnit'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o odpojení od jednotky ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DetachFromUnit' AND wasp_taskname LIKE 'behavior/DetachFromUnit')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o odpojení od jednotky '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Я отключен от устройства.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DetachFromUnit - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DetachFromUnit - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o odpojení od jednotky ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DetachFromUnit - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DetachFromUnit' AND wasp_taskname LIKE 'behavior/DetachFromUnit'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o odpojení od jednotky ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DetachFromUnit' AND wasp_taskname LIKE 'behavior/DetachFromUnit')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o odpojení od jednotky '))),
		'CS_DESTINATION здесь CS_SOURCE Я отключен от устройства.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DetachFromUnit - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DetachFromUnit - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'hlášení nadřízenému o odpojení od jednotky ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeChannelCheckReq - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE kontrola spojení.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeChannelCheckReq - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeChannelCheckReq - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeChannelCheckReq - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení '))),
		'CS_DESTINATION zde CS_SOURCE kontrola spojení.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeChannelCheckReq - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeChannelCheckReq - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeChannelCheckReq - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this CS_SOURCE, CS_SOURCE check connection.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeChannelCheckReq - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeChannelCheckReq - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeChannelCheckReq - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení '))),
		'CS_DESTINATION from CS_SOURCE check connection.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeChannelCheckReq - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeChannelCheckReq - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeChannelCheckReq - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE проверение соединения.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeChannelCheckReq - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeChannelCheckReq - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeChannelCheckReq - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení '))),
		'CS_DESTINATION здесь CS_SOURCE проверение соединения.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeChannelCheckReq - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeChannelCheckReq - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k ohlášení spojení ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeChannelCheckRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE slyším výborně.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeChannelCheckRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeChannelCheckRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeChannelCheckRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu '))),
		'CS_DESTINATION zde CS_SOURCE slyším výborně.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeChannelCheckRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeChannelCheckRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeChannelCheckRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this CS_SOURCE, CS_SOURCE loud.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeChannelCheckRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeChannelCheckRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeChannelCheckRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu '))),
		'CS_DESTINATION, from CS_SOURCE loud.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeChannelCheckRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeChannelCheckRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeChannelCheckRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Я слышу хорошо.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeChannelCheckRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeChannelCheckRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeChannelCheckRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu '))),
		'CS_DESTINATION здесь CS_SOURCE Я слышу хорошо.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeChannelCheckRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeChannelCheckRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného na výzvu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeChannelRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o změně kanálu ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o změně kanálu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE změna kanálu.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeChannelRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeChannelRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o změně kanálu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeChannelRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o změně kanálu ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o změně kanálu '))),
		'CS_DESTINATION zde CS_SOURCE změna kanálu.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeChannelRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeChannelRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o změně kanálu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeChannelRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o změně kanálu ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o změně kanálu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this CS_SOURCE, CS_SOURCE change channel.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeChannelRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeChannelRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o změně kanálu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeChannelRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o změně kanálu ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o změně kanálu '))),
		'CS_DESTINATION from CS_SOURCE change channel',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeChannelRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeChannelRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o změně kanálu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeChannelRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o změně kanálu ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o změně kanálu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE изменение канала.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeChannelRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeChannelRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o změně kanálu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'ChangeChannelRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o změně kanálu ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o změně kanálu '))),
		'CS_DESTINATION здесь CS_SOURCE изменение канала.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'ChangeChannelRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'ChangeChannelRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o změně kanálu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationRegistration - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'registrace letadla u řídící věži' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'registrace letadla u řídící věži'))),
		'CS_DESTINATION CS_SOURCE',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationRegistration - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationRegistration - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'registrace letadla u řídící věži');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationRegistration - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'registrace letadla u řídící věži' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'registrace letadla u řídící věži'))),
		'CS_DESTINATION CS_SOURCE',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationRegistration - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationRegistration - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'registrace letadla u řídící věži');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationRegistration - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'registrace letadla u řídící věži' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'registrace letadla u řídící věži'))),
		'CS_DESTINATION CS_SOURCE',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationRegistration - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationRegistration - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'registrace letadla u řídící věži');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationRegistration - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'registrace letadla u řídící věži' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'registrace letadla u řídící věži'))),
		'CS_DESTINATION CS_SOURCE',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationRegistration - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationRegistration - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'registrace letadla u řídící věži');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationRegistration - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'registrace letadla u řídící věži' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'registrace letadla u řídící věži'))),
		'CS_DESTINATION CS_SOURCE',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationRegistration - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationRegistration - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'registrace letadla u řídící věži');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationRegistration - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'registrace letadla u řídící věži' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'registrace letadla u řídící věži'))),
		'CS_DESTINATION CS_SOURCE',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationRegistration - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationRegistration - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'registrace letadla u řídící věži');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationRegistrationAck - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž registruje letadlo' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž registruje letadlo'))),
		'CS_DESTINATION CS_SOURCE pokračuj.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationRegistrationAck - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationRegistrationAck - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž registruje letadlo');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationRegistrationAck - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž registruje letadlo' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž registruje letadlo'))),
		'CS_DESTINATION CS_SOURCE pokračuj.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationRegistrationAck - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationRegistrationAck - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž registruje letadlo');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationRegistrationAck - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž registruje letadlo' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž registruje letadlo'))),
		'CS_DESTINATION CS_SOURCE go ahead.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationRegistrationAck - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationRegistrationAck - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž registruje letadlo');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationRegistrationAck - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž registruje letadlo' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž registruje letadlo'))),
		'CS_DESTINATION CS_SOURCE go ahead.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationRegistrationAck - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationRegistrationAck - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž registruje letadlo');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationRegistrationAck - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž registruje letadlo' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž registruje letadlo'))),
		'CS_DESTINATION CS_SOURCE преуспевать.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationRegistrationAck - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationRegistrationAck - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž registruje letadlo');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationRegistrationAck - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž registruje letadlo' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž registruje letadlo'))),
		'CS_DESTINATION CS_SOURCE преуспевать.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationRegistrationAck - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationRegistrationAck - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž registruje letadlo');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationStartApprovedReq- CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dává požadavek na start' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dává požadavek na start'))),
		'CS_DESTINATION letová hladina CS_LEVEL žádost o start.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationStartApprovedReq- CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationStartApprovedReq- CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dává požadavek na start');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationStartApprovedReq - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dává požadavek na start' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dává požadavek na start'))),
		'CS_DESTINATION letová hladina CS_LEVEL žádost o start.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationStartApprovedReq - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationStartApprovedReq - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dává požadavek na start');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationStartApprovedReq - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dává požadavek na start' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dává požadavek na start'))),
		'CS_DESTINATION level CS_LEVEL request start.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationStartApprovedReq - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationStartApprovedReq - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dává požadavek na start');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationStartApprovedReq - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dává požadavek na start' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dává požadavek na start'))),
		'CS_DESTINATION level CS_LEVEL request start.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationStartApprovedReq - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationStartApprovedReq - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dává požadavek na start');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationStartApprovedReq - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dává požadavek na start' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dává požadavek na start'))),
		'CS_DESTINATION уровень CS_LEVEL запрос на запуск.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationStartApprovedReq - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationStartApprovedReq - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dává požadavek na start');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationStartApprovedReq - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dává požadavek na start' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dává požadavek na start'))),
		'CS_DESTINATION уровень CS_LEVEL запрос на запуск.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationStartApprovedReq - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationStartApprovedReq - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dává požadavek na start');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationStartApproved - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povoluje start' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povoluje start'))),
		'CS_DESTINATION start schválen, ohlašte se až budete připraveni k vytlačení',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationStartApproved - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationStartApproved - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povoluje start');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationStartApproved - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povoluje start' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povoluje start'))),
		'CS_DESTINATION start schválen, ohlašte se až budete připraveni k vytlačení',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationStartApproved - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationStartApproved - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povoluje start');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationStartApproved - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povoluje start' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povoluje start'))),
		'CS_DESTINATION start approved, report when ready for pushback.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationStartApproved - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationStartApproved - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povoluje start');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationStartApproved - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povoluje start' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povoluje start'))),
		'CS_DESTINATION start approved, report when ready for pushback.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationStartApproved - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationStartApproved - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povoluje start');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationStartApproved - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povoluje start' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povoluje start'))),
		'CS_DESTINATION включить запуск, сообщите, когда вы будете готовы вернуться.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationStartApproved - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationStartApproved - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povoluje start');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationStartApproved - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povoluje start' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povoluje start'))),
		'CS_DESTINATION включить запуск, сообщите, когда вы будете готовы вернуться.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationStartApproved - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationStartApproved - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povoluje start');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationReady - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno ke startu' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno ke startu'))),
		'CS_DESTINATION CS_SOURCE, připraven k vytlačení.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationReady - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationReady - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno ke startu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationReady - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno ke startu' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno ke startu'))),
		'CS_DESTINATION CS_SOURCE, připraven k vytlačení.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationReady - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationReady - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno ke startu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationReady - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno ke startu' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno ke startu'))),
		'CS_DESTINATION CS_SOURCE, ready for pushback.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationReady - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationReady - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno ke startu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationReady - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno ke startu' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno ke startu'))),
		'CS_DESTINATION CS_SOURCE, ready for pushback.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationReady - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationReady - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno ke startu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationReady - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno ke startu' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno ke startu'))),
		'CS_DESTINATION CS_SOURCE, готов к запуску.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationReady - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationReady - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno ke startu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationReady - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno ke startu' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno ke startu'))),
		'CS_DESTINATION CS_SOURCE, готов к запуску.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationReady - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationReady - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno ke startu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationRunway - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlasí, která runway' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlasí, která runway'))),
		'CS_DESTINATION dráha CS_RUNWAY.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationRunway - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationRunway - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlasí, která runway');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationRunway - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlasí, která runway' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlasí, která runway'))),
		'CS_DESTINATION dráha CS_RUNWAY.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationRunway - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationRunway - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlasí, která runway');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationRunway - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlasí, která runway' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlasí, která runway'))),
		'CS_DESTINATION runway CS_RUNWAY.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationRunway - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationRunway - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlasí, která runway');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationRunway - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlasí, která runway' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlasí, která runway'))),
		'CS_DESTINATION runway CS_RUNWAY.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationRunway - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationRunway - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlasí, která runway');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationRunway - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlasí, která runway' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlasí, která runway'))),
		'CS_DESTINATION взлетная полоса CS_RUNWAY',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationRunway - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationRunway - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlasí, která runway');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationRunway - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlasí, která runway' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlasí, která runway'))),
		'CS_DESTINATION взлетная полоса CS_RUNWAY',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationRunway - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationRunway - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlasí, která runway');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationRunwayAck - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway'))),
		'OK, dráha CS_RUNWAY CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationRunwayAck - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationRunwayAck - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationRunwayAck - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway'))),
		'OK, dráha CS_RUNWAY CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationRunwayAck - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationRunwayAck - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationRunwayAck - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway'))),
		'OK, runway CS_RUNWAY CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationRunwayAck - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationRunwayAck - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationRunwayAck - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway'))),
		'OK, runway CS_RUNWAY CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationRunwayAck - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationRunwayAck - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationRunwayAck - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway'))),
		'OK, взлетная полоса CS_RUNWAY CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationRunwayAck - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationRunwayAck - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightPreparationRunwayAck - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway'))),
		'OK, взлетная полоса CS_RUNWAY CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightPreparationRunwayAck - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightPreparationRunwayAck - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffReady - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno na vzlet' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno na vzlet'))),
		'CS_SOURCE připraven k pojiždění.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffReady - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffReady - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno na vzlet');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffReady - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno na vzlet' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno na vzlet'))),
		'CS_SOURCE připravený k pojiždění.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffReady - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffReady - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno na vzlet');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffReady - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno na vzlet' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno na vzlet'))),
		'CS_SOURCE ready for taxi clearence.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffReady - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffReady - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno na vzlet');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffReady - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno na vzlet' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno na vzlet'))),
		'CS_SOURCE ready for taxi clearence.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffReady - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffReady - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno na vzlet');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffReady - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno na vzlet' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno na vzlet'))),
		'CS_SOURCE готовы покинуть рулежную дорожку.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffReady - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffReady - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno na vzlet');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffReady - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno na vzlet' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno na vzlet'))),
		'CS_SOURCE готовы покинуть рулежную дорожку.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffReady - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffReady - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno na vzlet');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffTaxi - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž popíše taxi dráhu' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž popíše taxi dráhu'))),
		'CS_DESTINATION pojíždějte na vyčkávací místo dráhy CS_RUNWAY přes dráhu CS_TAXI, k dispozici.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffTaxi - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffTaxi - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž popíše taxi dráhu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffTaxi - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž popíše taxi dráhu' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž popíše taxi dráhu'))),
		'CS_DESTINATION pojíždějte na vyčkávací místo dráhy CS_RUNWAY přes dráhu CS_TAXI, k dispozici.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffTaxi - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffTaxi - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž popíše taxi dráhu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffTaxi - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž popíše taxi dráhu' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž popíše taxi dráhu'))),
		'CS_DESTINATION taxi holding point CS_RUNWAY via taxiway CS_TAXI, clearence available.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffTaxi - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffTaxi - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž popíše taxi dráhu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffTaxi - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž popíše taxi dráhu' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž popíše taxi dráhu'))),
		'CS_DESTINATION taxi holding point CS_RUNWAY via taxiway CS_TAXI, clearence available.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffTaxi - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffTaxi - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž popíše taxi dráhu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffTaxi - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž popíše taxi dráhu' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž popíše taxi dráhu'))),
		'CS_DESTINATION вместо того, чтобы держать рулежную дорожку CS_RUNWAY через рулежную дорожку CS_TAXI, доступный.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffTaxi - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffTaxi - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž popíše taxi dráhu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffTaxi - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž popíše taxi dráhu' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž popíše taxi dráhu'))),
		'CS_DESTINATION вместо того, чтобы держать рулежную дорожку CS_RUNWAY через рулежную дорожку CS_TAXI, доступный.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffTaxi - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffTaxi - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž popíše taxi dráhu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffTaxiAck - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí taxi dráhu' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí taxi dráhu'))),
		'Dráha CS_RUNWAY přes CS_TAXI, potvrzuji, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffTaxiAck - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffTaxiAck - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí taxi dráhu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffTaxiAck - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí taxi dráhu' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí taxi dráhu'))),
		'Dráha CS_RUNWAY přes CS_TAXI, potvrzuji, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffTaxiAck - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffTaxiAck - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí taxi dráhu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffTaxiAck - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí taxi dráhu' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí taxi dráhu'))),
		'Runway CS_RUNWAY via CS_TAXI, go head clearence, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffTaxiAck - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffTaxiAck - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí taxi dráhu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffTaxiAck - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí taxi dráhu' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí taxi dráhu'))),
		'Runway CS_RUNWAY via CS_TAXI, go head clearence, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffTaxiAck - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffTaxiAck - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí taxi dráhu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffTaxiAck - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí taxi dráhu' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí taxi dráhu'))),
		'взлетная полоса CS_RUNWAY через CS_TAXI, подтверждение беговой дорожки, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffTaxiAck - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffTaxiAck - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí taxi dráhu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffTaxiAck - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí taxi dráhu' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí taxi dráhu'))),
		'взлетная полоса CS_RUNWAY через CS_TAXI, подтверждение беговой дорожки, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffTaxiAck - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffTaxiAck - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí taxi dráhu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffLevel - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž potvdí letovou výšku' AND taskphase = 5 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž potvdí letovou výšku'))),
		'CS_DESTINATION vzlet povolen, letová hladina CS_LEVEL.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffLevel - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffLevel - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž potvdí letovou výšku');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffLevel - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž potvdí letovou výšku' AND taskphase = 5 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž potvdí letovou výšku'))),
		'CS_DESTINATION vzlet povolen, letová hladina CS_LEVEL.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffLevel - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffLevel - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž potvdí letovou výšku');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffLevel - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž potvdí letovou výšku' AND taskphase = 5 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž potvdí letovou výšku'))),
		'CS_DESTINATION cleared to takeoff, level CS_LEVEL',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffLevel - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffLevel - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž potvdí letovou výšku');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffLevel - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž potvdí letovou výšku' AND taskphase = 5 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž potvdí letovou výšku'))),
		'CS_DESTINATION cleared to takeoff, level CS_LEVEL',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffLevel - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffLevel - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž potvdí letovou výšku');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffLevel - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž potvdí letovou výšku' AND taskphase = 5 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž potvdí letovou výšku'))),
		'CS_DESTINATION высота полета CS_LEVEL',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffLevel - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffLevel - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž potvdí letovou výšku');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffLevel - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž potvdí letovou výšku' AND taskphase = 5 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž potvdí letovou výšku'))),
		'CS_DESTINATION высота полета CS_LEVEL',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffLevel - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffLevel - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž potvdí letovou výšku');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffLevelAck - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí letovou výšku' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí letovou výšku'))),
		'Letová hladina CS_LEVEL, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffLevelAck - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffLevelAck - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí letovou výšku');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffLevelAck - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí letovou výšku' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí letovou výšku'))),
		'Letová hladina CS_LEVEL, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffLevelAck - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffLevelAck - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí letovou výšku');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffLevelAck - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí letovou výšku' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí letovou výšku'))),
		'Clear to takeoff, level CS_LEVEL, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffLevelAck - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffLevelAck - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí letovou výšku');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffLevelAck - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí letovou výšku' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí letovou výšku'))),
		'Clear to takeoff, level CS_LEVEL, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffLevelAck - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffLevelAck - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí letovou výšku');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffLevelAck - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí letovou výšku' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí letovou výšku'))),
		'Высота полета CS_LEVEL, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffLevelAck - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffLevelAck - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí letovou výšku');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffLevelAck - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí letovou výšku' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí letovou výšku'))),
		'Высота полета CS_LEVEL, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffLevelAck - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffLevelAck - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí letovou výšku');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffFromairport - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž zdělí dráhu opuštění letiště' AND taskphase = 6 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž zdělí dráhu opuštění letiště'))),
		'CS_DESTINATION po vzletu CS_WAYFROMAIRPORT. Dráha CS_RUNWAY vzlet povolen.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffFromairport - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffFromairport - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž zdělí dráhu opuštění letiště');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffFromairport - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž zdělí dráhu opuštění letiště' AND taskphase = 6 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž zdělí dráhu opuštění letiště'))),
		'CS_DESTINATION po vzletu CS_WAYFROMAIRPORT. Dráha CS_RUNWAY vzlet povolen.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffFromairport - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffFromairport - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž zdělí dráhu opuštění letiště');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffFromairport - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž zdělí dráhu opuštění letiště' AND taskphase = 6 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž zdělí dráhu opuštění letiště'))),
		'CS_DESTINATION after takeoff CS_WAYFROMAIRPORT. Runway CS_RUNWAY cleared for takeoff.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffFromairport - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffFromairport - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž zdělí dráhu opuštění letiště');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffFromairport - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž zdělí dráhu opuštění letiště' AND taskphase = 6 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž zdělí dráhu opuštění letiště'))),
		'CS_DESTINATION after takeoff CS_WAYFROMAIRPORT. Runway CS_RUNWAY cleared for takeoff.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffFromairport - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffFromairport - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž zdělí dráhu opuštění letiště');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffFromairport - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž zdělí dráhu opuštění letiště' AND taskphase = 6 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž zdělí dráhu opuštění letiště'))),
		'CS_DESTINATION взлетно-посадочная полоса CS_WAYFROMAIRPORT. Bзлетная полоса CS_RUNWAY разрешение на взлет.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffFromairport - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffFromairport - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž zdělí dráhu opuštění letiště');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffFromairport - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž zdělí dráhu opuštění letiště' AND taskphase = 6 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž zdělí dráhu opuštění letiště'))),
		'CS_DESTINATION взлетно-посадочная полоса CS_WAYFROMAIRPORT. Bзлетная полоса CS_RUNWAY разрешение на взлет.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffFromairport - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffFromairport - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž zdělí dráhu opuštění letiště');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffFromairportAck - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí dráhu opuštění letiště' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí dráhu opuštění letiště'))),
		'Dráha CS_RUNWAY po vzletu CS_WAYFROMAIRPORT, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffFromairportAck - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffFromairportAck - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí dráhu opuštění letiště');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffFromairportAck - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí dráhu opuštění letiště' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí dráhu opuštění letiště'))),
		'Dráha CS_RUNWAY po vzletu CS_WAYFROMAIRPORT, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffFromairportAck - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffFromairportAck - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí dráhu opuštění letiště');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffFromairportAck - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí dráhu opuštění letiště' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí dráhu opuštění letiště'))),
		'Runway CS_RUNWAY cleared for takeoff, CS_WAYFROMAIRPORT after airborne, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffFromairportAck - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffFromairportAck - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí dráhu opuštění letiště');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffFromairportAck - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí dráhu opuštění letiště' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí dráhu opuštění letiště'))),
		'Runway CS_RUNWAY cleared for takeoff, CS_WAYFROMAIRPORT after airborne, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffFromairportAck - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffFromairportAck - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí dráhu opuštění letiště');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffFromairportAck - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí dráhu opuštění letiště' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí dráhu opuštění letiště'))),
		'Bзлетная полоса CS_RUNWAY взлетно-посадочная полосат CS_WAYFROMAIRPORT после полета, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffFromairportAck - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffFromairportAck - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí dráhu opuštění letiště');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffFromairportAck - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí dráhu opuštění letiště' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí dráhu opuštění letiště'))),
		'Bзлетная полоса CS_RUNWAY взлетно-посадочная полосат CS_WAYFROMAIRPORT после полета, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffFromairportAck - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffFromairportAck - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí dráhu opuštění letiště');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffATCFrequency - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí frekvenci ŘLP' AND taskphase = 7 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí frekvenci ŘLP'))),
		'CS_DESTINATION kontaktujte řízení letového prostoru CS_FREQUENCY.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffATCFrequency - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffATCFrequency - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí frekvenci ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffATCFrequency - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí frekvenci ŘLP' AND taskphase = 7 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí frekvenci ŘLP'))),
		'CS_DESTINATION kontaktujte řízení letového prostoru CS_FREQUENCY.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffATCFrequency - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffATCFrequency - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí frekvenci ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffATCFrequency - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí frekvenci ŘLP' AND taskphase = 7 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí frekvenci ŘLP'))),
		'CS_DESTINATION contact director CS_FREQUENCY.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffATCFrequency - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffATCFrequency - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí frekvenci ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffATCFrequency - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí frekvenci ŘLP' AND taskphase = 7 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí frekvenci ŘLP'))),
		'CS_DESTINATION contact director CS_FREQUENCY.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffATCFrequency - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffATCFrequency - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí frekvenci ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffATCFrequency - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí frekvenci ŘLP' AND taskphase = 7 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí frekvenci ŘLP'))),
		'CS_DESTINATION частота CS_FREQUENCY.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffATCFrequency - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffATCFrequency - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí frekvenci ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffATCFrequency - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí frekvenci ŘLP' AND taskphase = 7 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí frekvenci ŘLP'))),
		'CS_DESTINATION частота CS_FREQUENCY.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffATCFrequency - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffATCFrequency - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí frekvenci ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffATCFrequencyAck - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci ŘLP' AND taskphase = 5 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci ŘLP'))),
		'CS_SOURCE CS_FREQUENCY.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffATCFrequencyAck - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffATCFrequencyAck - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffATCFrequencyAck - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci ŘLP' AND taskphase = 5 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci ŘLP'))),
		'CS_SOURCE CS_FREQUENCY.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffATCFrequencyAck - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffATCFrequencyAck - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffATCFrequencyAck - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci ŘLP' AND taskphase = 5 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci ŘLP'))),
		'CS_SOURCE CS_FREQUENCY.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffATCFrequencyAck - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffATCFrequencyAck - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffATCFrequencyAck - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci ŘLP' AND taskphase = 5 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci ŘLP'))),
		'CS_SOURCE CS_FREQUENCY.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffATCFrequencyAck - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffATCFrequencyAck - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffATCFrequencyAck - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci ŘLP' AND taskphase = 5 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci ŘLP'))),
		'CS_SOURCE CS_FREQUENCY.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffATCFrequencyAck - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffATCFrequencyAck - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffATCFrequencyAck - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci ŘLP' AND taskphase = 5 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci ŘLP'))),
		'CS_SOURCE CS_FREQUENCY.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffATCFrequencyAck - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffATCFrequencyAck - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffRegistrationATC - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje u ŘLP' AND taskphase = 6 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje u ŘLP'))),
		'Odlet CS_SOURCE, dobrý den.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffRegistrationATC - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffRegistrationATC - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje u ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffRegistrationATC - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje u ŘLP' AND taskphase = 6 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje u ŘLP'))),
		'Odlet CS_SOURCE, dobrý den.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffRegistrationATC - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffRegistrationATC - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje u ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffRegistrationATC - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje u ŘLP' AND taskphase = 6 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje u ŘLP'))),
		'Departure CS_SOURCE, hello.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffRegistrationATC - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffRegistrationATC - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje u ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffRegistrationATC - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje u ŘLP' AND taskphase = 6 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje u ŘLP'))),
		'Departure CS_SOURCE, hello.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffRegistrationATC - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffRegistrationATC - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje u ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffRegistrationATC - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje u ŘLP' AND taskphase = 6 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje u ŘLP'))),
		'Вылет из CS_SOURCE, Здравствуйте.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffRegistrationATC - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffRegistrationATC - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje u ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffRegistrationATC - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje u ŘLP' AND taskphase = 6 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje u ŘLP'))),
		'Вылет из CS_SOURCE, Здравствуйте.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffRegistrationATC - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffRegistrationATC - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje u ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffInfoATC - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu sdělí informace o letu' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu sdělí informace o letu'))),
		'CS_DESTINATION, dobrý den, stoupejte do výškové hladiny CS_LEVEL, odlet potvrzen.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffInfoATC - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffInfoATC - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu sdělí informace o letu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffInfoATC - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu sdělí informace o letu' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu sdělí informace o letu'))),
		'CS_DESTINATION, dobrý den, stoupejte do výškové hladiny CS_LEVEL, odlet potvrzen.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffInfoATC - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffInfoATC - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu sdělí informace o letu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffInfoATC - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu sdělí informace o letu' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu sdělí informace o letu'))),
		'CS_DESTINATION, hello, climb to flight level CS_LEVEL, identified departure.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffInfoATC - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffInfoATC - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu sdělí informace o letu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffInfoATC - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu sdělí informace o letu' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu sdělí informace o letu'))),
		'CS_DESTINATION, hello, climb to flight level CS_LEVEL, identified departure.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffInfoATC - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffInfoATC - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu sdělí informace o letu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffInfoATC - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu sdělí informace o letu' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu sdělí informace o letu'))),
		'CS_DESTINATION, Здравствуйте, подняться до уровня полета CS_LEVEL, идентифицированный вылет.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffInfoATC - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffInfoATC - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu sdělí informace o letu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffInfoATC - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu sdělí informace o letu' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu sdělí informace o letu'))),
		'CS_DESTINATION, Здравствуйте, подняться до уровня полета CS_LEVEL, идентифицированный вылет.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffInfoATC - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffInfoATC - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu sdělí informace o letu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffInfoATCAck - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí informace o letu' AND taskphase = 7 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí informace o letu'))),
		'Stoupání do CS_LEVEL, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffInfoATCAck - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffInfoATCAck - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí informace o letu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffInfoATCAck - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí informace o letu' AND taskphase = 7 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí informace o letu'))),
		'Stoupání do CS_LEVEL, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffInfoATCAck - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffInfoATCAck - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí informace o letu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffInfoATCAck - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí informace o letu' AND taskphase = 7 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí informace o letu'))),
		'Clear climb to CS_LEVEL, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffInfoATCAck - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffInfoATCAck - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí informace o letu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffInfoATCAck - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí informace o letu' AND taskphase = 7 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí informace o letu'))),
		'Clear climb to CS_LEVEL, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffInfoATCAck - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffInfoATCAck - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí informace o letu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffInfoATCAck - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí informace o letu' AND taskphase = 7 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí informace o letu'))),
		'Восхождение на уровень полета CS_LEVEL, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffInfoATCAck - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffInfoATCAck - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí informace o letu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffInfoATCAck - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí informace o letu' AND taskphase = 7 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí informace o letu'))),
		'Восхождение на уровень полета CS_LEVEL, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffInfoATCAck - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffInfoATCAck - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí informace o letu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffEnd - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu nahlasí frekvenci pro komunikaci s ŘLP' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu nahlasí frekvenci pro komunikaci s ŘLP'))),
		'CS_SOURCE, další komunikace CS_FREQUENCY.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffEnd - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffEnd - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu nahlasí frekvenci pro komunikaci s ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffEnd - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu nahlasí frekvenci pro komunikaci s ŘLP' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu nahlasí frekvenci pro komunikaci s ŘLP'))),
		'CS_SOURCE, další komunikace CS_FREQUENCY.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffEnd - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffEnd - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu nahlasí frekvenci pro komunikaci s ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffEnd - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu nahlasí frekvenci pro komunikaci s ŘLP' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu nahlasí frekvenci pro komunikaci s ŘLP'))),
		'CS_SOURCE, contract control CS_FREQUENCY.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffEnd - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffEnd - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu nahlasí frekvenci pro komunikaci s ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffEnd - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu nahlasí frekvenci pro komunikaci s ŘLP' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu nahlasí frekvenci pro komunikaci s ŘLP'))),
		'CS_SOURCE, contract control CS_FREQUENCY.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffEnd - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffEnd - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu nahlasí frekvenci pro komunikaci s ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffEnd - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu nahlasí frekvenci pro komunikaci s ŘLP' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu nahlasí frekvenci pro komunikaci s ŘLP'))),
		'CS_SOURCE, частота для связи CS_FREQUENCY.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffEnd - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffEnd - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu nahlasí frekvenci pro komunikaci s ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffEnd - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu nahlasí frekvenci pro komunikaci s ŘLP' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu nahlasí frekvenci pro komunikaci s ŘLP'))),
		'CS_SOURCE, частота для связи CS_FREQUENCY.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffEnd - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffEnd - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu nahlasí frekvenci pro komunikaci s ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffEndAck - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci pro komunikaci s ŘLP' AND taskphase = 8 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci pro komunikaci s ŘLP'))),
		'CS_SOURCE CS_FREQUENCY, přeji pěkný den.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffEndAck - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffEndAck - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci pro komunikaci s ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffEndAck - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci pro komunikaci s ŘLP' AND taskphase = 8 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci pro komunikaci s ŘLP'))),
		'CS_SOURCE CS_FREQUENCY, přeji pěkný den.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffEndAck - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffEndAck - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci pro komunikaci s ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffEndAck - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci pro komunikaci s ŘLP' AND taskphase = 8 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci pro komunikaci s ŘLP'))),
		'CS_SOURCE CS_FREQUENCY, good day sir.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffEndAck - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffEndAck - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci pro komunikaci s ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffEndAck - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci pro komunikaci s ŘLP' AND taskphase = 8 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci pro komunikaci s ŘLP'))),
		'CS_SOURCE CS_FREQUENCY, good day sir.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffEndAck - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffEndAck - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci pro komunikaci s ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffEndAck - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci pro komunikaci s ŘLP' AND taskphase = 8 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci pro komunikaci s ŘLP'))),
		'CS_SOURCE CS_FREQUENCY, хорошего дня, сэр.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffEndAck - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffEndAck - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci pro komunikaci s ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'TakeoffEndAck - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci pro komunikaci s ŘLP' AND taskphase = 8 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci pro komunikaci s ŘLP'))),
		'CS_SOURCE CS_FREQUENCY, хорошего дня, сэр.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'TakeoffEndAck - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'TakeoffEndAck - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí frekvenci pro komunikaci s ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingRegistration - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje na věži pro přistání' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje na věži pro přistání'))),
		'CS_DESTINATION, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingRegistration - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingRegistration - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje na věži pro přistání');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingRegistration - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje na věži pro přistání' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje na věži pro přistání'))),
		'CS_DESTINATION, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingRegistration - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingRegistration - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje na věži pro přistání');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingRegistration - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje na věži pro přistání' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje na věži pro přistání'))),
		'CS_DESTINATION, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingRegistration - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingRegistration - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje na věži pro přistání');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingRegistration - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje na věži pro přistání' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje na věži pro přistání'))),
		'CS_DESTINATION, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingRegistration - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingRegistration - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje na věži pro přistání');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingRegistration - RU, BEG', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje na věži pro přistání' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje na věži pro přistání'))),
		'CS_DESTINATION, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingRegistration - RU, BEG'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingRegistration - RU, BEG';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje na věži pro přistání');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingRegistration - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje na věži pro přistání' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje na věži pro přistání'))),
		'CS_DESTINATION, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingRegistration - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingRegistration - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se registruje na věži pro přistání');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingRegistrationAck - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž - pokračuj' AND taskphase = 8 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž - pokračuj'))),
		'CS_DESTINATION, CS_SOURCE, pokračuj.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingRegistrationAck - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingRegistrationAck - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž - pokračuj');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingRegistrationAck - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž - pokračuj' AND taskphase = 8 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž - pokračuj'))),
		'CS_DESTINATION, CS_SOURCE, pokračuj.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingRegistrationAck - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingRegistrationAck - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž - pokračuj');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingRegistrationAck - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž - pokračuj' AND taskphase = 8 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž - pokračuj'))),
		'CS_DESTINATION, CS_SOURCE, go ahead.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingRegistrationAck - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingRegistrationAck - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž - pokračuj');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingRegistrationAck - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž - pokračuj' AND taskphase = 8 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž - pokračuj'))),
		'CS_DESTINATION, CS_SOURCE, go ahead.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingRegistrationAck - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingRegistrationAck - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž - pokračuj');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingRegistrationAck - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž - pokračuj' AND taskphase = 8 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž - pokračuj'))),
		'CS_DESTINATION, CS_SOURCE, преуспевать.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingRegistrationAck - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingRegistrationAck - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž - pokračuj');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingRegistrationAck - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž - pokračuj' AND taskphase = 8 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž - pokračuj'))),
		'CS_DESTINATION, CS_SOURCE, преуспевать.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingRegistrationAck - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingRegistrationAck - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž - pokračuj');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingAircraftInfo - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí informace o sobě' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí informace o sobě'))),
		'CS_SOURCE, CS_STARTPOSITION v CS_LEVEL s informacemi Foxtrot.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingAircraftInfo - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingAircraftInfo - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí informace o sobě');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingAircraftInfo - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí informace o sobě' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí informace o sobě'))),
		'CS_SOURCE, CS_STARTPOSITION v CS_LEVEL s informacemi Foxtrot.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingAircraftInfo - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingAircraftInfo - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí informace o sobě');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingAircraftInfo - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí informace o sobě' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí informace o sobě'))),
		'CS_SOURCE, CS_STARTPOSITION at CS_LEVEL with information Foxtrot.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingAircraftInfo - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingAircraftInfo - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí informace o sobě');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingAircraftInfo - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí informace o sobě' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí informace o sobě'))),
		'CS_SOURCE, CS_STARTPOSITION at CS_LEVEL with information Foxtrot.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingAircraftInfo - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingAircraftInfo - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí informace o sobě');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingAircraftInfo - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí informace o sobě' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí informace o sobě'))),
		'CS_SOURCE, CS_STARTPOSITION в CS_LEVEL с информацией Foxtrot.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingAircraftInfo - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingAircraftInfo - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí informace o sobě');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingAircraftInfo - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí informace o sobě' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí informace o sobě'))),
		'CS_SOURCE, CS_STARTPOSITION в CS_LEVEL с информацией Foxtrot.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingAircraftInfo - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingAircraftInfo - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí informace o sobě');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingRunway - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí, která runway' AND taskphase = 9 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí, která runway'))),
		'CS_DESTINATION, CS_SOURCE, přistávací dráha CS_RUNWAY.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingRunway - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingRunway - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí, která runway');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingRunway - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí, která runway' AND taskphase = 9 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí, která runway'))),
		'CS_DESTINATION, CS_SOURCE, přistávací dráha CS_RUNWAY.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingRunway - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingRunway - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí, která runway');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingRunway - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí, která runway' AND taskphase = 9 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí, která runway'))),
		'CS_DESTINATION, CS_SOURCE, report entering runway CS_RUNWAY',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingRunway - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingRunway - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí, která runway');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingRunway - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí, která runway' AND taskphase = 9 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí, která runway'))),
		'CS_DESTINATION, CS_SOURCE, report entering runway CS_RUNWAY',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingRunway - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingRunway - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí, která runway');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingRunway - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí, která runway' AND taskphase = 9 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí, která runway'))),
		'CS_DESTINATION, CS_SOURCE, вход взлетно-посадочной полосы CS_RUNWAY',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingRunway - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingRunway - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí, která runway');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingRunway - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí, která runway' AND taskphase = 9 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí, která runway'))),
		'CS_DESTINATION, CS_SOURCE, вход взлетно-посадочной полосы CS_RUNWAY',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingRunway - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingRunway - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž nahlásí, která runway');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingRunwayAck - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway'))),
		'CS_SOURCE, přistávací dráha CS_RUNWAY.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingRunwayAck - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingRunwayAck - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingRunwayAck - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway'))),
		'CS_SOURCE, přistávací dráha CS_RUNWAY.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingRunwayAck - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingRunwayAck - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingRunwayAck - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway'))),
		'CS_SOURCE, entering runway CS_RUNWAY',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingRunwayAck - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingRunwayAck - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingRunwayAck - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway'))),
		'CS_SOURCE, entering runway CS_RUNWAY',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingRunwayAck - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingRunwayAck - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingRunwayAck - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway'))),
		'CS_SOURCE, вход на ВПП CS_RUNWAY',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingRunwayAck - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingRunwayAck - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingRunwayAck - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway'))),
		'CS_SOURCE, вход на ВПП CS_RUNWAY',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingRunwayAck - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingRunwayAck - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí runway');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingCleared - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povolí přistání' AND taskphase = 10 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povolí přistání'))),
		'CS_DESTINATION, CS_SOURCE, přistání povoleno.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingCleared - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingCleared - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povolí přistání');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingCleared - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povolí přistání' AND taskphase = 10 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povolí přistání'))),
		'CS_DESTINATION, CS_SOURCE, přistání povoleno.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingCleared - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingCleared - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povolí přistání');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingCleared - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povolí přistání' AND taskphase = 10 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povolí přistání'))),
		'CS_DESTINATION, CS_SOURCE, cleared to land.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingCleared - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingCleared - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povolí přistání');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingCleared - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povolí přistání' AND taskphase = 10 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povolí přistání'))),
		'CS_DESTINATION, CS_SOURCE, cleared to land.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingCleared - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingCleared - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povolí přistání');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingCleared - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povolí přistání' AND taskphase = 10 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povolí přistání'))),
		'CS_DESTINATION, CS_SOURCE, допустимая посадка.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingCleared - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingCleared - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povolí přistání');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingCleared - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povolí přistání' AND taskphase = 10 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povolí přistání'))),
		'CS_DESTINATION, CS_SOURCE, допустимая посадка.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingCleared - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingCleared - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řídící věž povolí přistání');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingClearedAck - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí přistání' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí přistání'))),
		'CS_SOURCE, přistání povoleno.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingClearedAck - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingClearedAck - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí přistání');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingClearedAck - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí přistání' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí přistání'))),
		'CS_SOURCE, přistání povoleno.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingClearedAck - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingClearedAck - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí přistání');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingClearedAck - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí přistání' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí přistání'))),
		'CS_SOURCE, cleared to land.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingClearedAck - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingClearedAck - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí přistání');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingClearedAck - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí přistání' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí přistání'))),
		'CS_SOURCE, cleared to land.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingClearedAck - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingClearedAck - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí přistání');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingClearedAck - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí přistání' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí přistání'))),
		'CS_SOURCE, Я подтверждаю приземление.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingClearedAck - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingClearedAck - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí přistání');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'LandingClearedAck - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí přistání' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí přistání'))),
		'CS_SOURCE, Я подтверждаю приземление.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'LandingClearedAck - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'LandingClearedAck - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí přistání');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightRegistrationReq - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se ohlásí na ŘLP' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se ohlásí na ŘLP'))),
		'CS_DESTINATION, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightRegistrationReq - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightRegistrationReq - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se ohlásí na ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightRegistrationReq - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se ohlásí na ŘLP' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se ohlásí na ŘLP'))),
		'CS_DESTINATION, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightRegistrationReq - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightRegistrationReq - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se ohlásí na ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightRegistrationReq - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se ohlásí na ŘLP' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se ohlásí na ŘLP'))),
		'CS_DESTINATION, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightRegistrationReq - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightRegistrationReq - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se ohlásí na ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightRegistrationReq - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se ohlásí na ŘLP' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se ohlásí na ŘLP'))),
		'CS_DESTINATION, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightRegistrationReq - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightRegistrationReq - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se ohlásí na ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightRegistrationReq - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se ohlásí na ŘLP' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se ohlásí na ŘLP'))),
		'CS_DESTINATION, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightRegistrationReq - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightRegistrationReq - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se ohlásí na ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightRegistrationReq - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se ohlásí na ŘLP' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se ohlásí na ŘLP'))),
		'CS_DESTINATION, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightRegistrationReq - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightRegistrationReq - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo se ohlásí na ŘLP');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightRegistration - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu čeká na pokračování' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu čeká na pokračování'))),
		'CS_DESTINATION zde CS_SOURCE pokračuj.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightRegistration - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightRegistration - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu čeká na pokračování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightRegistration - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu čeká na pokračování' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu čeká na pokračování'))),
		'CS_DESTINATION zde CS_SOURCE pokračuj.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightRegistration - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightRegistration - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu čeká na pokračování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightRegistration - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu čeká na pokračování' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu čeká na pokračování'))),
		'CS_DESTINATION, this is CS_SOURCE, go ahead.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightRegistration - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightRegistration - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu čeká na pokračování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightRegistration - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu čeká na pokračování' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu čeká na pokračování'))),
		'CS_DESTINATION, this is CS_SOURCE, go ahead.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightRegistration - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightRegistration - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu čeká na pokračování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightRegistration - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu čeká na pokračování' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu čeká na pokračování'))),
		'CS_DESTINATION, здесь CS_SOURCE, двигаться вперед.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightRegistration - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightRegistration - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu čeká na pokračování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightRegistration - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu čeká na pokračování' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu čeká na pokračování'))),
		'CS_DESTINATION, здесь CS_SOURCE, двигаться вперед.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightRegistration - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightRegistration - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu čeká na pokračování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlighChangePlanReq - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dá požadavek na změnu letového plánu' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dá požadavek na změnu letového plánu'))),
		'CS_SOURCE žádám o změnu letového plánu z CS_STARTPOSITION do CS_ENDPOSITION.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlighChangePlanReq - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlighChangePlanReq - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dá požadavek na změnu letového plánu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlighChangePlanReq - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dá požadavek na změnu letového plánu' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dá požadavek na změnu letového plánu'))),
		'CS_SOURCE žádám o změnu letového plánu z CS_STARTPOSITION do CS_ENDPOSITION.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlighChangePlanReq - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlighChangePlanReq - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dá požadavek na změnu letového plánu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlighChangePlanReq - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dá požadavek na změnu letového plánu' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dá požadavek na změnu letového plánu'))),
		'CS_SOURCE request open flight plan from CS_STARTPOSITION to CS_ENDPOSITION.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlighChangePlanReq - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlighChangePlanReq - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dá požadavek na změnu letového plánu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlighChangePlanReq - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dá požadavek na změnu letového plánu' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dá požadavek na změnu letového plánu'))),
		'CS_SOURCE request open flight plan from CS_STARTPOSITION to CS_ENDPOSITION.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlighChangePlanReq - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlighChangePlanReq - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dá požadavek na změnu letového plánu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlighChangePlanReq - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dá požadavek na změnu letového plánu' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dá požadavek na změnu letového plánu'))),
		'CS_SOURCE запросить открытый план полета CS_STARTPOSITION к CS_ENDPOSITION.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlighChangePlanReq - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlighChangePlanReq - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dá požadavek na změnu letového plánu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlighChangePlanReq - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dá požadavek na změnu letového plánu' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dá požadavek na změnu letového plánu'))),
		'CS_SOURCE запросить открытый план полета CS_STARTPOSITION к CS_ENDPOSITION.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlighChangePlanReq - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlighChangePlanReq - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo dá požadavek na změnu letového plánu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlighChangePlan - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu odsouhlasí plán' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu odsouhlasí plán'))),
		'CS_DESTINATION, váš letový plán je povolen.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlighChangePlan - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlighChangePlan - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu odsouhlasí plán');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlighChangePlan - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu odsouhlasí plán' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu odsouhlasí plán'))),
		'CS_DESTINATION, váš letový plán je povolen.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlighChangePlan - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlighChangePlan - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu odsouhlasí plán');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlighChangePlan - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu odsouhlasí plán' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu odsouhlasí plán'))),
		'CS_DESTINATION, your flight plan is open.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlighChangePlan - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlighChangePlan - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu odsouhlasí plán');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlighChangePlan - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu odsouhlasí plán' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu odsouhlasí plán'))),
		'CS_DESTINATION, your flight plan is open.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlighChangePlan - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlighChangePlan - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu odsouhlasí plán');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlighChangePlan - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu odsouhlasí plán' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu odsouhlasí plán'))),
		'CS_DESTINATION, ваш план полета открыт.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlighChangePlan - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlighChangePlan - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu odsouhlasí plán');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlighChangePlan - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu odsouhlasí plán' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu odsouhlasí plán'))),
		'CS_DESTINATION, ваш план полета открыт.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlighChangePlan - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlighChangePlan - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'řízení letového provozu odsouhlasí plán');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlighEndCommunication - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí konverzaci' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí konverzaci'))),
		'Děkuji, hezký den CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlighEndCommunication - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlighEndCommunication - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí konverzaci');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlighEndCommunication - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí konverzaci' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí konverzaci'))),
		'Děkuji, hezký den CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlighEndCommunication - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlighEndCommunication - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí konverzaci');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlighEndCommunication - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí konverzaci' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí konverzaci'))),
		'Thanks, good day, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlighEndCommunication - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlighEndCommunication - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí konverzaci');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlighEndCommunication - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí konverzaci' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí konverzaci'))),
		'Thanks, good day, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlighEndCommunication - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlighEndCommunication - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí konverzaci');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlighEndCommunication - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí konverzaci' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí konverzaci'))),
		'Cпасибо, хороший день, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlighEndCommunication - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlighEndCommunication - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí konverzaci');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlighEndCommunication - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí konverzaci' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí konverzaci'))),
		'Cпасибо, хороший день, CS_SOURCE.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlighEndCommunication - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlighEndCommunication - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí konverzaci');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightInfo - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo sdělí informace o něm (palivo atd.)' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo sdělí informace o něm (palivo atd.)'))),
		'CS_SOURCE, palivo: CS_FUEL.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightInfo - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightInfo - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo sdělí informace o něm (palivo atd.)');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightInfo - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo sdělí informace o něm (palivo atd.)' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo sdělí informace o něm (palivo atd.)'))),
		'CS_SOURCE, palivo: CS_FUEL.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightInfo - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightInfo - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo sdělí informace o něm (palivo atd.)');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightInfo - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo sdělí informace o něm (palivo atd.)' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo sdělí informace o něm (palivo atd.)'))),
		'CS_SOURCE, fuel: CS_FUEL.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightInfo - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightInfo - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo sdělí informace o něm (palivo atd.)');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightInfo - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo sdělí informace o něm (palivo atd.)' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo sdělí informace o něm (palivo atd.)'))),
		'CS_SOURCE, fuel: CS_FUEL.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightInfo - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightInfo - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo sdělí informace o něm (palivo atd.)');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightInfo - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo sdělí informace o něm (palivo atd.)' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo sdělí informace o něm (palivo atd.)'))),
		'CS_SOURCE, топливо: CS_FUEL.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightInfo - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightInfo - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo sdělí informace o něm (palivo atd.)');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FlightInfo - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo sdělí informace o něm (palivo atd.)' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo sdělí informace o něm (palivo atd.)'))),
		'CS_SOURCE, топливо: CS_FUEL.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FlightInfo - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FlightInfo - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo sdělí informace o něm (palivo atd.)');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftReady - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno k navádění.' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno k navádění.'))),
		'CS_SOURCE, CS_DESTINATION připraven k navádění, cíl CS_ENDPOSITION.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftReady - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftReady - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno k navádění.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftReady - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno k navádění.' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno k navádění.'))),
		'CS_SOURCE, CS_DESTINATION připraven k navádění, cíl CS_ENDPOSITION.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftReady - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftReady - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno k navádění.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftReady - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno k navádění.' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno k navádění.'))),
		'CS_SOURCE, CS_DESTINATION ready for gameplan, target CS_ENDPOSITION',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftReady - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftReady - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno k navádění.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftReady - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno k navádění.' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno k navádění.'))),
		'CS_SOURCE, CS_DESTINATION ready for gameplan, target CS_ENDPOSITION',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftReady - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftReady - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno k navádění.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftReady - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno k navádění.' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno k navádění.'))),
		'CS_SOURCE, CS_DESTINATION ready for gameplan, цель CS_ENDPOSITION',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftReady - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftReady - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno k navádění.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftReady - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno k navádění.' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno k navádění.'))),
		'CS_SOURCE, CS_DESTINATION ready for gameplan, цель CS_ENDPOSITION',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftReady - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftReady - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo je připraveno k navádění.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftWeapon - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname LIKE 'JTACEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá pokyn k aktivování zbraní.' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname LIKE 'JTACEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá pokyn k aktivování zbraní.'))),
		'CS_DESTINATION potvrďte cíl CS_ENDPOSITION a aktivujte zbraňový systém.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftWeapon - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftWeapon - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá pokyn k aktivování zbraní.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftWeapon - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname LIKE 'JTACEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá pokyn k aktivování zbraní.' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname LIKE 'JTACEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá pokyn k aktivování zbraní.'))),
		'CS_DESTINATION potvrďte cíl CS_ENDPOSITION a aktivujte zbraňový systém.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftWeapon - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftWeapon - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá pokyn k aktivování zbraní.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftWeapon - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname LIKE 'JTACEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá pokyn k aktivování zbraní.' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname LIKE 'JTACEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá pokyn k aktivování zbraní.'))),
		'CS_DESTINATION confirm target CS_ENDPOSITION and activate weapon',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftWeapon - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftWeapon - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá pokyn k aktivování zbraní.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftWeapon - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname LIKE 'JTACEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá pokyn k aktivování zbraní.' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname LIKE 'JTACEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá pokyn k aktivování zbraní.'))),
		'CS_DESTINATION confirm target CS_ENDPOSITION and activate weapon',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftWeapon - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftWeapon - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá pokyn k aktivování zbraní.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftWeapon - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname LIKE 'JTACEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá pokyn k aktivování zbraní.' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname LIKE 'JTACEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá pokyn k aktivování zbraní.'))),
		'CS_DESTINATION подтвердите свой пункт назначения CS_ENDPOSITION и активировать оружие',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftWeapon - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftWeapon - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá pokyn k aktivování zbraní.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftWeapon - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname LIKE 'JTACEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá pokyn k aktivování zbraní.' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname LIKE 'JTACEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá pokyn k aktivování zbraní.'))),
		'CS_DESTINATION подтвердите свой пункт назначения CS_ENDPOSITION и активировать оружие',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftWeapon - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftWeapon - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá pokyn k aktivování zbraní.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftWeaponAck - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí aktivování zbraní' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí aktivování zbraní'))),
		'CS_SOURCE zbraňový systém aktivován.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftWeaponAck - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftWeaponAck - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí aktivování zbraní');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftWeaponAck - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí aktivování zbraní' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí aktivování zbraní'))),
		'CS_SOURCE zbraňový systém aktivován.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftWeaponAck - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftWeaponAck - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí aktivování zbraní');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftWeaponAck - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí aktivování zbraní' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí aktivování zbraní'))),
		'CS_SOURCE weapon activated.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftWeaponAck - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftWeaponAck - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí aktivování zbraní');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftWeaponAck - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí aktivování zbraní' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí aktivování zbraní'))),
		'CS_SOURCE weapon activated.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftWeaponAck - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftWeaponAck - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí aktivování zbraní');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftWeaponAck - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí aktivování zbraní' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí aktivování zbraní'))),
		'CS_SOURCE активировано оружие.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftWeaponAck - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftWeaponAck - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí aktivování zbraní');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftWeaponAck - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí aktivování zbraní' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí aktivování zbraní'))),
		'CS_SOURCE активировано оружие.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftWeaponAck - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftWeaponAck - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo potvrdí aktivování zbraní');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftInArea - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí vstup do naváděné oblasti' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí vstup do naváděné oblasti'))),
		'CS_SOURCE, vstup cílového prostoru.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftInArea - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftInArea - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí vstup do naváděné oblasti');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftInArea - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí vstup do naváděné oblasti' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí vstup do naváděné oblasti'))),
		'CS_SOURCE, vstup cílového prostoru.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftInArea - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftInArea - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí vstup do naváděné oblasti');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftInArea - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí vstup do naváděné oblasti' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí vstup do naváděné oblasti'))),
		'CS_SOURCE, IP inbound.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftInArea - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftInArea - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí vstup do naváděné oblasti');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftInArea - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí vstup do naváděné oblasti' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí vstup do naváděné oblasti'))),
		'CS_SOURCE, IP inbound.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftInArea - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftInArea - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí vstup do naváděné oblasti');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftInArea - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí vstup do naváděné oblasti' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí vstup do naváděné oblasti'))),
		'CS_SOURCE, вход в область управления.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftInArea - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftInArea - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí vstup do naváděné oblasti');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftInArea - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí vstup do naváděné oblasti' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí vstup do naváděné oblasti'))),
		'CS_SOURCE, вход в область управления.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftInArea - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftInArea - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí vstup do naváděné oblasti');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftContinue - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname LIKE 'JTACEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá příkaz k pokračování.' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname LIKE 'JTACEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá příkaz k pokračování.'))),
		'CS_DESTINATION, pokračuj.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftContinue - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftContinue - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá příkaz k pokračování.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftContinue - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname LIKE 'JTACEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá příkaz k pokračování.' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname LIKE 'JTACEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá příkaz k pokračování.'))),
		'CS_DESTINATION, pokračuj.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftContinue - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftContinue - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá příkaz k pokračování.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftContinue - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname LIKE 'JTACEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá příkaz k pokračování.' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname LIKE 'JTACEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá příkaz k pokračování.'))),
		'CS_DESTINATION, continue.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftContinue - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftContinue - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá příkaz k pokračování.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftContinue - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname LIKE 'JTACEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá příkaz k pokračování.' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname LIKE 'JTACEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá příkaz k pokračování.'))),
		'CS_DESTINATION, continue.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftContinue - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftContinue - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá příkaz k pokračování.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftContinue - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname LIKE 'JTACEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá příkaz k pokračování.' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname LIKE 'JTACEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá příkaz k pokračování.'))),
		'CS_DESTINATION, двигаться вперед.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftContinue - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftContinue - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá příkaz k pokračování.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftContinue - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname LIKE 'JTACEvaluator'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá příkaz k pokračování.' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname LIKE 'JTACEvaluator')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá příkaz k pokračování.'))),
		'CS_DESTINATION, двигаться вперед.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftContinue - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftContinue - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'naváděcí jednotka dá příkaz k pokračování.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftContact - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí kontakt s nepřítelem.' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí kontakt s nepřítelem.'))),
		'CS_SOURCE, kontakt.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftContact - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftContact - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí kontakt s nepřítelem.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftContact - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí kontakt s nepřítelem.' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí kontakt s nepřítelem.'))),
		'CS_SOURCE, kontakt.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftContact - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftContact - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí kontakt s nepřítelem.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftContact - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí kontakt s nepřítelem.' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí kontakt s nepřítelem.'))),
		'CS_SOURCE, contact.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftContact - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftContact - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí kontakt s nepřítelem.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftContact - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí kontakt s nepřítelem.' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí kontakt s nepřítelem.'))),
		'CS_SOURCE, contact.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftContact - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftContact - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí kontakt s nepřítelem.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftContact - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí kontakt s nepřítelem.' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí kontakt s nepřítelem.'))),
		'CS_SOURCE, контакт.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftContact - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftContact - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí kontakt s nepřítelem.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftContact - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí kontakt s nepřítelem.' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí kontakt s nepřítelem.'))),
		'CS_SOURCE, контакт.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftContact - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftContact - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo nahlásí kontakt s nepřítelem.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftEnd - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí komunikaci.' AND taskphase = 5 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí komunikaci.'))),
		'CS_SOURCE, připraven na další instrukce.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftEnd - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftEnd - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí komunikaci.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftEnd - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí komunikaci.' AND taskphase = 5 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí komunikaci.'))),
		'CS_SOURCE, připraven na další instrukce.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftEnd - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftEnd - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí komunikaci.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftEnd - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí komunikaci.' AND taskphase = 5 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí komunikaci.'))),
		'CS_SOURCE, ready for next.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftEnd - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftEnd - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí komunikaci.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftEnd - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí komunikaci.' AND taskphase = 5 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí komunikaci.'))),
		'CS_SOURCE, ready for next.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftEnd - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftEnd - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí komunikaci.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftEnd - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí komunikaci.' AND taskphase = 5 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí komunikaci.'))),
		'CS_SOURCE, готов к следующему.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftEnd - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftEnd - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí komunikaci.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GuidingAircraftEnd - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí komunikaci.' AND taskphase = 5 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí komunikaci.'))),
		'CS_SOURCE, готов к следующему.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GuidingAircraftEnd - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GuidingAircraftEnd - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'letadlo ukončí komunikaci.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'UAVControlActivated - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'UAVExploration' AND wasp_taskname LIKE 'behavior/Movement/uavExploration'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'uav je aktivován.' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'UAVExploration' AND wasp_taskname LIKE 'behavior/Movement/uavExploration')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'uav je aktivován.'))),
		'CS_SOURCE aktivován.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UAVControlActivated - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'UAVControlActivated - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'uav je aktivován.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'UAVControlActivated - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'UAVExploration' AND wasp_taskname LIKE 'behavior/Movement/uavExploration'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'uav je aktivován.' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'UAVExploration' AND wasp_taskname LIKE 'behavior/Movement/uavExploration')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'uav je aktivován.'))),
		'CS_SOURCE aktivován.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UAVControlActivated - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'UAVControlActivated - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'uav je aktivován.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'UAVControlActivated - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'UAVExploration' AND wasp_taskname LIKE 'behavior/Movement/uavExploration'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'uav je aktivován.' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'UAVExploration' AND wasp_taskname LIKE 'behavior/Movement/uavExploration')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'uav je aktivován.'))),
		'CS_SOURCE activated.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UAVControlActivated - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'UAVControlActivated - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'uav je aktivován.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'UAVControlActivated - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'UAVExploration' AND wasp_taskname LIKE 'behavior/Movement/uavExploration'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'uav je aktivován.' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'UAVExploration' AND wasp_taskname LIKE 'behavior/Movement/uavExploration')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'uav je aktivován.'))),
		'CS_SOURCE activated.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UAVControlActivated - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'UAVControlActivated - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'uav je aktivován.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'UAVControlActivated - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'UAVExploration' AND wasp_taskname LIKE 'behavior/Movement/uavExploration'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'uav je aktivován.' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'UAVExploration' AND wasp_taskname LIKE 'behavior/Movement/uavExploration')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'uav je aktivován.'))),
		'CS_SOURCE активированный.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UAVControlActivated - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'UAVControlActivated - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'uav je aktivován.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'UAVControlActivated - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'UAVExploration' AND wasp_taskname LIKE 'behavior/Movement/uavExploration'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'uav je aktivován.' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'UAVExploration' AND wasp_taskname LIKE 'behavior/Movement/uavExploration')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'uav je aktivován.'))),
		'CS_SOURCE активированный.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'UAVControlActivated - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'UAVControlActivated - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'uav je aktivován.');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'StartObserveAfterPath - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname LIKE 'behavior/Warfare/ObserveAfterRoute'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení průzkumu na dané trase' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname LIKE 'behavior/Warfare/ObserveAfterRoute')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení průzkumu na dané trase'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE zahajuji průzkum po trase.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'StartObserveAfterPath - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'StartObserveAfterPath - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení průzkumu na dané trase');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'StartObserveAfterPath - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname LIKE 'behavior/Warfare/ObserveAfterRoute'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení průzkumu na dané trase' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname LIKE 'behavior/Warfare/ObserveAfterRoute')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení průzkumu na dané trase'))),
		'CS_DESTINATION zde CS_SOURCE zahajuji průzkum po trase.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'StartObserveAfterPath - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'StartObserveAfterPath - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení průzkumu na dané trase');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'StartObserveAfterPath - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname LIKE 'behavior/Warfare/ObserveAfterRoute'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení průzkumu na dané trase' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname LIKE 'behavior/Warfare/ObserveAfterRoute')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení průzkumu na dané trase'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE I''m starting to explore the route.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'StartObserveAfterPath - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'StartObserveAfterPath - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení průzkumu na dané trase');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'StartObserveAfterPath - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname LIKE 'behavior/Warfare/ObserveAfterRoute'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení průzkumu na dané trase' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname LIKE 'behavior/Warfare/ObserveAfterRoute')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení průzkumu na dané trase'))),
		'CS_DESTINATION from CS_SOURCE I''m starting to explore the route.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'StartObserveAfterPath - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'StartObserveAfterPath - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení průzkumu na dané trase');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'StartObserveAfterPath - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname LIKE 'behavior/Warfare/ObserveAfterRoute'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení průzkumu na dané trase' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname LIKE 'behavior/Warfare/ObserveAfterRoute')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení průzkumu na dané trase'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Я начинаю исследовать маршрут.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'StartObserveAfterPath - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'StartObserveAfterPath - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení průzkumu na dané trase');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'StartObserveAfterPath - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname LIKE 'behavior/Warfare/ObserveAfterRoute'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení průzkumu na dané trase' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname LIKE 'behavior/Warfare/ObserveAfterRoute')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení průzkumu na dané trase'))),
		'CS_DESTINATION здесь CS_SOURCE Я начинаю исследовать маршрут.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'StartObserveAfterPath - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'StartObserveAfterPath - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení průzkumu na dané trase');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'EndObserveAfterPath - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname LIKE 'behavior/Warfare/ObserveAfterRoute'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení průzkumu na dané trase' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname LIKE 'behavior/Warfare/ObserveAfterRoute')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení průzkumu na dané trase'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE končím průzkum po trase.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'EndObserveAfterPath - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'EndObserveAfterPath - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení průzkumu na dané trase');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'EndObserveAfterPath - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname LIKE 'behavior/Warfare/ObserveAfterRoute'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení průzkumu na dané trase' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname LIKE 'behavior/Warfare/ObserveAfterRoute')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení průzkumu na dané trase'))),
		'CS_DESTINATION zde CS_SOURCE končím průzkum po trase.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'EndObserveAfterPath - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'EndObserveAfterPath - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení průzkumu na dané trase');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'EndObserveAfterPath - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname LIKE 'behavior/Warfare/ObserveAfterRoute'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení průzkumu na dané trase' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname LIKE 'behavior/Warfare/ObserveAfterRoute')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení průzkumu na dané trase'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE I finish exploring the route.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'EndObserveAfterPath - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'EndObserveAfterPath - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení průzkumu na dané trase');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'EndObserveAfterPath - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname LIKE 'behavior/Warfare/ObserveAfterRoute'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení průzkumu na dané trase' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname LIKE 'behavior/Warfare/ObserveAfterRoute')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení průzkumu na dané trase'))),
		'CS_DESTINATION from CS_SOURCE I finish exploring the route.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'EndObserveAfterPath - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'EndObserveAfterPath - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení průzkumu na dané trase');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'EndObserveAfterPath - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname LIKE 'behavior/Warfare/ObserveAfterRoute'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení průzkumu na dané trase' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname LIKE 'behavior/Warfare/ObserveAfterRoute')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení průzkumu na dané trase'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Я заканчиваю изучение маршрута.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'EndObserveAfterPath - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'EndObserveAfterPath - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení průzkumu na dané trase');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'EndObserveAfterPath - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname LIKE 'behavior/Warfare/ObserveAfterRoute'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení průzkumu na dané trase' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname LIKE 'behavior/Warfare/ObserveAfterRoute')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení průzkumu na dané trase'))),
		'CS_DESTINATION здесь CS_SOURCE Я заканчиваю изучение маршрута.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'EndObserveAfterPath - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'EndObserveAfterPath - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení průzkumu na dané trase');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'StartObserveOnPoint - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ObserveOnPoint'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení pozorování na dané pozici' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ObserveOnPoint')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení pozorování na dané pozici'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE zahajuji pozorování.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'StartObserveOnPoint - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'StartObserveOnPoint - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení pozorování na dané pozici');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'StartObserveOnPoint - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ObserveOnPoint'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení pozorování na dané pozici' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ObserveOnPoint')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení pozorování na dané pozici'))),
		'CS_DESTINATION zde CS_SOURCE zahajuji pozorování.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'StartObserveOnPoint - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'StartObserveOnPoint - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení pozorování na dané pozici');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'StartObserveOnPoint - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ObserveOnPoint'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení pozorování na dané pozici' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ObserveOnPoint')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení pozorování na dané pozici'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE I start watching.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'StartObserveOnPoint - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'StartObserveOnPoint - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení pozorování na dané pozici');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'StartObserveOnPoint - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ObserveOnPoint'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení pozorování na dané pozici' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ObserveOnPoint')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení pozorování na dané pozici'))),
		'CS_DESTINATION from CS_SOURCE I start watching.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'StartObserveOnPoint - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'StartObserveOnPoint - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení pozorování na dané pozici');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'StartObserveOnPoint - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ObserveOnPoint'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení pozorování na dané pozici' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ObserveOnPoint')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení pozorování na dané pozici'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Я начинаю смотреть.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'StartObserveOnPoint - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'StartObserveOnPoint - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení pozorování na dané pozici');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'StartObserveOnPoint - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ObserveOnPoint'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení pozorování na dané pozici' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ObserveOnPoint')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení pozorování na dané pozici'))),
		'CS_DESTINATION здесь CS_SOURCE Я начинаю смотреть.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'StartObserveOnPoint - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'StartObserveOnPoint - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'zahájení pozorování na dané pozici');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'EndObserveOnPoint - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ObserveOnPoint'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení pozorování na dané pozici' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ObserveOnPoint')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení pozorování na dané pozici'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE ukončuji pozorování.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'EndObserveOnPoint - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'EndObserveOnPoint - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení pozorování na dané pozici');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'EndObserveOnPoint - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ObserveOnPoint'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení pozorování na dané pozici' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ObserveOnPoint')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení pozorování na dané pozici'))),
		'CS_DESTINATION zde CS_SOURCE ukončuji pozorování.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'EndObserveOnPoint - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'EndObserveOnPoint - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení pozorování na dané pozici');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'EndObserveOnPoint - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ObserveOnPoint'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení pozorování na dané pozici' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ObserveOnPoint')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení pozorování na dané pozici'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE I close my observations.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'EndObserveOnPoint - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'EndObserveOnPoint - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení pozorování na dané pozici');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'EndObserveOnPoint - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ObserveOnPoint'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení pozorování na dané pozici' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ObserveOnPoint')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení pozorování na dané pozici'))),
		'CS_DESTINATION from CS_SOURCE I close my observations.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'EndObserveOnPoint - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'EndObserveOnPoint - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení pozorování na dané pozici');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'EndObserveOnPoint - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ObserveOnPoint'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení pozorování na dané pozici' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ObserveOnPoint')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení pozorování na dané pozici'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Я закрываю свои наблюдения.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'EndObserveOnPoint - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'EndObserveOnPoint - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení pozorování na dané pozici');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'EndObserveOnPoint - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ObserveOnPoint'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení pozorování na dané pozici' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ObserveOnPoint')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení pozorování na dané pozici'))),
		'CS_DESTINATION здесь CS_SOURCE Я закрываю свои наблюдения.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'EndObserveOnPoint - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'EndObserveOnPoint - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'ukončení pozorování na dané pozici');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectFireAttackReq - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení útoku přímou palbou' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení útoku přímou palbou'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE útok přímou palbou.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectFireAttackReq - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectFireAttackReq - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení útoku přímou palbou');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectFireAttackReq - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení útoku přímou palbou' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení útoku přímou palbou'))),
		'CS_DESTINATION zde CS_SOURCE útok přímou palbou.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectFireAttackReq - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectFireAttackReq - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení útoku přímou palbou');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectFireAttackReq - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení útoku přímou palbou' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení útoku přímou palbou'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE direct fire attack.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectFireAttackReq - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectFireAttackReq - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení útoku přímou palbou');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectFireAttackReq - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení útoku přímou palbou' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení útoku přímou palbou'))),
		'CS_DESTINATION from CS_SOURCE direct fire attack.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectFireAttackReq - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectFireAttackReq - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení útoku přímou palbou');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectFireAttackReq - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení útoku přímou palbou' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení útoku přímou palbou'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE атака прямым огнем.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectFireAttackReq - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectFireAttackReq - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení útoku přímou palbou');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'DirectFireAttackReq - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení útoku přímou palbou' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení útoku přímou palbou'))),
		'CS_DESTINATION здесь CS_SOURCE атака прямым огнем.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'DirectFireAttackReq - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'DirectFireAttackReq - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení útoku přímou palbou');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectFireAttackReq - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení nepřímého útoku' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení nepřímého útoku'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE útok nepřímou palbou.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectFireAttackReq - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectFireAttackReq - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení nepřímého útoku');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectFireAttackReq - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení nepřímého útoku' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení nepřímého útoku'))),
		'CS_DESTINATION zde CS_SOURCE útok nepřímou palbou.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectFireAttackReq - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectFireAttackReq - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení nepřímého útoku');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectFireAttackReq - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení nepřímého útoku' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení nepřímého útoku'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE indirect fire attack.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectFireAttackReq - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectFireAttackReq - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení nepřímého útoku');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectFireAttackReq - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení nepřímého útoku' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení nepřímého útoku'))),
		'CS_DESTINATION from CS_SOURCE indirect fire attack.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectFireAttackReq - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectFireAttackReq - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení nepřímého útoku');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectFireAttackReq - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení nepřímého útoku' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení nepřímého útoku'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE атака косвенным огнем.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectFireAttackReq - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectFireAttackReq - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení nepřímého útoku');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'IndirectFireAttackReq - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení nepřímého útoku' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení nepřímého útoku'))),
		'CS_DESTINATION здесь CS_SOURCE атака косвенным огнем.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'IndirectFireAttackReq - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'IndirectFireAttackReq - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení nepřímého útoku');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SITREPReport - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SitrepRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SitrepRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SitrepRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SitrepRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE SITREP, stav 1: CS_STRING_1, stav 2: CS_STRING_2, stav 3: CS_STRING_3, stav 4: CS_STRING_4, stav 5: CS_STRING_5, stav 6: CS_STRING_6, stav 7: CS_STRING_7, stav 8: CS_STRING_8, stav 9: CS_STRING_9.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SITREPReport - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SITREPReport - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SITREPReport - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SitrepRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SitrepRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SitrepRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SitrepRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION zde CS_SOURCE SITREP, stav 1: CS_STRING_1, stav 2: CS_STRING_2, stav 3: CS_STRING_3, stav 4: CS_STRING_4, stav 5: CS_STRING_5, stav 6: CS_STRING_6, stav 7: CS_STRING_7, stav 8: CS_STRING_8, stav 9: CS_STRING_9.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SITREPReport - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SITREPReport - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SITREPReport - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SitrepRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SitrepRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SitrepRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SitrepRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE SITREP, State 1: CS_STRING_1, State 2: CS_STRING_2, State 3: CS_STRING_3, State 4: CS_STRING_4, State 5: CS_STRING_5, State 6: CS_STRING_6, State 7: CS_STRING_7, State 8: CS_STRING_8, State 9: CS_STRING_9.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SITREPReport - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SITREPReport - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SITREPReport - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SitrepRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SitrepRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SitrepRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SitrepRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION this is CS_SOURCE SITREP, State 1: CS_STRING_1, State 2: CS_STRING_2, State 3: CS_STRING_3, State 4: CS_STRING_4, State 5: CS_STRING_5, State 6: CS_STRING_6, State 7: CS_STRING_7, State 8: CS_STRING_8, State 9: CS_STRING_9.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SITREPReport - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SITREPReport - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SITREPReport - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SitrepRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SitrepRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SitrepRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SitrepRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE СИТРЕП, СТАТУС 1: CS_STRING_1, СТАТУС 2: CS_STRING_2, СТАТУС 3: CS_STRING_3, СТАТУС 4: CS_STRING_4, СТАТУС 5: CS_STRING_5, СТАТУС 6: CS_STRING_6, СТАТУС 7: CS_STRING_7, СТАТУС 8: CS_STRING_8, СТАТУС 9: CS_STRING_9.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SITREPReport - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SITREPReport - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SITREPReport - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SitrepRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SitrepRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SitrepRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SitrepRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION здесь CS_SOURCE СИТРЕП, СТАТУС 1: CS_STRING_1, СТАТУС 2: CS_STRING_2, СТАТУС 3: CS_STRING_3, СТАТУС 4: CS_STRING_4, СТАТУС 5: CS_STRING_5, СТАТУС 6: CS_STRING_6, СТАТУС 7: CS_STRING_7, СТАТУС 8: CS_STRING_8, СТАТУС 9: CS_STRING_9.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SITREPReport - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SITREPReport - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MEDEVACReport - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MedevacRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/MedevacRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MedevacRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/MedevacRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE MEDEVAC, lajn 1: CS_STRING_1, lajn 2: Frekvence: CS_STRING_2 Herz, CS_STRING_3, lajn 3: CS_STRING_4, lajn 4: CS_STRING_5, lajn 5: CS_STRING_6, lajn 6: CS_STRING_7, lajn 7: CS_STRING_8, lajn 8: CS_STRING_9,lajn 9: CS_STRING_10.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MEDEVACReport - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MEDEVACReport - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MEDEVACReport - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MedevacRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/MedevacRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MedevacRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/MedevacRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION zde CS_SOURCE MEDEVAC, lajn 1: CS_STRING_1, lajn 2: Frekvence: CS_STRING_2 Herz, CS_STRING_3, lajn 3: CS_STRING_4, lajn 4: CS_STRING_5, lajn 5: CS_STRING_6, lajn 6: CS_STRING_7, lajn 7: CS_STRING_8, lajn 8: CS_STRING_9,lajn 9: CS_STRING_10.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MEDEVACReport - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MEDEVACReport - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MEDEVACReport - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MedevacRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/MedevacRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MedevacRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/MedevacRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE MEDEVAC, line 1: CS_STRING_1, line 2: Frekvence: CS_STRING_2 Herz, CS_STRING_3, line 3: CS_STRING_4, line 4: CS_STRING_5, line 5: CS_STRING_6, line 6: CS_STRING_7, line 7: CS_STRING_8, line 8: CS_STRING_9,line 9: CS_STRING_10.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MEDEVACReport - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MEDEVACReport - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MEDEVACReport - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MedevacRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/MedevacRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MedevacRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/MedevacRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION this is CS_SOURCE, MEDEVAC, line 1: CS_STRING_1, line 2: Frekvence: CS_STRING_2 Herz, CS_STRING_3, line 3: CS_STRING_4, line 4: CS_STRING_5, line 5: CS_STRING_6, line 6: CS_STRING_7, line 7: CS_STRING_8, line 8: CS_STRING_9,line 9: CS_STRING_10.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MEDEVACReport - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MEDEVACReport - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MEDEVACReport - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MedevacRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/MedevacRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MedevacRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/MedevacRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE МЕДЕВАК, ЛИНИЯ 1: CS_STRING_1, ЛИНИЯ 2: Frekvence: CS_STRING_2 Herz, CS_STRING_3, ЛИНИЯ 3: CS_STRING_4, ЛИНИЯ 4: CS_STRING_5, ЛИНИЯ 5: CS_STRING_6, ЛИНИЯ 6: CS_STRING_7, ЛИНИЯ 7: CS_STRING_8, ЛИНИЯ 8: CS_STRING_9,ЛИНИЯ 9: CS_STRING_10.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MEDEVACReport - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MEDEVACReport - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MEDEVACReport - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MedevacRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/MedevacRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MedevacRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/MedevacRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION здесь CS_SOURCE МЕДЕВАК, ЛИНИЯ 1: CS_STRING_1, ЛИНИЯ 2: Frekvence: CS_STRING_2 Herz, CS_STRING_3, ЛИНИЯ 3: CS_STRING_4, ЛИНИЯ 4: CS_STRING_5, ЛИНИЯ 5: CS_STRING_6, ЛИНИЯ 6: CS_STRING_7, ЛИНИЯ 7: CS_STRING_8, ЛИНИЯ 8: CS_STRING_9,ЛИНИЯ 9: CS_STRING_10.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MEDEVACReport - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MEDEVACReport - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SALUTEReport - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SaluteRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SaluteRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SaluteRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SaluteRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE SALUTE, S: CS_STRING_1 krát nepřítel, A: CS_STRING_2, L: CS_STRING_3, U: CS_STRING_4, T: CS_STRING_5, E: CS_STRING_6. ',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SALUTEReport - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SALUTEReport - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SALUTEReport - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SaluteRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SaluteRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SaluteRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SaluteRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION zde CS_SOURCE SALUTE, S: CS_STRING_1 krát nepřítel, A: CS_STRING_2, L: CS_STRING_3, U: CS_STRING_4, T: CS_STRING_5, E: CS_STRING_6. ',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SALUTEReport - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SALUTEReport - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SALUTEReport - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SaluteRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SaluteRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SaluteRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SaluteRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE SALUTE, S: CS_STRING_1 enemies, A: CS_STRING_2, L: CS_STRING_3, U: CS_STRING_4, T: CS_STRING_5, E: CS_STRING_6. ',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SALUTEReport - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SALUTEReport - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SALUTEReport - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SaluteRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SaluteRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SaluteRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SaluteRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION this is CS_SOURCE, SALUTE, S: CS_STRING_1 enemies, A: CS_STRING_2, L: CS_STRING_3, U: CS_STRING_4, T: CS_STRING_5, E: CS_STRING_6. ',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SALUTEReport - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SALUTEReport - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SALUTEReport - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SaluteRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SaluteRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SaluteRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SaluteRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE САЛУТЕ, S: CS_STRING_1 раз враг, A: CS_STRING_2, L: CS_STRING_3, U: CS_STRING_4, T: CS_STRING_5, E: CS_STRING_6. ',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SALUTEReport - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SALUTEReport - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'SALUTEReport - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SaluteRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SaluteRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SaluteRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SaluteRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION здесь CS_SOURCE САЛУТЕ, S: CS_STRING_1 раз враг, A: CS_STRING_2, L: CS_STRING_3, U: CS_STRING_4, T: CS_STRING_5, E: CS_STRING_6. ',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'SALUTEReport - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'SALUTEReport - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'CONTACTReport - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ContactRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/ContactRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ContactRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/ContactRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE KONTAKT CS_STRING_1.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'CONTACTReport - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'CONTACTReport - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'CONTACTReport - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ContactRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/ContactRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ContactRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/ContactRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION zde CS_SOURCE KONTAKT CS_STRING_1.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'CONTACTReport - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'CONTACTReport - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'CONTACTReport - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ContactRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/ContactRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ContactRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/ContactRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE CONTACT CS_STRING_1.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'CONTACTReport - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'CONTACTReport - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'CONTACTReport - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ContactRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/ContactRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ContactRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/ContactRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION this is CS_SOURCE CONTACT CS_STRING_1.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'CONTACTReport - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'CONTACTReport - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'CONTACTReport - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ContactRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/ContactRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ContactRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/ContactRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE контакт CS_STRING_1',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'CONTACTReport - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'CONTACTReport - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'CONTACTReport - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'ContactRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/ContactRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'ContactRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/ContactRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION здесь CS_SOURCE контакт CS_STRING_1',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'CONTACTReport - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'CONTACTReport - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'WEATHERReport - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'WeatherRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/WeatherRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'WeatherRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/WeatherRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'METAR CS_STRING_1 naměřeno v CS_STRING_2 větr CS_STRING_3 stupňů CS_STRING_4 uzlů viditelnost CS_STRING_5 RVR ranvej CS_STRING_6 metrů CS_STRING_7 CS_STRING_8 teplota CS_STRING_9 stupňů rosný bod CS_STRING_10 stupňů QNH CS_STRING_11 hektopaskalů CS_STRING_12 CS_STRING_13.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'WEATHERReport - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'WEATHERReport - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'WEATHERReport - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'WeatherRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/WeatherRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'WeatherRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/WeatherRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'METAR CS_STRING_1 naměřeno v CS_STRING_2 větr CS_STRING_3 stupňů CS_STRING_4 uzlů viditelnost CS_STRING_5 RVR ranvej CS_STRING_6 metrů CS_STRING_7 CS_STRING_8 teplota CS_STRING_9 stupňů rosný bod CS_STRING_10 stupňů QNH CS_STRING_11 hektopaskalů CS_STRING_12 CS_STRING_13.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'WEATHERReport - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'WEATHERReport - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'WEATHERReport - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'WeatherRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/WeatherRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'WeatherRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/WeatherRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'METAR CS_STRING_1 ISSUED AT CS_STRING_2 WIND CS_STRING_3 DEGREES CS_STRING_4 KNOTS VISIBILITY CS_STRING_5 RVR RUNWAY CS_STRING_6 METERS CS_STRING_7 CS_STRING_8 TEMPERATURE CS_STRING_9 DEGREES DEW POINT CS_STRING_10 DEGREES QNH CS_STRING_11 HECTOPASCALS CS_STRING_12 CS_STRING_13.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'WEATHERReport - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'WEATHERReport - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'WEATHERReport - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'WeatherRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/WeatherRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'WeatherRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/WeatherRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'METAR CS_STRING_1 ISSUED AT CS_STRING_2 WIND CS_STRING_3 DEGREES CS_STRING_4 KNOTS VISIBILITY CS_STRING_5 RVR RUNWAY CS_STRING_6 METERS CS_STRING_7 CS_STRING_8 TEMPERATURE CS_STRING_9 DEGREES DEW POINT CS_STRING_10 DEGREES QNH CS_STRING_11 HECTOPASCALS CS_STRING_12 CS_STRING_13.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'WEATHERReport - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'WEATHERReport - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'WEATHERReport - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'WeatherRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/WeatherRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'WeatherRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/WeatherRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'METAR CS_STRING_1 ISSUED AT CS_STRING_2 WIND CS_STRING_3 DEGREES CS_STRING_4 KNOTS VISIBILITY CS_STRING_5 RVR RUNWAY CS_STRING_6 METERS CS_STRING_7 CS_STRING_8 TEMPERATURE CS_STRING_9 DEGREES DEW POINT CS_STRING_10 DEGREES QNH CS_STRING_11 HECTOPASCALS CS_STRING_12 CS_STRING_13.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'WEATHERReport - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'WEATHERReport - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'WEATHERReport - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'WeatherRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/WeatherRadioEmissionComposition'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'WeatherRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/WeatherRadioEmissionComposition')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'METAR CS_STRING_1 ISSUED AT CS_STRING_2 WIND CS_STRING_3 DEGREES CS_STRING_4 KNOTS VISIBILITY CS_STRING_5 RVR RUNWAY CS_STRING_6 METERS CS_STRING_7 CS_STRING_8 TEMPERATURE CS_STRING_9 DEGREES DEW POINT CS_STRING_10 DEGREES QNH CS_STRING_11 HECTOPASCALS CS_STRING_12 CS_STRING_13.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'WEATHERReport - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'WEATHERReport - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RetreatReq - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení ústupu' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení ústupu'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE zahajte ústup.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RetreatReq - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RetreatReq - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení ústupu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RetreatReq - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení ústupu' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení ústupu'))),
		'CS_DESTINATION zde CS_SOURCE zahajte ústup.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RetreatReq - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RetreatReq - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení ústupu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RetreatReq - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení ústupu' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení ústupu'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE retreat.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RetreatReq - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RetreatReq - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení ústupu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RetreatReq - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení ústupu' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení ústupu'))),
		'CS_DESTINATION this is CS_SOURCE retreat.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RetreatReq - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RetreatReq - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení ústupu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RetreatReq - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení ústupu' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení ústupu'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE начать отступление',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RetreatReq - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RetreatReq - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení ústupu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RetreatReq - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení ústupu' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení ústupu'))),
		'CS_DESTINATION здесь CS_SOURCE начать отступление',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RetreatReq - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RetreatReq - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení ústupu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RetreatReady - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o zahájení ústupu' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o zahájení ústupu'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE připraven k ústupu.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RetreatReady - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RetreatReady - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o zahájení ústupu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RetreatReady - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o zahájení ústupu' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o zahájení ústupu'))),
		'CS_DESTINATION zde CS_SOURCE přirpaven k ústupu.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RetreatReady - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RetreatReady - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o zahájení ústupu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RetreatReady - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o zahájení ústupu' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o zahájení ústupu'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE ready for retreat.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RetreatReady - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RetreatReady - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o zahájení ústupu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RetreatReady - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o zahájení ústupu' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o zahájení ústupu'))),
		'CS_DESTINATION this is CS_SOURCE ready for retreat.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RetreatReady - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RetreatReady - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o zahájení ústupu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RetreatReady - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o zahájení ústupu' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o zahájení ústupu'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE готовый к отступлению',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RetreatReady - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RetreatReady - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o zahájení ústupu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RetreatReady - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o zahájení ústupu' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o zahájení ústupu'))),
		'CS_DESTINATION здесь CS_SOURCE готовый к отступлению',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RetreatReady - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RetreatReady - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o zahájení ústupu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RetreatMount - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení nasedání' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení nasedání'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE nasedl.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RetreatMount - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RetreatMount - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení nasedání');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RetreatMount - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení nasedání' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení nasedání'))),
		'CS_DESTINATION zde CS_SOURCE nasedl.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RetreatMount - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RetreatMount - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení nasedání');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RetreatMount - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení nasedání' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení nasedání'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE mount.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RetreatMount - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RetreatMount - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení nasedání');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RetreatMount - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení nasedání' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení nasedání'))),
		'CS_DESTINATION this is CS_SOURCE mount.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RetreatMount - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RetreatMount - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení nasedání');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RetreatMount - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení nasedání' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení nasedání'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE он поднялся',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RetreatMount - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RetreatMount - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení nasedání');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RetreatMount - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení nasedání' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení nasedání'))),
		'CS_DESTINATION здесь CS_SOURCE он поднялся',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RetreatMount - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RetreatMount - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení nasedání');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RetreatEnd - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení ústupu' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení ústupu'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE ústup dokončen.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RetreatEnd - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RetreatEnd - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení ústupu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RetreatEnd - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení ústupu' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení ústupu'))),
		'CS_DESTINATION zde CS_SOURCE ústup dokončen.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RetreatEnd - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RetreatEnd - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení ústupu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RetreatEnd - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení ústupu' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení ústupu'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE finish retreat.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RetreatEnd - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RetreatEnd - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení ústupu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RetreatEnd - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení ústupu' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení ústupu'))),
		'CS_DESTINATION this is CS_SOURCE finish retreat.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RetreatEnd - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RetreatEnd - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení ústupu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RetreatEnd - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení ústupu' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení ústupu'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE отступление завершено',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RetreatEnd - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RetreatEnd - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení ústupu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RetreatEnd - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení ústupu' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení ústupu'))),
		'CS_DESTINATION здесь CS_SOURCE отступление завершено',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RetreatEnd - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RetreatEnd - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpoveď o ukončení ústupu');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MountOnEntityRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedávající entity o nasednutí' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedávající entity o nasednutí'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE nasedám.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountOnEntityRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MountOnEntityRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedávající entity o nasednutí');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MountOnEntityRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedávající entity o nasednutí' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedávající entity o nasednutí'))),
		'CS_DESTINATION zde CS_SOURCE nasedám.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountOnEntityRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MountOnEntityRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedávající entity o nasednutí');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MountOnEntityRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedávající entity o nasednutí' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedávající entity o nasednutí'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE mount on.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountOnEntityRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MountOnEntityRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedávající entity o nasednutí');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MountOnEntityRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedávající entity o nasednutí' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedávající entity o nasednutí'))),
		'CS_DESTINATION this is CS_SOURCE mount on.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountOnEntityRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MountOnEntityRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedávající entity o nasednutí');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MountOnEntityRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedávající entity o nasednutí' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedávající entity o nasednutí'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Я иду вниз',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountOnEntityRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MountOnEntityRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedávající entity o nasednutí');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'MountOnEntityRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedávající entity o nasednutí' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedávající entity o nasednutí'))),
		'CS_DESTINATION здесь CS_SOURCE Я иду вниз',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'MountOnEntityRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'MountOnEntityRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď nasedávající entity o nasednutí');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FollowEntityReq - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení následování' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení následování'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE následujte CS_STRING_1.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FollowEntityReq - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FollowEntityReq - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení následování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FollowEntityReq - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení následování' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení následování'))),
		'CS_DESTINATION zde CS_SOURCE následujte CS_STRING_1.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FollowEntityReq - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FollowEntityReq - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení následování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FollowEntityReq - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení následování' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení následování'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE follow CS_STRING_1.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FollowEntityReq - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FollowEntityReq - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení následování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FollowEntityReq - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení následování' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení následování'))),
		'CS_DESTINATION from CS_SOURCE follow CS_STRING_1.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FollowEntityReq - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FollowEntityReq - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení následování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FollowEntityReq - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení následování' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení následování'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE следовать CS_STRING_1.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FollowEntityReq - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FollowEntityReq - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení následování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FollowEntityReq - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení následování' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení následování'))),
		'CS_DESTINATION здесь CS_SOURCE следовать CS_STRING_1.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FollowEntityReq - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FollowEntityReq - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k zahájení následování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FollowEntityStartRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o zahájení následování' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o zahájení následování'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE následujeme CS_STRING_1.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FollowEntityStartRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FollowEntityStartRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o zahájení následování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FollowEntityStartRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o zahájení následování' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o zahájení následování'))),
		'CS_DESTINATION zde CS_SOURCE následujeme CS_STRING_1.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FollowEntityStartRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FollowEntityStartRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o zahájení následování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FollowEntityStartRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o zahájení následování' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o zahájení následování'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE We are following CS_STRING_1.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FollowEntityStartRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FollowEntityStartRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o zahájení následování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FollowEntityStartRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o zahájení následování' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o zahájení následování'))),
		'CS_DESTINATION from CS_SOURCE We are following CS_STRING_1.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FollowEntityStartRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FollowEntityStartRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o zahájení následování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FollowEntityStartRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o zahájení následování' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o zahájení následování'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE мы следуем CS_STRING_1.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FollowEntityStartRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FollowEntityStartRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o zahájení následování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FollowEntityStartRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o zahájení následování' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o zahájení následování'))),
		'CS_DESTINATION здесь CS_SOURCE мы мы следуем CS_STRING_1.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FollowEntityStartRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FollowEntityStartRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o zahájení následování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FollowEntityEndRes - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o ukončení následování' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o ukončení následování'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE následování ukončeno.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FollowEntityEndRes - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FollowEntityEndRes - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o ukončení následování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FollowEntityEndRes - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o ukončení následování' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o ukončení následování'))),
		'CS_DESTINATION zde CS_SOURCE následování ukončeno.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FollowEntityEndRes - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FollowEntityEndRes - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o ukončení následování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FollowEntityEndRes - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o ukončení následování' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o ukončení následování'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE following ended.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FollowEntityEndRes - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FollowEntityEndRes - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o ukončení následování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FollowEntityEndRes - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o ukončení následování' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o ukončení následování'))),
		'CS_DESTINATION from CS_SOURCE following ended.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FollowEntityEndRes - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FollowEntityEndRes - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o ukončení následování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FollowEntityEndRes - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o ukončení následování' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o ukončení následování'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Ниже завершена.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FollowEntityEndRes - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FollowEntityEndRes - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o ukončení následování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'FollowEntityEndRes - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o ukončení následování' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o ukončení následování'))),
		'CS_DESTINATION здесь CS_SOURCE Ниже завершена.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'FollowEntityEndRes - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'FollowEntityEndRes - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď o ukončení následování');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveAfterPathReq - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE zahajte přesun.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathReq - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathReq - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveAfterPathReq - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu '))),
		'CS_DESTINATION zde CS_SOURCE zahajte přesun.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathReq - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathReq - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveAfterPathReq - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE Start moving.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathReq - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathReq - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveAfterPathReq - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu '))),
		'CS_DESTINATION from CS_SOURCE Start moving.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathReq - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathReq - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveAfterPathReq - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE начать движение.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathReq - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathReq - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveAfterPathReq - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu '))),
		'CS_DESTINATION здесь CS_SOURCE начать движение.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathReq - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathReq - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výzva k přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveAfterPathStartRes -CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE zahájili jsme přesun.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathStartRes -CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathStartRes -CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveAfterPathStartRes -CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu '))),
		'CS_DESTINATION zde CS_SOURCE zahájili jsme přesun.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathStartRes -CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathStartRes -CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveAfterPathStartRes -EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE We started moving.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathStartRes -EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathStartRes -EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveAfterPathStartRes -EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu '))),
		'CS_DESTINATION from CS_SOURCE We started moving.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathStartRes -EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathStartRes -EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveAfterPathStartRes -RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE мы начали двигаться.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathStartRes -RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathStartRes -RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveAfterPathStartRes -RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu ' AND taskphase = 2 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu '))),
		'CS_DESTINATION здесь CS_SOURCE мы начали двигаться.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathStartRes -RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathStartRes -RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o zahájení přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveAfterPathPointRes -CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE dosáhli jsme postupového bodu SYMBOLNAME.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathPointRes -CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathPointRes -CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveAfterPathPointRes -CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu '))),
		'CS_DESTINATION zde CS_SOURCE dosáhli jsme postupového bodu SYMBOLNAME.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathPointRes -CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathPointRes -CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveAfterPathPointRes -EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE We reached the point of progress SYMBOLNAME.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathPointRes -EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathPointRes -EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveAfterPathPointRes -EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu '))),
		'CS_DESTINATION from CS_SOURCE We reached the point of progress SYMBOLNAME.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathPointRes -EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathPointRes -EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveAfterPathPointRes -RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE мы достигли точки прогресса SYMBOLNAME.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathPointRes -RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathPointRes -RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveAfterPathPointRes -RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu ' AND taskphase = 3 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu '))),
		'CS_DESTINATION здесь CS_SOURCE мы достигли точки прогресса SYMBOLNAME.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathPointRes -RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathPointRes -RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dosažení postupového bodu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveAfterPathEndRes -CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE přesun dokončen.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathEndRes -CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathEndRes -CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveAfterPathEndRes -CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu '))),
		'CS_DESTINATION zde CS_SOURCE přesun dokončen.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathEndRes -CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathEndRes -CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveAfterPathEndRes -EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE Move completed.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathEndRes -EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathEndRes -EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveAfterPathEndRes -EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu '))),
		'CS_DESTINATION from CS_SOURCE Move completed.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathEndRes -EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathEndRes -EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveAfterPathEndRes -RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu '))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE перемещение завершено.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathEndRes -RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathEndRes -RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'GroundMoveAfterPathEndRes -RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu ' AND taskphase = 4 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'GroundMoveAfterPath' AND wasp_taskname LIKE 'behavior/Movement/groundMoveAfterPath')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu '))),
		'CS_DESTINATION здесь CS_SOURCE перемещение завершено.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathEndRes -RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'GroundMoveAfterPathEndRes -RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'odpověď podřízeného o dokončení přesunu ');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'Over - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'ACK'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'ACK')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE příjem.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'Over - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'Over - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'Over - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'ACK'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'ACK')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE over.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'Over - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'Over - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'Over - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'ACK'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'ACK')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE прием.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'Over - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'Over - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'End - CZ', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'END'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'END')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'Konec.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'End - CZ'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'End - CZ';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'End - EN', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'END'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'END')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'Out.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'End - EN'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'End - EN';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'End - RU', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'END'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'END')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'конец.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'End - RU'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'End - RU';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'Roger - CZ', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'ROGER'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'ROGER')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'Rozumím.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'Roger - CZ'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'Roger - CZ';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'Roger - EN', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'ROGER'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'ROGER')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'Roger.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'Roger - EN'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'Roger - EN';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'Roger - RU', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'ROGER'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'ROGER')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'понимаю.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'Roger - RU'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'Roger - RU';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'Over - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'ACK'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'ACK')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION zde CS_SOURCE příjem.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'Over - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'Over - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'Over - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'ACK'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'ACK')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION this is CS_SOURCE over.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'Over - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'Over - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'Over - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'ACK'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'ACK')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION здесь CS_SOURCE прием.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'Over - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'Over - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RepeatedRequest - CZ, Beg', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'RepeatedRequest'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'RepeatedRequest')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION zde CS_SOURCE, CS_SOURCE čekám na potvrzení.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RepeatedRequest - CZ, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RepeatedRequest - CZ, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RepeatedRequest - CZ, Adv', 
		(SELECT id FROM ew.language WHERE code = 'cs'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'RepeatedRequest'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'RepeatedRequest')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION zde CS_SOURCE čekám na potvrzení.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RepeatedRequest - CZ, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RepeatedRequest - CZ, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RepeatedRequest - EN, Beg', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'RepeatedRequest'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'RepeatedRequest')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION this is CS_SOURCE, CS_SOURCE wait on acknowledge.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RepeatedRequest - EN, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RepeatedRequest - EN, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RepeatedRequest - EN, Adv', 
		(SELECT id FROM ew.language WHERE code = 'en'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'RepeatedRequest'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'RepeatedRequest')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION здесь CS_SOURCE wait on acknowledge.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RepeatedRequest - EN, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RepeatedRequest - EN, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RepeatedRequest - RU, Beg', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Začátečník'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'RepeatedRequest'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'RepeatedRequest')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION, CS_DESTINATION, CS_DESTINATION здесь CS_SOURCE, CS_SOURCE Я жду подтверждения.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RepeatedRequest - RU, Beg'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RepeatedRequest - RU, Beg';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');

INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT 'RepeatedRequest - RU, Adv', 
		(SELECT id FROM ew.language WHERE code = 'ru'), 
		(SELECT id FROM wasp.category WHERE name = 'Pokročilý'),
		(SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'RepeatedRequest'),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory' AND taskphase = 1 AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'RepeatedRequest')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory'))),
		'CS_DESTINATION здесь CS_SOURCE Я жду подтверждения.',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE 'RepeatedRequest - RU, Adv'); 
		--rollback DELETE FROM wasp.report WHERE name LIKE 'RepeatedRequest - RU, Adv';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE 'výchozí pro evaluátory');


