--liquibase formatted sql
--changeset Andy:1.0.6 (splitStatements:false endDelimiter:;)
--comment Adding data to table ew.frequency_step.

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'RF13'), '25000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'RF13') AND frequency = '25000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'RF13') AND frequency = '25000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1301'), '25000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1301') AND frequency = '25000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1301') AND frequency = '25000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1302'), '25000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1302') AND frequency = '25000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'RF1302') AND frequency = '25000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 117G'), '25000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 117G') AND frequency = '25000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 117G') AND frequency = '25000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 117G'), '500000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 117G') AND frequency = '500000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 117G') AND frequency = '500000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 117G'), '12000000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 117G') AND frequency = '12000000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 117G') AND frequency = '12000000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 117G'), '2500000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 117G') AND frequency = '2500000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 117G') AND frequency = '2500000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 117G'), '5000000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 117G') AND frequency = '5000000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 117G') AND frequency = '5000000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 117G'), '8330' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 117G') AND frequency = '8330');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 117G') AND frequency = '8330';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 117G'), '12500' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 117G') AND frequency = '12500');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 117G') AND frequency = '12500';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 152'), '8330' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 152') AND frequency = '8330');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 152') AND frequency = '8330';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 152'), '12500' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 152') AND frequency = '12500');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 152') AND frequency = '12500';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 152'), '25000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 152') AND frequency = '25000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 152') AND frequency = '25000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 152'), '500000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 152') AND frequency = '500000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 152') AND frequency = '500000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 152'), '12000000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 152') AND frequency = '12000000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Harris AN/PRC 152') AND frequency = '12000000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR MANPACK C'), '25000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR MANPACK C') AND frequency = '25000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR MANPACK C') AND frequency = '25000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152'), '500000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND frequency = '500000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND frequency = '500000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152'), '12000000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND frequency = '12000000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND frequency = '12000000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152'), '25000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND frequency = '25000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND frequency = '25000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152'), '12500' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND frequency = '12500');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND frequency = '12500';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152'), '8330' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND frequency = '8330');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 152') AND frequency = '8330';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), '500000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND frequency = '500000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND frequency = '500000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), '8330' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND frequency = '8330');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND frequency = '8330';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), '12500' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND frequency = '12500');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND frequency = '12500';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), '25000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND frequency = '25000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND frequency = '25000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), '12000000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND frequency = '12000000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND frequency = '12000000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), '2500000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND frequency = '2500000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND frequency = '2500000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G'), '5000000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND frequency = '5000000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'HARRIS 117G') AND frequency = '5000000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'MVKVR'), '12500' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MVKVR') AND frequency = '12500');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MVKVR') AND frequency = '12500';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'MVKVR'), '25000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MVKVR') AND frequency = '25000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MVKVR') AND frequency = '25000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'MVKVR'), '50000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MVKVR') AND frequency = '50000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MVKVR') AND frequency = '50000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'MVKVR'), '2000000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MVKVR') AND frequency = '2000000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MVKVR') AND frequency = '2000000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'Obecni rozhlas'), '25000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Obecni rozhlas') AND frequency = '25000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Obecni rozhlas') AND frequency = '25000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR1'), '50000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR1') AND frequency = '50000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR1') AND frequency = '50000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR1'), '25000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR1') AND frequency = '25000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR1') AND frequency = '25000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR1'), '12500' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR1') AND frequency = '12500');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR1') AND frequency = '12500';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR2'), '50000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR2') AND frequency = '50000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR2') AND frequency = '50000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR2'), '12500' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR2') AND frequency = '12500');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR2') AND frequency = '12500';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR2'), '25000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR2') AND frequency = '25000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'AIR2') AND frequency = '25000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'FM BROADCAST'), '100000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'FM BROADCAST') AND frequency = '100000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'FM BROADCAST') AND frequency = '100000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'Letecký komunikátor'), '25000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Letecký komunikátor') AND frequency = '25000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Letecký komunikátor') AND frequency = '25000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'Letecký komunikátor 2'), '25000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Letecký komunikátor 2') AND frequency = '25000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'Letecký komunikátor 2') AND frequency = '25000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR V'), '25000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR V') AND frequency = '25000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR V') AND frequency = '25000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR LIGHT 3'), '25000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR LIGHT 3') AND frequency = '25000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR LIGHT 3') AND frequency = '25000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'MANPACK R'), '25000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MANPACK R') AND frequency = '25000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MANPACK R') AND frequency = '25000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR MANPACK M'), '25000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR MANPACK M') AND frequency = '25000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR MANPACK M') AND frequency = '25000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR MANPACK G'), '25000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR MANPACK G') AND frequency = '25000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR MANPACK G') AND frequency = '25000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR MANPACK R'), '25000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR MANPACK R') AND frequency = '25000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'STAR MANPACK R') AND frequency = '25000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'MKVR'), '25000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MKVR') AND frequency = '25000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MKVR') AND frequency = '25000';

INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE 'MUKVR'), '25000' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MUKVR') AND frequency = '25000');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE 'MUKVR') AND frequency = '25000';



