--liquibase formatted sql
--changeset Andy:1.0.3.1 (splitStatements:false endDelimiter:;)
--comment Adding data to table ew.language.

INSERT INTO ew.language (code, name, deleted)
  SELECT 'cs', 'czech', false WHERE NOT EXISTS (SELECT 1 FROM ew.language WHERE code LIKE 'cs' AND name LIKE 'czech');
--rollback DELETE FROM ew.language WHERE code LIKE 'cs' AND name LIKE 'czech';

INSERT INTO ew.language (code, name, deleted)
  SELECT 'en', 'english', false WHERE NOT EXISTS (SELECT 1 FROM ew.language WHERE code LIKE 'en' AND name LIKE 'english');
--rollback DELETE FROM ew.language WHERE code LIKE 'en' AND name LIKE 'english';

INSERT INTO ew.language (code, name, deleted)
  SELECT 'pl', 'polish', false WHERE NOT EXISTS (SELECT 1 FROM ew.language WHERE code LIKE 'pl' AND name LIKE 'polish');
--rollback DELETE FROM ew.language WHERE code LIKE 'pl' AND name LIKE 'polish';

INSERT INTO ew.language (code, name, deleted)
  SELECT 'ru', 'rusian', false WHERE NOT EXISTS (SELECT 1 FROM ew.language WHERE code LIKE 'ru' AND name LIKE 'rusian');
--rollback DELETE FROM ew.language WHERE code LIKE 'ru' AND name LIKE 'rusian';
