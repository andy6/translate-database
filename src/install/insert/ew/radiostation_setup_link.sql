--liquibase formatted sql
--changeset Andy:1.0.3.1 (splitStatements:false endDelimiter:;)
--comment Adding data to table ew.radiostation_setup_link.

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
 (SELECT id FROM ew.radiostation WHERE name LIKE 'RF13'), 
 (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_5W' AND digital = false), 
 false, 20 
WHERE NOT EXISTS 
 (SELECT 1 FROM ew.radiostation_setup_link WHERE 
 fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'RF13') AND 
 fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_5W' AND digital = false));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'RF13') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_5W' AND digital = false);



--changeset Andy:1.0.5.1 (splitStatements:false endDelimiter:;) dbms:postgresql
--comment Adding data to table ew.radiostation_setup_link.

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR MANPACK C'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_AM_JAMMER_BW25k_50W' AND digital = false), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR MANPACK C') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_AM_JAMMER_BW25k_50W' AND digital = false));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR MANPACK C') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_AM_JAMMER_BW25k_50W' AND digital = false);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1301'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_0.5W' AND digital = false), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1301') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_0.5W' AND digital = false));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1301') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_0.5W' AND digital = false);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1301'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_1W' AND digital = false), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1301') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_1W' AND digital = false));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1301') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_1W' AND digital = false);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1302'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_0.5W' AND digital = false), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1302') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_0.5W' AND digital = false));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1302') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_0.5W' AND digital = false);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'MOTOROLA VHF'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS12.5k_5W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MOTOROLA VHF') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS12.5k_5W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MOTOROLA VHF') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS12.5k_5W' AND digital = true);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'MOTOROLA UHF'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS12.5k_5W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MOTOROLA UHF') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS12.5k_5W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MOTOROLA UHF') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS12.5k_5W' AND digital = true);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'MOTOROLA VHF'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS12.5k_5W' AND digital = false), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MOTOROLA VHF') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS12.5k_5W' AND digital = false));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MOTOROLA VHF') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS12.5k_5W' AND digital = false);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'MOTOROLA UHF'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS12.5k_5W' AND digital = false), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MOTOROLA UHF') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS12.5k_5W' AND digital = false));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MOTOROLA UHF') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS12.5k_5W' AND digital = false);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'MOTOROLA VHF'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS12.5k_5W' AND digital = false), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MOTOROLA VHF') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS12.5k_5W' AND digital = false));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MOTOROLA VHF') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS12.5k_5W' AND digital = false);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'THALES'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS5k_5W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'THALES') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS5k_5W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'THALES') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS5k_5W' AND digital = true);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'PMR'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS6.25k_0.5W' AND digital = false), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'PMR') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS6.25k_0.5W' AND digital = false));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'PMR') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS6.25k_0.5W' AND digital = false);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'PMR'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS12.5k_0.5W' AND digital = false), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'PMR') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS12.5k_0.5W' AND digital = false));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'PMR') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS12.5k_0.5W' AND digital = false);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HYTERA'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_PSK_BW25k_FS12.5k_1W' AND digital = false), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HYTERA') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_PSK_BW25k_FS12.5k_1W' AND digital = false));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HYTERA') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_PSK_BW25k_FS12.5k_1W' AND digital = false);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HYTERA'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_PSK_BW25k_FS12.5k_2W' AND digital = false), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HYTERA') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_PSK_BW25k_FS12.5k_2W' AND digital = false));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HYTERA') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_PSK_BW25k_FS12.5k_2W' AND digital = false);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HYTERA'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_PSK_BW25k_FS12.5k_3W' AND digital = false), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HYTERA') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_PSK_BW25k_FS12.5k_3W' AND digital = false));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HYTERA') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_PSK_BW25k_FS12.5k_3W' AND digital = false);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HYTERA'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_PSK_BW25k_FS12.5k_4W' AND digital = false), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HYTERA') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_PSK_BW25k_FS12.5k_4W' AND digital = false));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HYTERA') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_PSK_BW25k_FS12.5k_4W' AND digital = false);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HYTERA'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_PSK_BW25k_FS12.5k_5W' AND digital = false), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HYTERA') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_PSK_BW25k_FS12.5k_5W' AND digital = false));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HYTERA') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_PSK_BW25k_FS12.5k_5W' AND digital = false);



INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_2W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_2W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_2W' AND digital = true);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_5W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_5W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_5W' AND digital = true);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_25W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_25W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_25W' AND digital = true);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_50W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_50W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_50W' AND digital = true);


INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_2W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_2W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_2W' AND digital = true);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_5W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_5W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_5W' AND digital = true);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_25W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_25W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_25W' AND digital = true);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_50W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_50W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_50W' AND digital = true);


INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_2W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_2W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_2W' AND digital = true);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_5W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_5W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_5W' AND digital = true);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_25W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_25W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_25W' AND digital = true);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_50W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_50W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_50W' AND digital = true);






INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_10W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_10W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_10W' AND digital = true);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_20W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_20W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_20W' AND digital = true);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_50W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_50W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_AM_BW25k_FS1k_50W' AND digital = true);


INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_10W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_10W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_10W' AND digital = true);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_20W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_20W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_20W' AND digital = true);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_50W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_50W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW25k_FS1k_50W' AND digital = true);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS1k_10W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS1k_10W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS1k_10W' AND digital = true);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS1k_20W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS1k_20W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS1k_20W' AND digital = true);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS1k_50W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS1k_50W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FSK_BW25k_FS1k_50W' AND digital = true);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_10W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_10W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_10W' AND digital = true);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_20W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_20W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_20W' AND digital = true);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_50W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_50W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_PSK_BW25k_FS1k_50W' AND digital = true);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_CPM_BW25k_FS1k_10W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_CPM_BW25k_FS1k_10W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_CPM_BW25k_FS1k_10W' AND digital = true);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_CPM_BW25k_FS1k_20W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_CPM_BW25k_FS1k_20W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_CPM_BW25k_FS1k_20W' AND digital = true);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_CPM_BW25k_FS1k_50W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_CPM_BW25k_FS1k_50W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_CPM_BW25k_FS1k_50W' AND digital = true);


INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1302'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_0.5W' AND digital = false), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1301') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_0.5W' AND digital = false));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1301') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_0.5W' AND digital = false);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1301'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_1W' AND digital = false), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1301') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_1W' AND digital = false));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1301') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_1W' AND digital = false);


--changeset Andy:1.0.5.5 (splitStatements:false endDelimiter:;) dbms:postgresql
--comment Adding data to table ew.radiostation_setup_link.

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'MVKVR'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW2000k_FS50k_1000W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MVKVR') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW2000k_FS50k_1000W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MVKVR') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW2000k_FS50k_1000W' AND digital = false);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'Obecni rozhlas'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_100W' AND digital = false), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Obecni rozhlas') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_100W' AND digital = false));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Obecni rozhlas') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_100W' AND digital = false);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR1'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_15W' AND digital = false), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR1') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_15W' AND digital = false));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR1') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_15W' AND digital = false);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR2'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_15W' AND digital = false), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR2') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_15W' AND digital = false));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR2') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_15W' AND digital = false);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'FM BROADCAST'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW100k_FS100k_100W' AND digital = false), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'FM BROADCAST') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW100k_FS100k_100W' AND digital = false));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'FM BROADCAST') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW100k_FS100k_100W' AND digital = false);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'FM BROADCAST'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW100k_FS100k_1000W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'FM BROADCAST') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW100k_FS100k_1000W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'FM BROADCAST') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW100k_FS100k_1000W' AND digital = true);

INSERT INTO ew.radiostation_setup_link (fk_radiostation, fk_setup, deleted, modulation_index) 
SELECT 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'FM BROADCAST'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW100k_FS100k_5000W' AND digital = true), 
  false, 20
WHERE NOT EXISTS 
  (SELECT 1 FROM ew.radiostation_setup_link WHERE 
  fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'FM BROADCAST') AND 
  fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW100k_FS100k_5000W' AND digital = true));
--rollback DELETE FROM ew.radiostation_setup_link WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'FM BROADCAST') AND fk_setup = (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'D_FM_BW100k_FS100k_5000W' AND digital = true);

