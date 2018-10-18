--liquibase formatted sql
--changeset Andy:1.0.5.1 (splitStatements:false endDelimiter:;) dbms:postgresql
--comment Adding data to table wasp.enum_translator.


INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'FirePermissionType', '1', (SELECT id FROM ew.language WHERE code = 'cs'), 'volná palba' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'FirePermissionType' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'FirePermissionType' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'FirePermissionType', '2', (SELECT id FROM ew.language WHERE code = 'cs'), 'palba zakázána' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'FirePermissionType' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'FirePermissionType' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'FirePermissionType', '3', (SELECT id FROM ew.language WHERE code = 'cs'), 'pouze opětovaná palba' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'FirePermissionType' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'FirePermissionType' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'FirePermissionType', '1', (SELECT id FROM ew.language WHERE code = 'en'), 'free fire' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'FirePermissionType' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'FirePermissionType' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'FirePermissionType', '2', (SELECT id FROM ew.language WHERE code = 'en'), 'fire prohibited' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'FirePermissionType' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'FirePermissionType' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'FirePermissionType', '3', (SELECT id FROM ew.language WHERE code = 'en'), 'only retaliation' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'FirePermissionType' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'FirePermissionType' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'FirePermissionType', '1', (SELECT id FROM ew.language WHERE code = 'ru'), 'свободный огонь' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'FirePermissionType' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'FirePermissionType' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'FirePermissionType', '2', (SELECT id FROM ew.language WHERE code = 'ru'), 'пожар запрещен' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'FirePermissionType' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'FirePermissionType' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'FirePermissionType', '3', (SELECT id FROM ew.language WHERE code = 'ru'), 'только возмездие' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'FirePermissionType' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'FirePermissionType' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '0', (SELECT id FROM ew.language WHERE code = 'cs'), 'žádný' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '0' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '0' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '1', (SELECT id FROM ew.language WHERE code = 'cs'), 'v ose' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '2', (SELECT id FROM ew.language WHERE code = 'cs'), 'mírně vlevo' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '3', (SELECT id FROM ew.language WHERE code = 'cs'), 'čtvrt vlevo' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '4', (SELECT id FROM ew.language WHERE code = 'cs'), 'půl vlevo' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '5', (SELECT id FROM ew.language WHERE code = 'cs'), 'třičtvrtě vlevo' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '5' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '5' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '6', (SELECT id FROM ew.language WHERE code = 'cs'), 'vlevo' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '6' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '6' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '7', (SELECT id FROM ew.language WHERE code = 'cs'), 'mírně vpravo' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '7' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '7' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '8', (SELECT id FROM ew.language WHERE code = 'cs'), 'čtvrt vpravo' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '8' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '8' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '9', (SELECT id FROM ew.language WHERE code = 'cs'), 'půl vpravo' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '9' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '9' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '10', (SELECT id FROM ew.language WHERE code = 'cs'), 'třičtvrtě vpravo' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '10' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '10' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '11', (SELECT id FROM ew.language WHERE code = 'cs'), 'vpravo' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '11' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '11' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '0', (SELECT id FROM ew.language WHERE code = 'en'), 'none' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '0' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '0' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '1', (SELECT id FROM ew.language WHERE code = 'en'), 'in axis' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '2', (SELECT id FROM ew.language WHERE code = 'en'), 'slightly to the left' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '3', (SELECT id FROM ew.language WHERE code = 'en'), 'quarter to the left' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '4', (SELECT id FROM ew.language WHERE code = 'en'), 'half to the left' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '5', (SELECT id FROM ew.language WHERE code = 'en'), 'three-quarter to the left' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '5' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '5' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '6', (SELECT id FROM ew.language WHERE code = 'en'), 'left' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '6' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '6' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '7', (SELECT id FROM ew.language WHERE code = 'en'), 'slightly to the right' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '7' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '7' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '8', (SELECT id FROM ew.language WHERE code = 'en'), 'quarter to the right' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '8' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '8' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '9', (SELECT id FROM ew.language WHERE code = 'en'), 'half to the right' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '9' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '9' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '10', (SELECT id FROM ew.language WHERE code = 'en'), 'three-quarter to the right' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '10' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '10' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '11', (SELECT id FROM ew.language WHERE code = 'en'), 'right' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '11' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '11' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '0', (SELECT id FROM ew.language WHERE code = 'ru'), 'нет' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '0' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '0' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '1', (SELECT id FROM ew.language WHERE code = 'ru'), 'по оси' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '2', (SELECT id FROM ew.language WHERE code = 'ru'), 'слегка влево' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '3', (SELECT id FROM ew.language WHERE code = 'ru'), 'квартал слева' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '4', (SELECT id FROM ew.language WHERE code = 'ru'), 'наполовину влево' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '5', (SELECT id FROM ew.language WHERE code = 'ru'), 'три четверти слева' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '5' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '5' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '6', (SELECT id FROM ew.language WHERE code = 'ru'), 'слева' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '6' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '6' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '7', (SELECT id FROM ew.language WHERE code = 'ru'), 'слегка вправо' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '7' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '7' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '8', (SELECT id FROM ew.language WHERE code = 'ru'), 'квартал справа' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '8' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '8' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '9', (SELECT id FROM ew.language WHERE code = 'ru'), 'половина права' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '9' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '9' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '10', (SELECT id FROM ew.language WHERE code = 'ru'), 'право на три четверти' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '10' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '10' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservation', '11', (SELECT id FROM ew.language WHERE code = 'ru'), 'право' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '11' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservation' AND enum_value = '11' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '0', (SELECT id FROM ew.language WHERE code = 'cs'), 'žádný' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '0' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '0' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '1', (SELECT id FROM ew.language WHERE code = 'cs'), 'jedna hodina' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '2', (SELECT id FROM ew.language WHERE code = 'cs'), 'dvě hodiny' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '3', (SELECT id FROM ew.language WHERE code = 'cs'), 'tři hodiny' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '4', (SELECT id FROM ew.language WHERE code = 'cs'), 'čtyři hodiny' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '5', (SELECT id FROM ew.language WHERE code = 'cs'), 'pět hodin' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '5' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '5' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '6', (SELECT id FROM ew.language WHERE code = 'cs'), 'šest hodin' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '6' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '6' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '7', (SELECT id FROM ew.language WHERE code = 'cs'), 'sedm hodin' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '7' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '7' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '8', (SELECT id FROM ew.language WHERE code = 'cs'), 'osm hodin' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '8' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '8' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '9', (SELECT id FROM ew.language WHERE code = 'cs'), 'devět hodin' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '9' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '9' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '10', (SELECT id FROM ew.language WHERE code = 'cs'), 'deset hodin' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '10' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '10' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '11', (SELECT id FROM ew.language WHERE code = 'cs'), 'jedenáct hodin' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '11' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '11' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '12', (SELECT id FROM ew.language WHERE code = 'cs'), 'dvanáct hodin' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '12' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '12' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '0', (SELECT id FROM ew.language WHERE code = 'en'), 'none' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '0' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '0' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '1', (SELECT id FROM ew.language WHERE code = 'en'), 'one hour' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '2', (SELECT id FROM ew.language WHERE code = 'en'), 'two hours' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '3', (SELECT id FROM ew.language WHERE code = 'en'), 'three hours' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '4', (SELECT id FROM ew.language WHERE code = 'en'), 'four o''clock' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '5', (SELECT id FROM ew.language WHERE code = 'en'), 'five hours' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '5' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '5' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '6', (SELECT id FROM ew.language WHERE code = 'en'), 'six hours' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '6' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '6' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '7', (SELECT id FROM ew.language WHERE code = 'en'), 'seven o''clock' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '7' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '7' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '8', (SELECT id FROM ew.language WHERE code = 'en'), 'eight hours' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '8' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '8' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '9', (SELECT id FROM ew.language WHERE code = 'en'), 'nine o''clock' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '9' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '9' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '10', (SELECT id FROM ew.language WHERE code = 'en'), 'ten hours' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '10' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '10' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '11', (SELECT id FROM ew.language WHERE code = 'en'), 'eleven o''clock' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '11' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '11' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '12', (SELECT id FROM ew.language WHERE code = 'en'), 'Twelve hours' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '12' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '12' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '0', (SELECT id FROM ew.language WHERE code = 'ru'), 'нет' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '0' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '0' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '1', (SELECT id FROM ew.language WHERE code = 'ru'), 'один час' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '2', (SELECT id FROM ew.language WHERE code = 'ru'), 'два часа' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '3', (SELECT id FROM ew.language WHERE code = 'ru'), 'три часа' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '4', (SELECT id FROM ew.language WHERE code = 'ru'), 'четыре часа' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '5', (SELECT id FROM ew.language WHERE code = 'ru'), 'пять часов' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '5' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '5' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '6', (SELECT id FROM ew.language WHERE code = 'ru'), 'шесть часов' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '6' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '6' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '7', (SELECT id FROM ew.language WHERE code = 'ru'), 'семь часов' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '7' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '7' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '8', (SELECT id FROM ew.language WHERE code = 'ru'), 'восемь часов' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '8' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '8' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '9', (SELECT id FROM ew.language WHERE code = 'ru'), 'девять часов' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '9' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '9' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '10', (SELECT id FROM ew.language WHERE code = 'ru'), 'десять часов' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '10' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '10' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '11', (SELECT id FROM ew.language WHERE code = 'ru'), 'одиннадцать часов' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '11' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '11' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'DirectionOfObservationByHours', '12', (SELECT id FROM ew.language WHERE code = 'ru'), 'двенадцать часов' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '12' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'DirectionOfObservationByHours' AND enum_value = '12' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Damage', '0', (SELECT id FROM ew.language WHERE code = 'cs'), 'neurčeno' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '0' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '0' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Damage', '1', (SELECT id FROM ew.language WHERE code = 'cs'), 'ztráta mobility' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Damage', '2', (SELECT id FROM ew.language WHERE code = 'cs'), 'ztráta palebné schopnosti' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Damage', '3', (SELECT id FROM ew.language WHERE code = 'cs'), 'ztráta mobility a palebné schopnosti' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Damage', '4', (SELECT id FROM ew.language WHERE code = 'cs'), 'ztráta komunikační schopnosti' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Damage', '5', (SELECT id FROM ew.language WHERE code = 'cs'), 'ztráta všech schopností' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '5' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '5' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Damage', '6', (SELECT id FROM ew.language WHERE code = 'cs'), 'katastrofické zničení' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '6' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '6' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Damage', '7', (SELECT id FROM ew.language WHERE code = 'cs'), 'odpojení od sítě se zdroji' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '7' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '7' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Damage', '0', (SELECT id FROM ew.language WHERE code = 'en'), 'not specified' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '0' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '0' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Damage', '1', (SELECT id FROM ew.language WHERE code = 'en'), 'loss of mobility' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Damage', '2', (SELECT id FROM ew.language WHERE code = 'en'), 'loss of firepower' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Damage', '3', (SELECT id FROM ew.language WHERE code = 'en'), 'loss of mobility and firepower' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Damage', '4', (SELECT id FROM ew.language WHERE code = 'en'), 'loss of communication ability' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Damage', '5', (SELECT id FROM ew.language WHERE code = 'en'), 'loss of all abilities' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '5' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '5' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Damage', '6', (SELECT id FROM ew.language WHERE code = 'en'), 'catastrophic destruction' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '6' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '6' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Damage', '7', (SELECT id FROM ew.language WHERE code = 'en'), 'disconnect from the network with resources' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '7' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '7' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Damage', '0', (SELECT id FROM ew.language WHERE code = 'ru'), 'не указано' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '0' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '0' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Damage', '1', (SELECT id FROM ew.language WHERE code = 'ru'), 'потеря мобильности' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Damage', '2', (SELECT id FROM ew.language WHERE code = 'ru'), 'потеря огневой мощи' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Damage', '3', (SELECT id FROM ew.language WHERE code = 'ru'), 'потеря подвижности и огневой мощи' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Damage', '4', (SELECT id FROM ew.language WHERE code = 'ru'), 'потеря коммуникационной способности' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Damage', '5', (SELECT id FROM ew.language WHERE code = 'ru'), 'потеря всех способностей' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '5' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '5' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Damage', '6', (SELECT id FROM ew.language WHERE code = 'ru'), 'катастрофическое разрушение' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '6' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '6' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Damage', '7', (SELECT id FROM ew.language WHERE code = 'ru'), 'отключиться от сети с ресурсами' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '7' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Damage' AND enum_value = '7' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'FormationType', '0', (SELECT id FROM ew.language WHERE code = 'cs'), 'žádná' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '0' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '0' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'FormationType', '1', (SELECT id FROM ew.language WHERE code = 'cs'), 'linie' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'FormationType', '2', (SELECT id FROM ew.language WHERE code = 'cs'), 'úhlem vzad' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'FormationType', '3', (SELECT id FROM ew.language WHERE code = 'cs'), 'úhlem vpřed' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'FormationType', '4', (SELECT id FROM ew.language WHERE code = 'cs'), 'proud' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'FormationType', '0', (SELECT id FROM ew.language WHERE code = 'en'), 'none' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '0' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '0' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'FormationType', '1', (SELECT id FROM ew.language WHERE code = 'en'), 'line' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'FormationType', '2', (SELECT id FROM ew.language WHERE code = 'en'), 'wedge' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'FormationType', '3', (SELECT id FROM ew.language WHERE code = 'en'), 'vee' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'FormationType', '4', (SELECT id FROM ew.language WHERE code = 'en'), 'column' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'FormationType', '0', (SELECT id FROM ew.language WHERE code = 'ru'), 'нет' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '0' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '0' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'FormationType', '1', (SELECT id FROM ew.language WHERE code = 'ru'), 'линия' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'FormationType', '2', (SELECT id FROM ew.language WHERE code = 'ru'), 'задний угол' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'FormationType', '3', (SELECT id FROM ew.language WHERE code = 'ru'), 'передний угол' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'FormationType', '4', (SELECT id FROM ew.language WHERE code = 'ru'), 'ток' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'FormationType' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Color', '1', (SELECT id FROM ew.language WHERE code = 'cs'), 'zelená' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Color' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Color' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Color', '2', (SELECT id FROM ew.language WHERE code = 'cs'), 'žlutá' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Color' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Color' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Color', '3', (SELECT id FROM ew.language WHERE code = 'cs'), 'červená' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Color' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Color' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Color', '4', (SELECT id FROM ew.language WHERE code = 'cs'), 'černá' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Color' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Color' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Color', '1', (SELECT id FROM ew.language WHERE code = 'en'), 'green' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Color' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Color' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Color', '2', (SELECT id FROM ew.language WHERE code = 'en'), 'yellow' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Color' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Color' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Color', '3', (SELECT id FROM ew.language WHERE code = 'en'), 'red' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Color' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Color' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Color', '4', (SELECT id FROM ew.language WHERE code = 'en'), 'black' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Color' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Color' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Color', '1', (SELECT id FROM ew.language WHERE code = 'ru'), 'зеленый' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Color' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Color' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Color', '2', (SELECT id FROM ew.language WHERE code = 'ru'), 'янтарный' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Color' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Color' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Color', '3', (SELECT id FROM ew.language WHERE code = 'ru'), 'красный' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Color' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Color' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Color', '4', (SELECT id FROM ew.language WHERE code = 'ru'), 'черный' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Color' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Color' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Visibility', '1', (SELECT id FROM ew.language WHERE code = 'cs'), 'více než 10 kilomentrů' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Visibility' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Visibility' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Visibility', '2', (SELECT id FROM ew.language WHERE code = 'cs'), 'metrů' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Visibility' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Visibility' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Visibility', '1', (SELECT id FROM ew.language WHERE code = 'en'), 'more than 10 kilometers' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Visibility' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Visibility' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Visibility', '2', (SELECT id FROM ew.language WHERE code = 'en'), 'meters' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Visibility' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Visibility' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Visibility', '1', (SELECT id FROM ew.language WHERE code = 'ru'), 'более 10 километров' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Visibility' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Visibility' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Visibility', '2', (SELECT id FROM ew.language WHERE code = 'ru'), 'метров' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Visibility' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Visibility' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'RainfallAndPhenomena', '1', (SELECT id FROM ew.language WHERE code = 'cs'), 'déšť' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'RainfallAndPhenomena' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'RainfallAndPhenomena' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'RainfallAndPhenomena', '2', (SELECT id FROM ew.language WHERE code = 'cs'), 'slabý déšť' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'RainfallAndPhenomena' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'RainfallAndPhenomena' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'RainfallAndPhenomena', '3', (SELECT id FROM ew.language WHERE code = 'cs'), 'sníh' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'RainfallAndPhenomena' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'RainfallAndPhenomena' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'RainfallAndPhenomena', '4', (SELECT id FROM ew.language WHERE code = 'cs'), 'slabý sníh' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'RainfallAndPhenomena' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'RainfallAndPhenomena' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'RainfallAndPhenomena', '1', (SELECT id FROM ew.language WHERE code = 'en'), 'rain' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'RainfallAndPhenomena' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'RainfallAndPhenomena' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'RainfallAndPhenomena', '2', (SELECT id FROM ew.language WHERE code = 'en'), 'light rain' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'RainfallAndPhenomena' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'RainfallAndPhenomena' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'RainfallAndPhenomena', '3', (SELECT id FROM ew.language WHERE code = 'en'), 'snow' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'RainfallAndPhenomena' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'RainfallAndPhenomena' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'RainfallAndPhenomena', '4', (SELECT id FROM ew.language WHERE code = 'en'), 'light snow' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'RainfallAndPhenomena' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'RainfallAndPhenomena' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'RainfallAndPhenomena', '1', (SELECT id FROM ew.language WHERE code = 'ru'), 'дождь' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'RainfallAndPhenomena' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'RainfallAndPhenomena' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'RainfallAndPhenomena', '2', (SELECT id FROM ew.language WHERE code = 'ru'), 'легкий дождь' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'RainfallAndPhenomena' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'RainfallAndPhenomena' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'RainfallAndPhenomena', '3', (SELECT id FROM ew.language WHERE code = 'ru'), 'снег' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'RainfallAndPhenomena' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'RainfallAndPhenomena' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'RainfallAndPhenomena', '4', (SELECT id FROM ew.language WHERE code = 'ru'), 'легкий снег' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'RainfallAndPhenomena' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'RainfallAndPhenomena' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Cloudiness', '1', (SELECT id FROM ew.language WHERE code = 'cs'), 'čistá obloha' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Cloudiness', '2', (SELECT id FROM ew.language WHERE code = 'cs'), 'nízká oblačnost' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Cloudiness', '3', (SELECT id FROM ew.language WHERE code = 'cs'), 'rozptýlená oblačnost' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Cloudiness', '4', (SELECT id FROM ew.language WHERE code = 'cs'), 'skoro zataženo' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Cloudiness', '5', (SELECT id FROM ew.language WHERE code = 'cs'), 'zataženo' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '5' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '5' AND fk_language = (SELECT id FROM ew.language WHERE code = 'cs');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Cloudiness', '1', (SELECT id FROM ew.language WHERE code = 'en'), 'sky clear' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Cloudiness', '2', (SELECT id FROM ew.language WHERE code = 'en'), 'few' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Cloudiness', '3', (SELECT id FROM ew.language WHERE code = 'en'), 'scattered' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Cloudiness', '4', (SELECT id FROM ew.language WHERE code = 'en'), 'broken' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Cloudiness', '5', (SELECT id FROM ew.language WHERE code = 'en'), 'overcast' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '5' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '5' AND fk_language = (SELECT id FROM ew.language WHERE code = 'en');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Cloudiness', '1', (SELECT id FROM ew.language WHERE code = 'ru'), 'чистое небо' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '1' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Cloudiness', '2', (SELECT id FROM ew.language WHERE code = 'ru'), 'Низкие облака' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '2' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Cloudiness', '3', (SELECT id FROM ew.language WHERE code = 'ru'), 'разбросанные облака' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '3' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Cloudiness', '4', (SELECT id FROM ew.language WHERE code = 'ru'), 'да́же па́смурно' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '4' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT 'Cloudiness', '5', (SELECT id FROM ew.language WHERE code = 'ru'), 'облачно' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '5' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru'));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE 'Cloudiness' AND enum_value = '5' AND fk_language = (SELECT id FROM ew.language WHERE code = 'ru');

