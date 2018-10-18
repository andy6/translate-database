--liquibase formatted sql

--changeset Andy:1.0.4.1 (splitStatements:false endDelimiter:;)
--comment Adding data to table wasp.callsign.

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'alfa', true, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'alfa');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'alfa';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'bravo', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'bravo');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'bravo';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'charlie', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'charlie');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'charlie';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'delta', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'delta');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'delta';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'echo', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'echo');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'echo';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'foxtrot', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'foxtrot');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'foxtrot';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'golf', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'golf');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'golf';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'hotel', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'hotel');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'hotel';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'india', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'india');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'india';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'juliett', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'juliett');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'juliett';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'kilo', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'kilo');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'kilo';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'lima', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'lima');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'lima';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'mike', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'mike');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'mike';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'november', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'november');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'november';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'oscar', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'oscar');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'oscar';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'papa', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'papa');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'papa';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'quebec', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'quebec');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'quebec';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'romeo', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'romeo');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'romeo';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'sierra', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'sierra');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'sierra';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'tango', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'tango');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'tango';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'uniform', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'uniform');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'uniform';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'victor', true, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'victor');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'victor';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'whiskey', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'whiskey');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'whiskey';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'x-ray', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'x-ray');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'x-ray';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'yankee', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'yankee');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'yankee';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'zulu', true, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'zulu');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'zulu';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'FLASHBACK', true, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CRC (COMBAT and REPORTING CENTER)'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'FLASHBACK');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'FLASHBACK';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'POWER CITY', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CRC (COMBAT and REPORTING CENTER)'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'POWER CITY');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'POWER CITY';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'SUNBEAM', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CRC (COMBAT and REPORTING CENTER)'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'SUNBEAM');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'SUNBEAM';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'CAVEMAN', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CRC (COMBAT and REPORTING CENTER)'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'CAVEMAN');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'CAVEMAN';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'SUNRISE', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CRC (COMBAT and REPORTING CENTER)'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'SUNRISE');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'SUNRISE';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'LIMELIGHT', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CRC (COMBAT and REPORTING CENTER)'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'LIMELIGHT');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'LIMELIGHT';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'CYRANO', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CRC (COMBAT and REPORTING CENTER)'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'CYRANO');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'CYRANO';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'LONESHIP', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CRC (COMBAT and REPORTING CENTER)'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'LONESHIP');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'LONESHIP';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'BANDBOX', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CRC (COMBAT and REPORTING CENTER)'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'BANDBOX');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'BANDBOX';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'CF', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'CF');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'CF';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'MAIDEN', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'MAIDEN');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'MAIDEN';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'LION', true, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'LION');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'LION';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'SILVO', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'SILVO');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'SILVO';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'SAPHIRE', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'SAPHIRE');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'SAPHIRE';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'TALISMAN', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'TALISMAN');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'TALISMAN';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'PEGAS', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'PEGAS');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'PEGAS';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'PLUTO', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'PLUTO');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'PLUTO';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'GOLEM', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'GOLEM');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'GOLEM';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'BUTCHER', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'BUTCHER');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'BUTCHER';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'OBLET', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'OBLET');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'OBLET';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'FOTO', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'FOTO');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'FOTO';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'GRIZZLY', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'GRIZZLY');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'GRIZZLY';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'CABBY', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'CABBY');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'CABBY';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'BUDDY', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'BUDDY');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'BUDDY';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'BEATLE', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'BEATLE');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'BEATLE';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'SNAKE', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'SNAKE');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'SNAKE';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'DUSTER', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'DUSTER');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'DUSTER';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'SHAKER', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'SHAKER');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'SHAKER';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'GASTON', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'GASTON');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'GASTON';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'SALON', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'SALON');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'SALON';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'HIPPO', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'HIPPO');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'HIPPO';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'WOLF', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'WOLF');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'WOLF';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'HIND', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'HIND');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'HIND';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'CEF', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'CEF');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'CEF';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'SMUGLER', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'SMUGLER');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'SMUGLER';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'HANDY', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'HANDY');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'HANDY';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'DOLPHIN', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'DOLPHIN');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'DOLPHIN';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'JSG', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'JSG');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'JSG';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'JKIL', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'JKIL');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'JKIL';

INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT 'FALCON', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE 'FALCON');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE 'FALCON';

