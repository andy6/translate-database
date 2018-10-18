--liquibase formatted sql
--changeset Andy:1.0.5.1 (splitStatements:false endDelimiter:;)
--comment Adding data to table wasp.network_creation.



INSERT INTO wasp.network_creation (network_domain, description, fk_wasp_actors, fk_radiostation, fk_transmission_setup, fk_equipment_user, fk_callsign_set, deleted)
  SELECT 
  'airDeparture',
  'Odlet',
  (SELECT id FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Letiste' AND display_name LIKE 'Letiště'), 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'RF13' AND digital = 'f'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_5W' AND digital = 'f'), 
  (SELECT id FROM wasp.equipment_user WHERE name LIKE 'AČR'), 
  (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'),
  false
  WHERE NOT EXISTS (SELECT 1 FROM wasp.network_creation WHERE network_domain LIKE 'airDeparture' AND fk_wasp_actors = (SELECT id FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Letiste' AND display_name LIKE 'Letiště'));
--rollback DELETE FROM wasp.network_creation WHERE network_domain LIKE 'airDeparture';

INSERT INTO wasp.network_creation (network_domain, description, fk_wasp_actors, fk_radiostation, fk_transmission_setup, fk_equipment_user, fk_callsign_set, deleted)
  SELECT 
  'airATC',
  'ATC kanál pro registraci letadel',
  (SELECT id FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/RLP' AND display_name LIKE 'Řízení letového provozu'), 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'RF13' AND digital = 'f'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_5W' AND digital = 'f'), 
  (SELECT id FROM wasp.equipment_user WHERE name LIKE 'AČR'), 
  (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'),
  false
  WHERE NOT EXISTS (SELECT 1 FROM wasp.network_creation WHERE network_domain LIKE 'airATC' AND fk_wasp_actors = (SELECT id FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/RLP' AND display_name LIKE 'Řízení letového provozu'));
--rollback DELETE FROM wasp.network_creation WHERE network_domain LIKE 'airATC';

INSERT INTO wasp.network_creation (network_domain, description, fk_wasp_actors, fk_radiostation, fk_transmission_setup, fk_equipment_user, fk_callsign_set, deleted)
  SELECT 
  'airATCRequest',
  'ATC kanál pro dotazy letadel',
  (SELECT id FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/RLP' AND display_name LIKE 'Řízení letového provozu'), 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'RF13' AND digital = 'f'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_5W' AND digital = 'f'), 
  (SELECT id FROM wasp.equipment_user WHERE name LIKE 'AČR'), 
  (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'),
  false
  WHERE NOT EXISTS (SELECT 1 FROM wasp.network_creation WHERE network_domain LIKE 'airATCRequest' AND fk_wasp_actors = (SELECT id FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/RLP' AND display_name LIKE 'Řízení letového provozu'));
--rollback DELETE FROM wasp.network_creation WHERE network_domain LIKE 'airATCRequest';

INSERT INTO wasp.network_creation (network_domain, description, fk_wasp_actors, fk_radiostation, fk_transmission_setup, fk_equipment_user, fk_callsign_set, deleted)
  SELECT 
  'airApproach',
  'Instrukce pro přistání',
  (SELECT id FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Letiste' AND display_name LIKE 'Letiště'), 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'RF13' AND digital = 'f'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_5W' AND digital = 'f'), 
  (SELECT id FROM wasp.equipment_user WHERE name LIKE 'AČR'), 
  (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'),
  false
  WHERE NOT EXISTS (SELECT 1 FROM wasp.network_creation WHERE network_domain LIKE 'airApproach' AND fk_wasp_actors = (SELECT id FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Letiste' AND display_name LIKE 'Letiště'));
--rollback DELETE FROM wasp.network_creation WHERE network_domain LIKE 'airApproach';

INSERT INTO wasp.network_creation (network_domain, description, fk_wasp_actors, fk_radiostation, fk_transmission_setup, fk_equipment_user, fk_callsign_set, deleted)
  SELECT 
  'airTower',
  'Řízení vzletu a přistání.',
  (SELECT id FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Letiste' AND display_name LIKE 'Letiště'), 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'RF13' AND digital = 'f'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_5W' AND digital = 'f'), 
  (SELECT id FROM wasp.equipment_user WHERE name LIKE 'AČR'), 
  (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'),
  false
  WHERE NOT EXISTS (SELECT 1 FROM wasp.network_creation WHERE network_domain LIKE 'airTower' AND fk_wasp_actors = (SELECT id FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Letiste' AND display_name LIKE 'Letiště'));
--rollback DELETE FROM wasp.network_creation WHERE network_domain LIKE 'airTower';

INSERT INTO wasp.network_creation (network_domain, description, fk_wasp_actors, fk_radiostation, fk_transmission_setup, fk_equipment_user, fk_callsign_set, deleted)
  SELECT 
  'civilTVUHF',
  'Televizní vysílač.',
  (SELECT id FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/VT 72M4CZ' AND display_name LIKE 'VT-72 M4 CZ'), 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'RF13' AND digital = 'f'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_5W' AND digital = 'f'), 
  (SELECT id FROM wasp.equipment_user WHERE name LIKE 'AČR'), 
  (SELECT id FROM wasp.callsign_set WHERE name LIKE 'NATO fonetická abeceda'),
  false
  WHERE NOT EXISTS (SELECT 1 FROM wasp.network_creation WHERE network_domain LIKE 'civilTVUHF' AND fk_wasp_actors = (SELECT id FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/VT 72M4CZ' AND display_name LIKE 'VT-72 M4 CZ'));
--rollback DELETE FROM wasp.network_creation WHERE network_domain LIKE 'civilTVUHF';

INSERT INTO wasp.network_creation (network_domain, description, fk_wasp_actors, fk_radiostation, fk_transmission_setup, fk_equipment_user, fk_callsign_set, deleted)
  SELECT 
  'airJTac',
  'Pro navádění entit.',
  (SELECT id FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC JTAC' AND display_name LIKE 'IC JTAC'), 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'RF13' AND digital = 'f'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_5W' AND digital = 'f'), 
  (SELECT id FROM wasp.equipment_user WHERE name LIKE 'AČR'), 
  (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'),
  false
  WHERE NOT EXISTS (SELECT 1 FROM wasp.network_creation WHERE network_domain LIKE 'airJTac' AND fk_wasp_actors = (SELECT id FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC JTAC' AND display_name LIKE 'IC JTAC'));
--rollback DELETE FROM wasp.network_creation WHERE network_domain LIKE 'airJTac';

INSERT INTO wasp.network_creation (network_domain, description, fk_wasp_actors, fk_radiostation, fk_transmission_setup, fk_equipment_user, fk_callsign_set, deleted)
  SELECT 
  'airGround',
  'Informace o přesunu na start.',
  (SELECT id FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Letiste' AND display_name LIKE 'Letiště'), 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'RF13' AND digital = 'f'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_5W' AND digital = 'f'), 
  (SELECT id FROM wasp.equipment_user WHERE name LIKE 'AČR'), 
  (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'),
  false
  WHERE NOT EXISTS (SELECT 1 FROM wasp.network_creation WHERE network_domain LIKE 'airGround' AND fk_wasp_actors = (SELECT id FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Letiste' AND display_name LIKE 'Letiště'));
--rollback DELETE FROM wasp.network_creation WHERE network_domain LIKE 'airGround';

INSERT INTO wasp.network_creation (network_domain, description, fk_wasp_actors, fk_radiostation, fk_transmission_setup, fk_equipment_user, fk_callsign_set, deleted)
  SELECT 
  'airDelivery',
  'Registrace letu.',
  (SELECT id FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Letiste' AND display_name LIKE 'Letiště'), 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'RF13' AND digital = 'f'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_5W' AND digital = 'f'), 
  (SELECT id FROM wasp.equipment_user WHERE name LIKE 'AČR'), 
  (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'),
  false
  WHERE NOT EXISTS (SELECT 1 FROM wasp.network_creation WHERE network_domain LIKE 'airDelivery' AND fk_wasp_actors = (SELECT id FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Letiste' AND display_name LIKE 'Letiště'));
--rollback DELETE FROM wasp.network_creation WHERE network_domain LIKE 'airDelivery';

INSERT INTO wasp.network_creation (network_domain, description, fk_wasp_actors, fk_radiostation, fk_transmission_setup, fk_equipment_user, fk_callsign_set, deleted)
  SELECT 
  'airUAVData',
  'UAV data',
  (SELECT id FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/RAVEN RQ-11B' AND display_name LIKE 'RAVEN RQ-11B'), 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'RF13' AND digital = 'f'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_5W' AND digital = 'f'), 
  (SELECT id FROM wasp.equipment_user WHERE name LIKE 'AČR'), 
  (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'),
  false
  WHERE NOT EXISTS (SELECT 1 FROM wasp.network_creation WHERE network_domain LIKE 'airUAVData' AND fk_wasp_actors = (SELECT id FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/RAVEN RQ-11B' AND display_name LIKE 'RAVEN RQ-11B'));
--rollback DELETE FROM wasp.network_creation WHERE network_domain LIKE 'airUAVData';

INSERT INTO wasp.network_creation (network_domain, description, fk_wasp_actors, fk_radiostation, fk_transmission_setup, fk_equipment_user, fk_callsign_set, deleted)
  SELECT 
  'airUAVControl',
  'UAV ovládání',
  (SELECT id FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/RAVEN RQ-11B' AND display_name LIKE 'RAVEN RQ-11B'), 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'RF13' AND digital = 'f'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_5W' AND digital = 'f'), 
  (SELECT id FROM wasp.equipment_user WHERE name LIKE 'AČR'), 
  (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'),
  false
  WHERE NOT EXISTS (SELECT 1 FROM wasp.network_creation WHERE network_domain LIKE 'airUAVControl' AND fk_wasp_actors = (SELECT id FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/RAVEN RQ-11B' AND display_name LIKE 'RAVEN RQ-11B'));
--rollback DELETE FROM wasp.network_creation WHERE network_domain LIKE 'airUAVControl';

--changeset Andy:1.0.5.5 (splitStatements:false endDelimiter:;)
--comment Adding data to table wasp.network_creation.
INSERT INTO wasp.network_creation (network_domain, description, fk_wasp_actors, fk_radiostation, fk_transmission_setup, fk_equipment_user, fk_callsign_set, deleted)
  SELECT 
  'airJTac',
  'Pro navádění entit.',
  (SELECT id FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC FAC' AND display_name LIKE 'IC FAC'), 
  (SELECT id FROM ew.radiostation WHERE name LIKE 'RF13' AND digital = 'f'), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE 'A_FM_BW25k_FS25k_5W' AND digital = 'f'), 
  (SELECT id FROM wasp.equipment_user WHERE name LIKE 'AČR'), 
  (SELECT id FROM wasp.callsign_set WHERE name LIKE 'CZECH AIR FORCE'),
  false
  WHERE NOT EXISTS (SELECT 1 FROM wasp.network_creation WHERE network_domain LIKE 'airJTac' AND fk_wasp_actors = (SELECT id FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC FAC' AND display_name LIKE 'IC FAC'));
--rollback DELETE FROM wasp.network_creation WHERE network_domain LIKE 'airJTac';

