--liquibase formatted sql
--changeset Andy:1.0.3.1 (splitStatements:false endDelimiter:;)
--comment Adding data to table ew.radiostation_modulation_type_link.

INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'RF13'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM'), false 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'RF13') AND 
fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'RF13') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM');

INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1301'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM'), false 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1301') AND 
fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1301') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM');

INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1302'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM'), false 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1302') AND 
fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1302') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM');

INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR MANPACK C'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM'), false 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR MANPACK C') AND 
fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR MANPACK C') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM');

INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'MOTOROLA VHF'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FSK'), false 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MOTOROLA VHF') AND 
fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FSK'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MOTOROLA VHF') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FSK');

INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'MOTOROLA UHF'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FSK'), false 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MOTOROLA UHF') AND 
fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FSK'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MOTOROLA UHF') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FSK');

INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'THALES'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FSK'), false 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'THALES') AND 
fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FSK'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'THALES') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FSK');

INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'PMR'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM'), false 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'PMR') AND 
fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'PMR') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM');


INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'HYTERA'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'PSK'), false 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HYTERA') AND 
fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'PSK'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HYTERA') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'PSK');


INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'NO'), false 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'NO'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'NO');

INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM'), false 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM');

INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM'), false 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM');

INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FSK'), false 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FSK'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FSK');

INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'PSK'), false 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'PSK'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'PSK');

INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'NO'), false 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'NO'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'NO');

INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM'), false 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM');

INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM'), false 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM');

INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FSK'), false 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FSK'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FSK');

INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'PSK'), false 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'PSK'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'PSK');

--changeset Andy:1.0.5.5 (splitStatements:false endDelimiter:;)
--comment Adding data to table ew.radiostation_modulation_type_link.

INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR MANPACK C'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM'), true 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR MANPACK C') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR MANPACK C') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM');

INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'MVKVR'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM'), false 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MVKVR') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MVKVR') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM');

INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'Obecni rozhlas'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM'), true 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Obecni rozhlas') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Obecni rozhlas') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM');

INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'Obecni rozhlas'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM'), false 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Obecni rozhlas') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Obecni rozhlas') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM');

INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR1'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM'), false 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR1') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR1') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM');

INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR1'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM'), false 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR1') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR1') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM');

INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR2'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM'), false 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR2') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR2') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'AM');

INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR2'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM'), false 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR2') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR2') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM');

INSERT INTO ew.radiostation_modulation_type_link (fk_radiostation, fk_modulation_type, deleted) 
SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'FM BROADCAST'), (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM'), false 
WHERE NOT EXISTS (SELECT 1 FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'FM BROADCAST') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.radiostation_modulation_type_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'FM BROADCAST') AND fk_modulation_type = (SELECT id FROM ew.modulation_Type WHERE modulation_code LIKE 'FM');
