--liquibase formatted sql
--changeset Andy:1.0.3.1 (splitStatements:false endDelimiter:;)
--comment Adding data to table wasp.callsign_set.

INSERT INTO wasp.callsign_set (name, deleted)
  SELECT 'NATO fonetická abeceda', false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign_set WHERE name = 'NATO fonetická abeceda');
--rollback DELETE FROM wasp.callsign_set WHERE name = 'NATO fonetická abeceda';

INSERT INTO wasp.callsign_set (name, deleted)
  SELECT 'CRC (COMBAT and REPORTING CENTER)', false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign_set WHERE name = 'CRC (COMBAT and REPORTING CENTER)');
--rollback DELETE FROM wasp.callsign_set WHERE name = 'CRC (COMBAT and REPORTING CENTER)';

INSERT INTO wasp.callsign_set (name, deleted)
  SELECT 'CZECH AIR FORCE', false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign_set WHERE name = 'CZECH AIR FORCE');
--rollback DELETE FROM wasp.callsign_set WHERE name = 'CZECH AIR FORCE';


