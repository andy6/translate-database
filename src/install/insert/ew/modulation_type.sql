--liquibase formatted sql
--changeset Andy:1.0.3.1 (splitStatements:false endDelimiter:;)
--comment Adding data to table ew.modulation_type.

INSERT INTO ew.modulation_type (modulation_code, modulation_name, deleted)
  SELECT 'NO', '', false WHERE NOT EXISTS (SELECT 1 FROM ew.modulation_type WHERE modulation_code LIKE 'NO' AND modulation_name LIKE '');
--rollback DELETE FROM ew.modulation_type WHERE modulation_code LIKE 'NO' AND modulation_name LIKE '';

INSERT INTO ew.modulation_type (modulation_code, modulation_name, deleted)
  SELECT 'AM', 'Amplitude modulation', false WHERE NOT EXISTS (SELECT 1 FROM ew.modulation_type WHERE modulation_code LIKE 'AM' AND modulation_name LIKE 'Amplitude modulation');
--rollback DELETE FROM ew.modulation_type WHERE modulation_code LIKE 'AM' AND modulation_name LIKE 'Amplitude modulation';

INSERT INTO ew.modulation_type (modulation_code, modulation_name, deleted)
  SELECT 'FM', 'Frequency modulation', false WHERE NOT EXISTS (SELECT 1 FROM ew.modulation_type WHERE modulation_code LIKE 'FM' AND modulation_name LIKE 'Frequency modulation');
--rollback DELETE FROM ew.modulation_type WHERE modulation_code LIKE 'FM' AND modulation_name LIKE 'Frequency modulation';

INSERT INTO ew.modulation_type (modulation_code, modulation_name, deleted)
  SELECT 'FSK', 'Frequency Shift Keying', false WHERE NOT EXISTS (SELECT 1 FROM ew.modulation_type WHERE modulation_code LIKE 'FSK' AND modulation_name LIKE 'Frequency Shift Keying');
--rollback DELETE FROM ew.modulation_type WHERE modulation_code LIKE 'FSK' AND modulation_name LIKE 'Frequency Shift Keying';

INSERT INTO ew.modulation_type (modulation_code, modulation_name, deleted)
  SELECT 'PSK', 'Phase Shift Keying', false WHERE NOT EXISTS (SELECT 1 FROM ew.modulation_type WHERE modulation_code LIKE 'PSK' AND modulation_name LIKE 'Phase Shift Keying');
--rollback DELETE FROM ew.modulation_type WHERE modulation_code LIKE 'PSK' AND modulation_name LIKE 'Phase Shift Keying';

INSERT INTO ew.modulation_type (modulation_code, modulation_name, deleted)
  SELECT 'CPM', 'Continuous phase modulation', false WHERE NOT EXISTS (SELECT 1 FROM ew.modulation_type WHERE modulation_code LIKE 'CPM' AND modulation_name LIKE 'Continuous phase modulation');
--rollback DELETE FROM ew.modulation_type WHERE modulation_code LIKE 'CPM' AND modulation_name LIKE 'Continuous phase modulation';

INSERT INTO ew.modulation_type (modulation_code, modulation_name, deleted)
  SELECT 'GMSK', 'Gaussian Minimum Shift Keying', false WHERE NOT EXISTS (SELECT 1 FROM ew.modulation_type WHERE modulation_code LIKE 'GMSK' AND modulation_name LIKE 'Gaussian Minimum Shift Keying');
--rollback DELETE FROM ew.modulation_type WHERE modulation_code LIKE 'GMSK' AND modulation_name LIKE 'Gaussian Minimum Shift Keying';

