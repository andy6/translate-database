--liquibase formatted sql
--changeset Andy:1.0.6 (splitStatements:false endDelimiter:;) dbms:postgresql
--comment Adding data to table ew.radiostation.

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'AIR1', '118000000', '150000000', '15', '15', 'f', NULL, 'f', 'f', 'f', NULL, NULL, 't' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'AIR1');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'AIR1';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'AIR2', '220000000', '400000000', '15', '15', 'f', NULL, 'f', 'f', 'f', NULL, NULL, 't' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'AIR2');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'AIR2';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'FM BROADCAST', '88000000', '108000000', '15', '5000', 'f', NULL, 'f', 'f', 'f', NULL, NULL, 'f' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'FM BROADCAST');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'FM BROADCAST';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'HARRIS 117G', '30000000', '2000000000', '0', NULL, 'f', '', 'f', 'f', 't', '0.004', '0.005', 't' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'HARRIS 117G');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'HARRIS 117G';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'HARRIS 152', '30000000', '870000000', '0', NULL, 'f', '', 'f', 'f', 't', '0.004', '0.005', 't' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'HARRIS 152');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'HARRIS 152';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'Harris AN/PRC 117G', '30000000', '20000000000', '0', NULL, 'f', '', 'f', 't', 't', '0.004', '0.005', 't' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 117G');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 117G';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'Harris AN/PRC 152', '30000000', '870000000', '0', NULL, 'f', '', 'f', 't', 't', '0.004', '0.005', 't' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 152');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 152';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'HYTERA', '136000000', '174000000', '0', NULL, 'f', '', 'f', 'f', 'f', NULL, NULL, 'f' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'HYTERA');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'HYTERA';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'Letecký komunikátor', '118000000', '144000000', '0', '50', 'f', NULL, 'f', 'f', 'f', NULL, NULL, 'f' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'Letecký komunikátor');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'Letecký komunikátor';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'Letecký komunikátor 2', '220000000', '400000000', '0', '50', 'f', NULL, 'f', 'f', 'f', NULL, NULL, 'f' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'Letecký komunikátor 2');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'Letecký komunikátor 2';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'MANPACK R', '25000000', '512000000', '0', '20', 'f', 'Ochranný rušič', 't', 't', 'f', '8e-005', '8e-005', 't' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'MANPACK R');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'MANPACK R';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'MKVR', '1000000', '30000000', '0', '1000', 'f', NULL, 't', 'f', 'f', NULL, NULL, 'f' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'MKVR');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'MKVR';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'MOTOROLA UHF', '400000000', '520000000', '0', NULL, 'f', '', 'f', 'f', 'f', NULL, NULL, 'f' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'MOTOROLA UHF');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'MOTOROLA UHF';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'MOTOROLA VHF', '136000000', '174000000', '0', NULL, 'f', '', 'f', 'f', 'f', NULL, NULL, 'f' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'MOTOROLA VHF');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'MOTOROLA VHF';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'MUKVR', '100000000', '500000000', '0', '500', 'f', 'Komunikační', 't', 'f', 'f', NULL, NULL, 'f' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'MUKVR');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'MUKVR';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'MVKVR', '30000000', '108000000', '16', '1000', 'f', NULL, 't', 't', 'f', NULL, NULL, 't' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'MVKVR');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'MVKVR';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'Obecni rozhlas', '35000000', '80000000', '15', '100', 'f', NULL, 'f', 'f', 'f', NULL, NULL, 'f' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'Obecni rozhlas');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'Obecni rozhlas';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'PMR', '446000000', '446200000', '0', NULL, 'f', '', 'f', 'f', 'f', NULL, NULL, 'f' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'PMR');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'PMR';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'RF13', '30000000', '88000000', '-10', NULL, 'f', '', 'f', 'f', 'f', NULL, NULL, 'f' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'RF13');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'RF13';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'RF1301', '30000000', '88000000', '0', NULL, 'f', '', 'f', 'f', 'f', NULL, NULL, 'f' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'RF1301');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'RF1301';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'RF1302', '25000000', '146000000', '0', NULL, 'f', '', 'f', 'f', 'f', NULL, NULL, 'f' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'RF1302');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'RF1302';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'STAR LIGHT 3', '25000000', '1880000000', '0', '275', 'f', 'Ochranný rušič vozidla', 't', 't', 'f', '8e-005', '8e-005', 't' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'STAR LIGHT 3');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'STAR LIGHT 3';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'STAR MANPACK C', '25000000', '2500000000', '0', '20', 'f', '', 't', 't', 'f', '8e-005', '8e-005', 't' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'STAR MANPACK C');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'STAR MANPACK C';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'STAR MANPACK G', '25', '5800', '0', '20', 'f', 'Přenosný ochranný rušič', 't', 't', 'f', '8e-005', '8e-005', 't' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'STAR MANPACK G');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'STAR MANPACK G';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'STAR MANPACK M', '25000000', '2700000000', '0', '20', 'f', 'Přenosný ochranný rušič', 't', 't', 'f', '8e-005', '8e-005', 't' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'STAR MANPACK M');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'STAR MANPACK M';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'STAR MANPACK R', '25000000', '512000000', '0', '20', 'f', 'Ochranný rušič', 't', 't', 'f', '8e-005', '8e-005', 't' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'STAR MANPACK R');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'STAR MANPACK R';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'STAR V', '25000000', '5900000000', '0', '200', 'f', 'Ochranný rušič konvojů vozidel', 't', 't', 'f', '8e-005', '8e-005', 't' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'STAR V');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'STAR V';

INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT 'THALES', '30000000', '512000000', '0', NULL, 'f', '', 'f', 'f', 'f', NULL, NULL, 't' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE 'THALES');
--rollback DELETE FROM ew.radiostation WHERE name LIKE 'THALES';




