--liquibase formatted sql
--changeset Andy:1.0.3.1 (splitStatements:false endDelimiter:;)
--comment Adding data to table ew.transmission_setup.

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'A_AM_BW25k_FS25k_5W', false, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM'), 25000, 25000, false, 5, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_AM_BW25k_FS25k_5W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM') AND digital = false);
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_AM_BW25k_FS25k_5W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_PSK_BW25k_FS25k_5W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK'), 25000, 25000, false, 5, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS25k_5W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS25k_5W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'A_AM_JAMMER_BW25k_50W', false, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM'), 25000, 25000, false, 50, 3500 WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_AM_JAMMER_BW25k_50W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_AM_JAMMER_BW25k_50W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM');


--changeset Andy:1.0.5.1 (splitStatements:false endDelimiter:;) dbms:postgresql
--comment Adding data to table ew.transmission_setup. 

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'A_FM_BW25k_FS25k_5W', false, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'), 150000, 25000, false, 5, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_5W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_5W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM');

-- TODO default_power=0.5
INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'A_FM_BW25k_FS25k_0.5W', false, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'), 25000, 25000, false, 5, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_0.5W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_0.5W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'A_FM_BW25k_FS25k_1W', false, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'), 25000, 25000, false, 1, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_1W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_1W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'A_FM_BW25k_FS12.5k_5W', false, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'), 25000, 12500, false, 5, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS12.5k_5W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS12.5k_5W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_FSK_BW25k_FS12.5k_5W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FSK'), 25000, 12500, false, 5, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS12.5k_5W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FSK'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS12.5k_5W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FSK');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_FSK_BW25k_FS5k_5W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FSK'), 25000, 5000, false, 5, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS5k_5W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FSK'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS5k_5W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FSK');

-- TODO default_power=0.5
INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'A_FM_BW25k_FS6.25k_0.5W', false, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'), 25000, 6250, false, 5, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS6.25k_0.5W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS6.25k_0.5W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM');

-- TODO default_power=0.5
INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'A_FM_BW25k_FS12.5k_0.5W', false, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'), 25000, 12500, false, 5, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS12.5k_0.5W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS12.5k_0.5W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'A_PSK_BW25k_FS12.5k_1W', false, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK'), 25000, 12500, false, 1, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_PSK_BW25k_FS12.5k_1W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_PSK_BW25k_FS12.5k_1W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'A_PSK_BW25k_FS12.5k_2W', false, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK'), 25000, 12500, false, 2, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_PSK_BW25k_FS12.5k_2W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_PSK_BW25k_FS12.5k_2W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'A_PSK_BW25k_FS12.5k_3W', false, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK'), 25000, 12500, false, 3, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_PSK_BW25k_FS12.5k_3W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_PSK_BW25k_FS12.5k_3W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'A_PSK_BW25k_FS12.5k_4W', false, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK'), 25000, 12500, false, 4, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_PSK_BW25k_FS12.5k_4W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_PSK_BW25k_FS12.5k_4W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'A_PSK_BW25k_FS12.5k_5W', false, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK'), 25000, 12500, false, 5, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_PSK_BW25k_FS12.5k_5W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_PSK_BW25k_FS12.5k_5W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_FM_BW25k_FS1k_2W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'), 25000, 1000, false, 2, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_2W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_2W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_FM_BW25k_FS1k_5W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'), 25000, 1000, false, 5, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_5W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_5W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_FM_BW25k_FS1k_25W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'), 25000, 1000, false, 25, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_25W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_25W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_AM_BW25k_FS1k_2W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM'), 25000, 1000, false, 2, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_2W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_2W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_AM_BW25k_FS1k_5W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM'), 25000, 1000, false, 5, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_5W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_5W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_AM_BW25k_FS1k_25W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM'), 25000, 1000, false, 25, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_25W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_25W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_AM_BW25k_FS1k_50W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM'), 25000, 1000, false, 50, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_50W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_50W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_PSK_BW25k_FS1k_2W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK'), 25000, 1000, false, 2, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_2W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_2W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_PSK_BW25k_FS1k_5W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK'), 25000, 1000, false, 5, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_5W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_5W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_PSK_BW25k_FS1k_25W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK'), 25000, 1000, false, 25, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_25W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_25W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK');



INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_AM_BW25k_FS1k_10W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM'), 25000, 1000, false, 10, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_10W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_10W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_AM_BW25k_FS1k_20W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM'), 25000, 1000, false, 20, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_20W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_20W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_FM_BW25k_FS1k_10W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'), 25000, 1000, false, 10, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_10W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_10W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_FM_BW25k_FS1k_20W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'), 25000, 1000, false, 20, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_20W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_20W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_FM_BW25k_FS1k_50W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'), 25000, 1000, false, 50, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_50W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_50W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_FSK_BW25k_FS1k_10W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FSK'), 25000, 1000, false, 10, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS1k_10W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FSK'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS1k_10W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FSK');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_FSK_BW25k_FS1k_20W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FSK'), 25000, 1000, false, 20, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS1k_20W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FSK'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS1k_20W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FSK');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_FSK_BW25k_FS1k_50W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FSK'), 25000, 1000, false, 50, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS1k_50W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FSK'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS1k_50W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FSK');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_PSK_BW25k_FS1k_10W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK'), 25000, 1000, false, 10, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_10W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_10W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_PSK_BW25k_FS1k_20W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK'), 25000, 1000, false, 20, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_20W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_20W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_PSK_BW25k_FS1k_50W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK'), 25000, 1000, false, 50, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_50W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_50W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'PSK');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_CPM_BW25k_FS1k_10W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'CPM'), 25000, 1000, false, 10, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_CPM_BW25k_FS1k_10W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'CPM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_CPM_BW25k_FS1k_10W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'CPM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_CPM_BW25k_FS1k_20W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'CPM'), 25000, 1000, false, 20, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_CPM_BW25k_FS1k_20W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'CPM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_CPM_BW25k_FS1k_20W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'CPM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_CPM_BW25k_FS1k_50W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'CPM'), 25000, 1000, false, 50, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_CPM_BW25k_FS1k_50W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'CPM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_CPM_BW25k_FS1k_50W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'CPM');


--changeset Andy:1.0.5.5 (splitStatements:false endDelimiter:;)
--comment Adding data to table ew.transmission_setup.

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'A_AM_BW1k_FS0.001k_1W', false, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM'), 1000, 1, false, 1, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_AM_BW1k_FS0.001k_1W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_AM_BW1k_FS0.001k_1W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_AM_BW1k_FS0.001k_1W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM'), 1000, 1, false, 1, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW1k_FS0.001k_1W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW1k_FS0.001k_1W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_AM_BW1k_FS0.002k_1W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM'), 1000, 2, false, 1, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW1k_FS0.002k_1W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW1k_FS0.002k_1W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'AM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_FM_BW2000k_FS50k_1000W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'), 2000000, 50000, true, 1000, 10000 WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW2000k_FS50k_1000W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW2000k_FS50k_1000W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'A_FM_BW25k_FS25k_100W', false, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'), 25000, 25000, false, 100, 3500 WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_100W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_100W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'A_FM_BW25k_FS25k_100W', false, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'), 25000, 25000, false, 15, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_100W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_100W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'A_FM_BW25k_FS25k_15W', false, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'), 25000, 25000, false, 15, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_15W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_15W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'A_FM_BW100k_FS100k_100W', false, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'), 100000, 100000, false, 100, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW100k_FS100k_100W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW100k_FS100k_100W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_FM_BW100k_FS100k_1000W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'), 100000, 100000, false, 1000, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW100k_FS100k_1000W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW100k_FS100k_1000W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM');

INSERT INTO ew.transmission_setup (transmission_mode_name, digital, deleted, fk_modulation_type, bandwidth, frequency_step, sweep, default_power, max_range)
  SELECT 'D_FM_BW100k_FS100k_5000W', true, false, (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'), 100000, 100000, false, 5000, NULL WHERE NOT EXISTS (SELECT 1 FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW100k_FS100k_5000W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM'));
--rollback DELETE FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW100k_FS100k_5000W' AND fk_modulation_type = (SELECT id FROM ew.modulation_type WHERE modulation_code LIKE 'FM');
