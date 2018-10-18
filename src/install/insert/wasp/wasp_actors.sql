--liquibase formatted sql
--changeset Andy:1.0.5.1 (splitStatements:false endDelimiter:;) dbms:postgresql
--comment Adding data to table wasp.wasp_actors.



INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/2K 12M KUB M',
  '2K 12M KUB M', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/2K 12M KUB M' AND display_name LIKE '2K 12M KUB M' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/2K 12M KUB M' AND display_name LIKE '2K 12M KUB M' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/9K35M',
  '9K35M Strela', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/9K35M' AND display_name LIKE '9K35M Strela' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/9K35M' AND display_name LIKE '9K35M Strela' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/Autobus SOR',
  'Autobus SOR', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Autobus SOR' AND display_name LIKE 'Autobus SOR' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Autobus SOR' AND display_name LIKE 'Autobus SOR' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/BRDM rch',
  'BRDM-2 rch', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/BRDM rch' AND display_name LIKE 'BRDM-2 rch' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/BRDM rch' AND display_name LIKE 'BRDM-2 rch' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/BRDM',
  'BRDM-2', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/BRDM' AND display_name LIKE 'BRDM-2' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/BRDM' AND display_name LIKE 'BRDM-2' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/BVP-1',
  'BVP-1', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/BVP-1' AND display_name LIKE 'BVP-1' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/BVP-1' AND display_name LIKE 'BVP-1' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/BVP-2 AMB',
  'BVP-2 AMB', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/BVP-2 AMB' AND display_name LIKE 'BVP-2 AMB' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/BVP-2 AMB' AND display_name LIKE 'BVP-2 AMB' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/BVP-2',
  'BVP-2', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/BVP-2' AND display_name LIKE 'BVP-2' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/BVP-2' AND display_name LIKE 'BVP-2' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/C-12 CEASAR',
  'C-12 CEASAR', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/C-12 CEASAR' AND display_name LIKE 'C-12 CEASAR' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/C-12 CEASAR' AND display_name LIKE 'C-12 CEASAR' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/Dana',
  'DANA - 152mm samohybná kanónová houfnice', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Dana' AND display_name LIKE 'DANA - 152mm samohybná kanónová houfnice' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Dana' AND display_name LIKE 'DANA - 152mm samohybná kanónová houfnice' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/Dingo LOV',
  'Dingo 2 CZ', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Dingo LOV' AND display_name LIKE 'Dingo 2 CZ' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Dingo LOV' AND display_name LIKE 'Dingo 2 CZ' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/DIS_Fallback_aircraft',
  '[DIS] Vzdušná entita', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/DIS_Fallback_aircraft' AND display_name LIKE '[DIS] Vzdušná entita' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/DIS_Fallback_aircraft' AND display_name LIKE '[DIS] Vzdušná entita' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/DIS_Fallback_cultural_feature',
  '[DIS] Struktura', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/DIS_Fallback_cultural_feature' AND display_name LIKE '[DIS] Struktura' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/DIS_Fallback_cultural_feature' AND display_name LIKE '[DIS] Struktura' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/DIS_Fallback_lifeform',
  '[DIS] Živá entita', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/DIS_Fallback_lifeform' AND display_name LIKE '[DIS] Živá entita' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/DIS_Fallback_lifeform' AND display_name LIKE '[DIS] Živá entita' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/DIS_Fallback_vehicle',
  '[DIS] Vozidlo', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/DIS_Fallback_vehicle' AND display_name LIKE '[DIS] Vozidlo' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/DIS_Fallback_vehicle' AND display_name LIKE '[DIS] Vozidlo' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/ELM 2084',
  'EL/M 2084', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/ELM 2084' AND display_name LIKE 'EL/M 2084' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/ELM 2084' AND display_name LIKE 'EL/M 2084' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/Ford Ranger Double Cab',
  'Ford Ranger', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Ford Ranger Double Cab' AND display_name LIKE 'Ford Ranger' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Ford Ranger Double Cab' AND display_name LIKE 'Ford Ranger' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC AGS17',
  'IC AGS-17', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC AGS17' AND display_name LIKE 'IC AGS-17' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC AGS17' AND display_name LIKE 'IC AGS-17' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC AT RPG7',
  'IC AT RPG-7', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC AT RPG7' AND display_name LIKE 'IC AT RPG-7' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC AT RPG7' AND display_name LIKE 'IC AT RPG-7' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC AT4',
  'IC AT-4', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC AT4' AND display_name LIKE 'IC AT-4' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC AT4' AND display_name LIKE 'IC AT-4' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC chem pz',
  'IC chem pz', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC chem pz' AND display_name LIKE 'IC chem pz' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC chem pz' AND display_name LIKE 'IC chem pz' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC CZ805',
  'IC CZ 805 BREN', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC CZ805' AND display_name LIKE 'IC CZ 805 BREN' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC CZ805' AND display_name LIKE 'IC CZ 805 BREN' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC FAC',
  'IC FAC', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC FAC' AND display_name LIKE 'IC FAC' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC FAC' AND display_name LIKE 'IC FAC' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC JTAC',
  'IC JTAC', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC JTAC' AND display_name LIKE 'IC JTAC' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC JTAC' AND display_name LIKE 'IC JTAC' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC Kul vz59',
  'IC Uk vz.59', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC Kul vz59' AND display_name LIKE 'IC Uk vz.59' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC Kul vz59' AND display_name LIKE 'IC Uk vz.59' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC mechdr',
  'IC mechdr', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC mechdr' AND display_name LIKE 'IC mechdr' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC mechdr' AND display_name LIKE 'IC mechdr' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC Min60mm',
  'IC Minomet 60mm ANTOS', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC Min60mm' AND display_name LIKE 'IC Minomet 60mm ANTOS' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC Min60mm' AND display_name LIKE 'IC Minomet 60mm ANTOS' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC mindr',
  'IC mindr', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC mindr' AND display_name LIKE 'IC mindr' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC mindr' AND display_name LIKE 'IC mindr' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC Minimi M249SAW',
  'IC Minimi M249SAW', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC Minimi M249SAW' AND display_name LIKE 'IC Minimi M249SAW' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC Minimi M249SAW' AND display_name LIKE 'IC Minimi M249SAW' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC OPU Dragunov',
  'IC Odstřelovac Dragunov', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC OPU Dragunov' AND display_name LIKE 'IC Odstřelovac Dragunov' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC OPU Dragunov' AND display_name LIKE 'IC Odstřelovac Dragunov' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC OPU Falcon',
  'IC Odstřelovac Falcon', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC OPU Falcon' AND display_name LIKE 'IC Odstřelovac Falcon' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC OPU Falcon' AND display_name LIKE 'IC Odstřelovac Falcon' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC pdr',
  'IC pdr', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC pdr' AND display_name LIKE 'IC pdr' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC pdr' AND display_name LIKE 'IC pdr' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC ptdr',
  'IC ptdr', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC ptdr' AND display_name LIKE 'IC ptdr' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC ptdr' AND display_name LIKE 'IC ptdr' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC pyro',
  'IC pyrotechnik', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC pyro' AND display_name LIKE 'IC pyrotechnik' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC pyro' AND display_name LIKE 'IC pyrotechnik' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC pz',
  'IC průzkum', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC pz' AND display_name LIKE 'IC průzkum' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC pz' AND display_name LIKE 'IC průzkum' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC Sa58',
  'IC Sa vz.58', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC Sa58' AND display_name LIKE 'IC Sa vz.58' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC Sa58' AND display_name LIKE 'IC Sa vz.58' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC skAgs',
  'IC skAGS-17', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC skAgs' AND display_name LIKE 'IC skAGS-17' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC skAgs' AND display_name LIKE 'IC skAGS-17' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC skchempz',
  'IC skchempz', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC skchempz' AND display_name LIKE 'IC skchempz' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC skchempz' AND display_name LIKE 'IC skchempz' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC skeb',
  'IC skeb', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC skeb' AND display_name LIKE 'IC skeb' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC skeb' AND display_name LIKE 'IC skeb' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC skJTAC',
  'IC skJTAC', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC skJTAC' AND display_name LIKE 'IC skJTAC' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC skJTAC' AND display_name LIKE 'IC skJTAC' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC skOpu',
  'IC skOpu', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC skOpu' AND display_name LIKE 'IC skOpu' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC skOpu' AND display_name LIKE 'IC skOpu' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC skpz',
  'IC skpz', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC skpz' AND display_name LIKE 'IC skpz' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC skpz' AND display_name LIKE 'IC skpz' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC skvel',
  'IC skvel', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC skvel' AND display_name LIKE 'IC skvel' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC skvel' AND display_name LIKE 'IC skvel' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC skzen',
  'IC skžen', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC skzen' AND display_name LIKE 'IC skžen' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC skzen' AND display_name LIKE 'IC skžen' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC Terorista AK47',
  'IC Terorista s AK47', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC Terorista AK47' AND display_name LIKE 'IC Terorista s AK47' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC Terorista AK47' AND display_name LIKE 'IC Terorista s AK47' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC Terorista Radio',
  'IC Terorista s vysílačkou', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC Terorista Radio' AND display_name LIKE 'IC Terorista s vysílačkou' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC Terorista Radio' AND display_name LIKE 'IC Terorista s vysílačkou' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC vel805',
  'IC velitel CZ 805 BREN', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC vel805' AND display_name LIKE 'IC velitel CZ 805 BREN' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC vel805' AND display_name LIKE 'IC velitel CZ 805 BREN' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC velSa58',
  'IC velitel Sa-58', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC velSa58' AND display_name LIKE 'IC velitel Sa-58' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC velSa58' AND display_name LIKE 'IC velitel Sa-58' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC zdrav',
  'IC zdravotník', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC zdrav' AND display_name LIKE 'IC zdravotník' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC zdrav' AND display_name LIKE 'IC zdravotník' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IC zen',
  'IC ženista', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC zen' AND display_name LIKE 'IC ženista' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IC zen' AND display_name LIKE 'IC ženista' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/ICzendr',
  'IC žendr', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/ICzendr' AND display_name LIKE 'IC žendr' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/ICzendr' AND display_name LIKE 'IC žendr' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IED',
  'IED', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IED' AND display_name LIKE 'IED' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IED' AND display_name LIKE 'IED' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/Il-22PP Porubscik',
  'Il-22PP Porubščik', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Il-22PP Porubscik' AND display_name LIKE 'Il-22PP Porubščik' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Il-22PP Porubscik' AND display_name LIKE 'Il-22PP Porubščik' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/Infauna',
  'Infauna', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Infauna' AND display_name LIKE 'Infauna' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Infauna' AND display_name LIKE 'Infauna' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/IVECO',
  'IVECO M65E', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IVECO' AND display_name LIKE 'IVECO M65E' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/IVECO' AND display_name LIKE 'IVECO M65E' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/JAS-39 Gripen',
  'JAS-39 Gripen', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/JAS-39 Gripen' AND display_name LIKE 'JAS-39 Gripen' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/JAS-39 Gripen' AND display_name LIKE 'JAS-39 Gripen' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/KN 251',
  'KN-251', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/KN 251' AND display_name LIKE 'KN-251' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/KN 251' AND display_name LIKE 'KN-251' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/L-159 Alca',
  'L-159 Alca', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/L-159 Alca' AND display_name LIKE 'L-159 Alca' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/L-159 Alca' AND display_name LIKE 'L-159 Alca' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/LandRover AMB',
  'Land Rover Ambulance', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/LandRover AMB' AND display_name LIKE 'Land Rover Ambulance' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/LandRover AMB' AND display_name LIKE 'Land Rover Ambulance' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/LandRover Kajman AGS',
  'Land Rover Kajman AGS-17', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/LandRover Kajman AGS' AND display_name LIKE 'Land Rover Kajman AGS-17' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/LandRover Kajman AGS' AND display_name LIKE 'Land Rover Kajman AGS-17' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/LandRover Kajman DSK',
  'Land Rover Defender 130 Kajman - DSK', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/LandRover Kajman DSK' AND display_name LIKE 'Land Rover Defender 130 Kajman - DSK' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/LandRover Kajman DSK' AND display_name LIKE 'Land Rover Defender 130 Kajman - DSK' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/LandRover rch',
  'Land Rover rch', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/LandRover rch' AND display_name LIKE 'Land Rover rch' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/LandRover rch' AND display_name LIKE 'Land Rover rch' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/LandRover',
  'Land Rover 110', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/LandRover' AND display_name LIKE 'Land Rover 110' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/LandRover' AND display_name LIKE 'Land Rover 110' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/Leer 3',
  'Leer-3', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Leer 3' AND display_name LIKE 'Leer-3' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Leer 3' AND display_name LIKE 'Leer-3' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/Letiste',
  'Letiště', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Letiste' AND display_name LIKE 'Letiště' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Letiste' AND display_name LIKE 'Letiště' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/Mi-171',
  'Mi-171Š', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Mi-171' AND display_name LIKE 'Mi-171Š' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Mi-171' AND display_name LIKE 'Mi-171Š' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/Mi-24',
  'Mi-24', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Mi-24' AND display_name LIKE 'Mi-24' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Mi-24' AND display_name LIKE 'Mi-24' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/MKVR',
  'MKVR', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/MKVR' AND display_name LIKE 'MKVR' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/MKVR' AND display_name LIKE 'MKVR' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/MPRS',
  'MPRS', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/MPRS' AND display_name LIKE 'MPRS' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/MPRS' AND display_name LIKE 'MPRS' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/MT72',
  'MT-72', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/MT72' AND display_name LIKE 'MT-72' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/MT72' AND display_name LIKE 'MT-72' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/MUKVRG',
  'MUKVRG', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/MUKVRG' AND display_name LIKE 'MUKVRG' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/MUKVRG' AND display_name LIKE 'MUKVRG' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/MVKVR',
  'MVKVR', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/MVKVR' AND display_name LIKE 'MVKVR' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/MVKVR' AND display_name LIKE 'MVKVR' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/OT-90 DP',
  'OT-90 DP-90', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/OT-90 DP' AND display_name LIKE 'OT-90 DP-90' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/OT-90 DP' AND display_name LIKE 'OT-90 DP-90' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/OT-90 DTP',
  'OT-90 DTP-90', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/OT-90 DTP' AND display_name LIKE 'OT-90 DTP-90' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/OT-90 DTP' AND display_name LIKE 'OT-90 DTP-90' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/OT-90 R5 Becva',
  'OT-90 R5 Bečva', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/OT-90 R5 Becva' AND display_name LIKE 'OT-90 R5 Bečva' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/OT-90 R5 Becva' AND display_name LIKE 'OT-90 R5 Bečva' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/OT-90 VP',
  'OT-90 VP-90', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/OT-90 VP' AND display_name LIKE 'OT-90 VP-90' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/OT-90 VP' AND display_name LIKE 'OT-90 VP-90' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/OT-90 VPV',
  'OT-90 VPV', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/OT-90 VPV' AND display_name LIKE 'OT-90 VPV' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/OT-90 VPV' AND display_name LIKE 'OT-90 VPV' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/OT-90',
  'OT-90', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/OT-90' AND display_name LIKE 'OT-90' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/OT-90' AND display_name LIKE 'OT-90' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/PandurII AMB',
  'Pandur II AMB (KOT-Zdr)', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/PandurII AMB' AND display_name LIKE 'Pandur II AMB (KOT-Zdr)' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/PandurII AMB' AND display_name LIKE 'Pandur II AMB (KOT-Zdr)' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/PandurII',
  'Pandur II', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/PandurII' AND display_name LIKE 'Pandur II' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/PandurII' AND display_name LIKE 'Pandur II' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/Pram ShM',
  'Minomet vz. 85 PRAM-S 120mm', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Pram ShM' AND display_name LIKE 'Minomet vz. 85 PRAM-S 120mm' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Pram ShM' AND display_name LIKE 'Minomet vz. 85 PRAM-S 120mm' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/Protiletadlova takticka baterie 2K 12M KUB M',
  'Protiletadlová taktická baterie 2K 12M KUB M', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Protiletadlova takticka baterie 2K 12M KUB M' AND display_name LIKE 'Protiletadlová taktická baterie 2K 12M KUB M' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Protiletadlova takticka baterie 2K 12M KUB M' AND display_name LIKE 'Protiletadlová taktická baterie 2K 12M KUB M' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/PRTA',
  'PRTA', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/PRTA' AND display_name LIKE 'PRTA' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/PRTA' AND display_name LIKE 'PRTA' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/PV3S',
  'PV3S', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/PV3S' AND display_name LIKE 'PV3S' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/PV3S' AND display_name LIKE 'PV3S' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/RAVEN RQ-11B',
  'RAVEN RQ-11B', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/RAVEN RQ-11B' AND display_name LIKE 'RAVEN RQ-11B' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/RAVEN RQ-11B' AND display_name LIKE 'RAVEN RQ-11B' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/RLP',
  'Řízení letového provozu', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/RLP' AND display_name LIKE 'Řízení letového provozu' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/RLP' AND display_name LIKE 'Řízení letového provozu' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/RPZ ISTAR',
  'RPZ-ISTAR', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/RPZ ISTAR' AND display_name LIKE 'RPZ-ISTAR' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/RPZ ISTAR' AND display_name LIKE 'RPZ-ISTAR' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/RUP-FM-M-OP1',
  'RUP-FM-M odposlechová provozovna OP1', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/RUP-FM-M-OP1' AND display_name LIKE 'RUP-FM-M odposlechová provozovna OP1' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/RUP-FM-M-OP1' AND display_name LIKE 'RUP-FM-M odposlechová provozovna OP1' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/RUP-FM-M-OP2',
  'RUP-FM-M odposlechová provozovna OP2', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/RUP-FM-M-OP2' AND display_name LIKE 'RUP-FM-M odposlechová provozovna OP2' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/RUP-FM-M-OP2' AND display_name LIKE 'RUP-FM-M odposlechová provozovna OP2' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/RUP-FM-M-RP',
  'RUP-FM-M řídící provozovna', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/RUP-FM-M-RP' AND display_name LIKE 'RUP-FM-M řídící provozovna' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/RUP-FM-M-RP' AND display_name LIKE 'RUP-FM-M řídící provozovna' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/ScanEagle',
  'ScanEagle', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/ScanEagle' AND display_name LIKE 'ScanEagle' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/ScanEagle' AND display_name LIKE 'ScanEagle' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/sk RUP-FM-M',
  'sk RUP-FM-M', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/sk RUP-FM-M' AND display_name LIKE 'sk RUP-FM-M' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/sk RUP-FM-M' AND display_name LIKE 'sk RUP-FM-M' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/T 72M4CZ',
  'T-72M4CZ', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/T 72M4CZ' AND display_name LIKE 'T-72M4CZ' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/T 72M4CZ' AND display_name LIKE 'T-72M4CZ' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/T810 AD',
  'T810 AD-30', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/T810 AD' AND display_name LIKE 'T810 AD-30' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/T810 AD' AND display_name LIKE 'T810 AD-30' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/T810 valnik s rukou 6x6',
  'T810 valník s rukou 6x6', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/T810 valnik s rukou 6x6' AND display_name LIKE 'T810 valník s rukou 6x6' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/T810 valnik s rukou 6x6' AND display_name LIKE 'T810 valník s rukou 6x6' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/T810',
  'T810 6x6', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/T810' AND display_name LIKE 'T810 6x6' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/T810' AND display_name LIKE 'T810 6x6' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/T815 4x4',
  'T815 4x4', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/T815 4x4' AND display_name LIKE 'T815 4x4' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/T815 4x4' AND display_name LIKE 'T815 4x4' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/T815 6x6',
  'T815 6x6', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/T815 6x6' AND display_name LIKE 'T815 6x6' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/T815 6x6' AND display_name LIKE 'T815 6x6' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/T815 8x8',
  'T815 8x8', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/T815 8x8' AND display_name LIKE 'T815 8x8' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/T815 8x8' AND display_name LIKE 'T815 8x8' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/T815 AM50',
  'T815 AM50', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/T815 AM50' AND display_name LIKE 'T815 AM50' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/T815 AM50' AND display_name LIKE 'T815 AM50' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/T815 AV15',
  'T815 AV-15', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/T815 AV15' AND display_name LIKE 'T815 AV-15' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/T815 AV15' AND display_name LIKE 'T815 AV-15' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/T815 jednostranny sklapec 6x6',
  'T815 jednostranný sklápěč 6x6 (231S24/340)', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/T815 jednostranny sklapec 6x6' AND display_name LIKE 'T815 jednostranný sklápěč 6x6 (231S24/340)' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/T815 jednostranny sklapec 6x6' AND display_name LIKE 'T815 jednostranný sklápěč 6x6 (231S24/340)' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/Toyota Hilux DSK',
  'Toyota Hilux - DSK', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Toyota Hilux DSK' AND display_name LIKE 'Toyota Hilux - DSK' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Toyota Hilux DSK' AND display_name LIKE 'Toyota Hilux - DSK' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/VT 72M4CZ',
  'VT-72 M4 CZ', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/VT 72M4CZ' AND display_name LIKE 'VT-72 M4 CZ' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/VT 72M4CZ' AND display_name LIKE 'VT-72 M4 CZ' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/Vysilac',
  'Vysílač', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Vysilac' AND display_name LIKE 'Vysílač' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Vysilac' AND display_name LIKE 'Vysílač' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'entity/Vytycka',
  'Výtyčka', 
  't',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Vytycka' AND display_name LIKE 'Výtyčka' AND is_entity = 't');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'entity/Vytycka' AND display_name LIKE 'Výtyčka' AND is_entity = 't';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/dynamicUnit',
  'Dynamická jednotka', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/dynamicUnit' AND display_name LIKE 'Dynamická jednotka' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/dynamicUnit' AND display_name LIKE 'Dynamická jednotka' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/battery_dbat_do_dplk',
  'Dělostřelecká baterie (Dana)', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/battery_dbat_do_dplk' AND display_name LIKE 'Dělostřelecká baterie (Dana)' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/battery_dbat_do_dplk' AND display_name LIKE 'Dělostřelecká baterie (Dana)' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_palc_dbat_do_dplk',
  'Palebná četa dělostřelecké baterie - verze D', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_palc_dbat_do_dplk' AND display_name LIKE 'Palebná četa dělostřelecké baterie - verze D' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_palc_dbat_do_dplk' AND display_name LIKE 'Palebná četa dělostřelecké baterie - verze D' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/veldr_dbat_do_dplk',
  'Velitelské družstvo - verze D', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/veldr_dbat_do_dplk' AND display_name LIKE 'Velitelské družstvo - verze D' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/veldr_dbat_do_dplk' AND display_name LIKE 'Velitelské družstvo - verze D' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/battery_dbat_do_dplk_AGR',
  'LR Dělostřelecká baterie (Dana)', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/battery_dbat_do_dplk_AGR' AND display_name LIKE 'LR Dělostřelecká baterie (Dana)' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/battery_dbat_do_dplk_AGR' AND display_name LIKE 'LR Dělostřelecká baterie (Dana)' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/veldr_dbat_do_dplk_AGR',
  'LR Velitelské družstvo - verze E', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/veldr_dbat_do_dplk_AGR' AND display_name LIKE 'LR Velitelské družstvo - verze E' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/veldr_dbat_do_dplk_AGR' AND display_name LIKE 'LR Velitelské družstvo - verze E' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_battery_dbat_do_dplk',
  'HR Dělostřelecká baterie (Dana)', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_battery_dbat_do_dplk' AND display_name LIKE 'HR Dělostřelecká baterie (Dana)' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_battery_dbat_do_dplk' AND display_name LIKE 'HR Dělostřelecká baterie (Dana)' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_veldr_dbat_do_dplk',
  'HR Velitelské družstvo - verze F', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_veldr_dbat_do_dplk' AND display_name LIKE 'HR Velitelské družstvo - verze F' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_veldr_dbat_do_dplk' AND display_name LIKE 'HR Velitelské družstvo - verze F' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/1raddr_spojc_velr_71mpr',
  '1. radistické družstvo - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/1raddr_spojc_velr_71mpr' AND display_name LIKE '1. radistické družstvo - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/1raddr_spojc_velr_71mpr' AND display_name LIKE '1. radistické družstvo - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/2raddr_spojc_velr_71mpr',
  '2. radistické družstvo - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/2raddr_spojc_velr_71mpr' AND display_name LIKE '2. radistické družstvo - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/2raddr_spojc_velr_71mpr' AND display_name LIKE '2. radistické družstvo - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/battalion_71mpr',
  'Mechanizovaný prapor na BVP-2', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/battalion_71mpr' AND display_name LIKE 'Mechanizovaný prapor na BVP-2' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/battalion_71mpr' AND display_name LIKE 'Mechanizovaný prapor na BVP-2' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/company_minbat_71mpr',
  '120mm minometná baterie - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_minbat_71mpr' AND display_name LIKE '120mm minometná baterie - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_minbat_71mpr' AND display_name LIKE '120mm minometná baterie - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/company_mr_71mpr',
  'Mechanizovaná rota BVP-2', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_mr_71mpr' AND display_name LIKE 'Mechanizovaná rota BVP-2' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_mr_71mpr' AND display_name LIKE 'Mechanizovaná rota BVP-2' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/company_rlog_71mpr',
  'Rota logistiky - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_rlog_71mpr' AND display_name LIKE 'Rota logistiky - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_rlog_71mpr' AND display_name LIKE 'Rota logistiky - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/company_velr_71mpr',
  'Velitelská rota - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_velr_71mpr' AND display_name LIKE 'Velitelská rota - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_velr_71mpr' AND display_name LIKE 'Velitelská rota - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/doprdr_zasc_rlog_71mpr',
  'Dopravní družstvo - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/doprdr_zasc_rlog_71mpr' AND display_name LIKE 'Dopravní družstvo - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/doprdr_zasc_rlog_71mpr' AND display_name LIKE 'Dopravní družstvo - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/droprkolovetech_copr_rlog_71mpr',
  'Družstvo oprav kolové techniky', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/droprkolovetech_copr_rlog_71mpr' AND display_name LIKE 'Družstvo oprav kolové techniky' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/droprkolovetech_copr_rlog_71mpr' AND display_name LIKE 'Družstvo oprav kolové techniky' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/droprpasovetech_copr_rlog_71mpr',
  'Družstvo oprav pásové techniky', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/droprpasovetech_copr_rlog_71mpr' AND display_name LIKE 'Družstvo oprav pásové techniky' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/droprpasovetech_copr_rlog_71mpr' AND display_name LIKE 'Družstvo oprav pásové techniky' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/droprvyzbroje_copr_rlog_71mpr',
  'Družstvo oprav výzbroje', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/droprvyzbroje_copr_rlog_71mpr' AND display_name LIKE 'Družstvo oprav výzbroje' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/droprvyzbroje_copr_rlog_71mpr' AND display_name LIKE 'Družstvo oprav výzbroje' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/drspecprac_copr_rlog_71mpr',
  'Družstvo speciálních prací', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/drspecprac_copr_rlog_71mpr' AND display_name LIKE 'Družstvo speciálních prací' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/drspecprac_copr_rlog_71mpr' AND display_name LIKE 'Družstvo speciálních prací' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/drzabvel_velc_velr_71mpr',
  'Družstvo zabezpečení velení - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/drzabvel_velc_velr_71mpr' AND display_name LIKE 'Družstvo zabezpečení velení - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/drzabvel_velc_velr_71mpr' AND display_name LIKE 'Družstvo zabezpečení velení - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/hospdr_hospc_rlog_71mpr',
  'Hospodářské družstvo - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/hospdr_hospc_rlog_71mpr' AND display_name LIKE 'Hospodářské družstvo - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/hospdr_hospc_rlog_71mpr' AND display_name LIKE 'Hospodářské družstvo - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/hospsklad_hospc_rlog_71mpr',
  'Hospodářský sklad', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/hospsklad_hospc_rlog_71mpr' AND display_name LIKE 'Hospodářský sklad' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/hospsklad_hospc_rlog_71mpr' AND display_name LIKE 'Hospodářský sklad' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/odstrtym_skopu_velr_71mpr',
  'Odstřelovací družstvo - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/odstrtym_skopu_velr_71mpr' AND display_name LIKE 'Odstřelovací družstvo - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/odstrtym_skopu_velr_71mpr' AND display_name LIKE 'Odstřelovací družstvo - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_copr_rlog_71mpr',
  'Četa oprav - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_copr_rlog_71mpr' AND display_name LIKE 'Četa oprav - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_copr_rlog_71mpr' AND display_name LIKE 'Četa oprav - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_hospc_rlog_71mpr',
  'Hospodářská četa - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_hospc_rlog_71mpr' AND display_name LIKE 'Hospodářská četa - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_hospc_rlog_71mpr' AND display_name LIKE 'Hospodářská četa - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_mc_mr_71mpr',
  'Mechanizovaná četa BVP-2', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_mc_mr_71mpr' AND display_name LIKE 'Mechanizovaná četa BVP-2' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_mc_mr_71mpr' AND display_name LIKE 'Mechanizovaná četa BVP-2' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_palcPRAM_minbat_71mpr',
  'Palebná četa PRAM minometné baterie - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_palcPRAM_minbat_71mpr' AND display_name LIKE 'Palebná četa PRAM minometné baterie - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_palcPRAM_minbat_71mpr' AND display_name LIKE 'Palebná četa PRAM minometné baterie - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_palcTaM_minbat_71mpr',
  'Palebná četa TaM minometné baterie - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_palcTaM_minbat_71mpr' AND display_name LIKE 'Palebná četa TaM minometné baterie - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_palcTaM_minbat_71mpr' AND display_name LIKE 'Palebná četa TaM minometné baterie - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_pzt_velr_71mpr',
  'Průzkumné družstvo - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_pzt_velr_71mpr' AND display_name LIKE 'Průzkumné družstvo - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_pzt_velr_71mpr' AND display_name LIKE 'Průzkumné družstvo - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_skopu_velr_71mpr',
  'Skupina odstřelovačů na LR - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_skopu_velr_71mpr' AND display_name LIKE 'Skupina odstřelovačů na LR - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_skopu_velr_71mpr' AND display_name LIKE 'Skupina odstřelovačů na LR - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_spojc_velr_71mpr',
  'Spojovací četa - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_spojc_velr_71mpr' AND display_name LIKE 'Spojovací četa - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_spojc_velr_71mpr' AND display_name LIKE 'Spojovací četa - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_velc_velr_71mpr',
  'Velitelská četa - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_velc_velr_71mpr' AND display_name LIKE 'Velitelská četa - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_velc_velr_71mpr' AND display_name LIKE 'Velitelská četa - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_veldr_mr_71mpr',
  'Velitelské družstvo - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_veldr_mr_71mpr' AND display_name LIKE 'Velitelské družstvo - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_veldr_mr_71mpr' AND display_name LIKE 'Velitelské družstvo - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_zasc_rlog_71mpr',
  'Zásobovací četa - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_zasc_rlog_71mpr' AND display_name LIKE 'Zásobovací četa - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_zasc_rlog_71mpr' AND display_name LIKE 'Zásobovací četa - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_zenc_velr_71mpr',
  'Ženijní četa - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_zenc_velr_71mpr' AND display_name LIKE 'Ženijní četa - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_zenc_velr_71mpr' AND display_name LIKE 'Ženijní četa - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/rekog_minbat_71mpr',
  'Rekognoskačn družstvo - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/rekog_minbat_71mpr' AND display_name LIKE 'Rekognoskačn družstvo - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/rekog_minbat_71mpr' AND display_name LIKE 'Rekognoskačn družstvo - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/sklady_zasc_rlog_71mpr',
  'Sklady - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/sklady_zasc_rlog_71mpr' AND display_name LIKE 'Sklady - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/sklady_zasc_rlog_71mpr' AND display_name LIKE 'Sklady - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/spojdr_spojc_velr_71mpr',
  'Spojovací družstvo - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/spojdr_spojc_velr_71mpr' AND display_name LIKE 'Spojovací družstvo - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/spojdr_spojc_velr_71mpr' AND display_name LIKE 'Spojovací družstvo - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/veldr_minbat_71mpr',
  'Velitelské družstvo - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/veldr_minbat_71mpr' AND display_name LIKE 'Velitelské družstvo - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/veldr_minbat_71mpr' AND display_name LIKE 'Velitelské družstvo - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/veldr_rlog_71mpr',
  'Velitelské družstvo - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/veldr_rlog_71mpr' AND display_name LIKE 'Velitelské družstvo - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/veldr_rlog_71mpr' AND display_name LIKE 'Velitelské družstvo - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/veldr_velr_71mpr',
  'Velitelské družstvo - verze A', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/veldr_velr_71mpr' AND display_name LIKE 'Velitelské družstvo - verze A' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/veldr_velr_71mpr' AND display_name LIKE 'Velitelské družstvo - verze A' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/vyprdr_copr_rlog_71mpr',
  'Vyprošťovací družstvo - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/vyprdr_copr_rlog_71mpr' AND display_name LIKE 'Vyprošťovací družstvo - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/vyprdr_copr_rlog_71mpr' AND display_name LIKE 'Vyprošťovací družstvo - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/zendr_zenc_velr_71mpr',
  'Ženijní družstvo - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/zendr_zenc_velr_71mpr' AND display_name LIKE 'Ženijní družstvo - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/zendr_zenc_velr_71mpr' AND display_name LIKE 'Ženijní družstvo - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/zenstrdr_zenc_velr_71mpr',
  'Ženijní strojní družstvo - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/zenstrdr_zenc_velr_71mpr' AND display_name LIKE 'Ženijní strojní družstvo - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/zenstrdr_zenc_velr_71mpr' AND display_name LIKE 'Ženijní strojní družstvo - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/battalion_71mpr_AGR',
  'LR Mechanizovaný prapor na BVP-2', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/battalion_71mpr_AGR' AND display_name LIKE 'LR Mechanizovaný prapor na BVP-2' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/battalion_71mpr_AGR' AND display_name LIKE 'LR Mechanizovaný prapor na BVP-2' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/company_mr_71mpr_AGR',
  'LR Mechanizovaná rota BVP-2', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_mr_71mpr_AGR' AND display_name LIKE 'LR Mechanizovaná rota BVP-2' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_mr_71mpr_AGR' AND display_name LIKE 'LR Mechanizovaná rota BVP-2' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/company_rlog_71mpr_AGR',
  'LR Rota logistiky - verze J', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_rlog_71mpr_AGR' AND display_name LIKE 'LR Rota logistiky - verze J' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_rlog_71mpr_AGR' AND display_name LIKE 'LR Rota logistiky - verze J' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/company_velr_71mpr_AGR',
  'LR Velitelská rota - verze J', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_velr_71mpr_AGR' AND display_name LIKE 'LR Velitelská rota - verze J' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_velr_71mpr_AGR' AND display_name LIKE 'LR Velitelská rota - verze J' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/drrchpz_velc_velr_71mpr_AGR',
  'LR Družstvo radiačního a chemického průzkumu - verze A', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/drrchpz_velc_velr_71mpr_AGR' AND display_name LIKE 'LR Družstvo radiačního a chemického průzkumu - verze A' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/drrchpz_velc_velr_71mpr_AGR' AND display_name LIKE 'LR Družstvo radiačního a chemického průzkumu - verze A' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/drzabvel_velc_velr_71mpr_AGR',
  'LR Družstvo zabezpečení velení - verze J', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/drzabvel_velc_velr_71mpr_AGR' AND display_name LIKE 'LR Družstvo zabezpečení velení - verze J' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/drzabvel_velc_velr_71mpr_AGR' AND display_name LIKE 'LR Družstvo zabezpečení velení - verze J' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/odstrtym_skopu_velr_71mpr_AGR',
  'LR Odstřelovací družstvo - verze J', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/odstrtym_skopu_velr_71mpr_AGR' AND display_name LIKE 'LR Odstřelovací družstvo - verze J' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/odstrtym_skopu_velr_71mpr_AGR' AND display_name LIKE 'LR Odstřelovací družstvo - verze J' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_mc_mr_71mpr_AGR',
  'LR Mechanizovaná četa BVP-2 - verze J', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_mc_mr_71mpr_AGR' AND display_name LIKE 'LR Mechanizovaná četa BVP-2 - verze J' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_mc_mr_71mpr_AGR' AND display_name LIKE 'LR Mechanizovaná četa BVP-2 - verze J' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_pzt_velr_71mpr_AGR',
  'LR Průzkumný tým - verze J', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_pzt_velr_71mpr_AGR' AND display_name LIKE 'LR Průzkumný tým - verze J' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_pzt_velr_71mpr_AGR' AND display_name LIKE 'LR Průzkumný tým - verze J' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_skopu_velr_71mpr_AGR',
  'LR Skupina odstřelovačů na LR - verze J', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_skopu_velr_71mpr_AGR' AND display_name LIKE 'LR Skupina odstřelovačů na LR - verze J' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_skopu_velr_71mpr_AGR' AND display_name LIKE 'LR Skupina odstřelovačů na LR - verze J' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_spojc_velr_71mpr_AGR',
  'LR Spojovací četa - verze J', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_spojc_velr_71mpr_AGR' AND display_name LIKE 'LR Spojovací četa - verze J' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_spojc_velr_71mpr_AGR' AND display_name LIKE 'LR Spojovací četa - verze J' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_velc_velr_71mpr_AGR',
  'LR Velitelská četa - verze B', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_velc_velr_71mpr_AGR' AND display_name LIKE 'LR Velitelská četa - verze B' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_velc_velr_71mpr_AGR' AND display_name LIKE 'LR Velitelská četa - verze B' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_veldr_mr_71mpr_AGR',
  'LR Velitelské družstvo - verze J', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_veldr_mr_71mpr_AGR' AND display_name LIKE 'LR Velitelské družstvo - verze J' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_veldr_mr_71mpr_AGR' AND display_name LIKE 'LR Velitelské družstvo - verze J' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_veldr_rlog_71mpr_AGR',
  'LR Velitelské družstvo - verze L', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_veldr_rlog_71mpr_AGR' AND display_name LIKE 'LR Velitelské družstvo - verze L' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_veldr_rlog_71mpr_AGR' AND display_name LIKE 'LR Velitelské družstvo - verze L' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_veldr_velr_71mpr_AGR',
  'LR Velitelské družstvo - verze J', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_veldr_velr_71mpr_AGR' AND display_name LIKE 'LR Velitelské družstvo - verze J' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_veldr_velr_71mpr_AGR' AND display_name LIKE 'LR Velitelské družstvo - verze J' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_zenc_velr_71mpr_AGR',
  'LR Ženijní četa - verze J', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_zenc_velr_71mpr_AGR' AND display_name LIKE 'LR Ženijní četa - verze J' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_zenc_velr_71mpr_AGR' AND display_name LIKE 'LR Ženijní četa - verze J' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/spojdr_spojc_velr_71mpr_AGR',
  'LR Spojovací družstvo - verze J', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/spojdr_spojc_velr_71mpr_AGR' AND display_name LIKE 'LR Spojovací družstvo - verze J' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/spojdr_spojc_velr_71mpr_AGR' AND display_name LIKE 'LR Spojovací družstvo - verze J' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/zendr_zenc_velr_71mpr_AGR',
  'Ženijní družstvo - verze J', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/zendr_zenc_velr_71mpr_AGR' AND display_name LIKE 'Ženijní družstvo - verze J' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/zendr_zenc_velr_71mpr_AGR' AND display_name LIKE 'Ženijní družstvo - verze J' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_battalion_71mpr',
  'HR Mechanizovaný prapor na BVP-2', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_battalion_71mpr' AND display_name LIKE 'HR Mechanizovaný prapor na BVP-2' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_battalion_71mpr' AND display_name LIKE 'HR Mechanizovaný prapor na BVP-2' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_company_mr_71mpr',
  'HR Mechanizovaná rota BVP-2', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_company_mr_71mpr' AND display_name LIKE 'HR Mechanizovaná rota BVP-2' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_company_mr_71mpr' AND display_name LIKE 'HR Mechanizovaná rota BVP-2' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_company_rlog_71mpr',
  'HR Rota logistiky - verze K', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_company_rlog_71mpr' AND display_name LIKE 'HR Rota logistiky - verze K' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_company_rlog_71mpr' AND display_name LIKE 'HR Rota logistiky - verze K' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_company_velr_71mpr',
  'HR Velitelská rota - verze K', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_company_velr_71mpr' AND display_name LIKE 'HR Velitelská rota - verze K' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_company_velr_71mpr' AND display_name LIKE 'HR Velitelská rota - verze K' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_drrchpz_velc_velr_71mpr',
  'HR Družstvo radiačního a chemického průzkumu - verze K', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_drrchpz_velc_velr_71mpr' AND display_name LIKE 'HR Družstvo radiačního a chemického průzkumu - verze K' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_drrchpz_velc_velr_71mpr' AND display_name LIKE 'HR Družstvo radiačního a chemického průzkumu - verze K' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_drzabvel_velc_velr_71mpr',
  'HR Družstvo zabezpečení velení - verze K', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_drzabvel_velc_velr_71mpr' AND display_name LIKE 'HR Družstvo zabezpečení velení - verze K' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_drzabvel_velc_velr_71mpr' AND display_name LIKE 'HR Družstvo zabezpečení velení - verze K' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_platoon_odstrtym_skopu_velr_71mpr',
  'HR Odstřelovací družstvo - verze K', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_odstrtym_skopu_velr_71mpr' AND display_name LIKE 'HR Odstřelovací družstvo - verze K' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_odstrtym_skopu_velr_71mpr' AND display_name LIKE 'HR Odstřelovací družstvo - verze K' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_platoon_mc_mr_71mpr',
  'HR Mechanizovaná četa BVP-2 - verze K', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_mc_mr_71mpr' AND display_name LIKE 'HR Mechanizovaná četa BVP-2 - verze K' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_mc_mr_71mpr' AND display_name LIKE 'HR Mechanizovaná četa BVP-2 - verze K' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_platoon_pzt_velr_71mpr',
  'HR Průzkumný tým - verze K', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_pzt_velr_71mpr' AND display_name LIKE 'HR Průzkumný tým - verze K' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_pzt_velr_71mpr' AND display_name LIKE 'HR Průzkumný tým - verze K' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_platoon_skopu_velr_71mpr',
  'HR Skupina odstřelovačů na LR - verze K', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_skopu_velr_71mpr' AND display_name LIKE 'HR Skupina odstřelovačů na LR - verze K' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_skopu_velr_71mpr' AND display_name LIKE 'HR Skupina odstřelovačů na LR - verze K' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_platoon_spojc_velr_71mpr',
  'HR Spojovací četa - verze K', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_spojc_velr_71mpr' AND display_name LIKE 'HR Spojovací četa - verze K' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_spojc_velr_71mpr' AND display_name LIKE 'HR Spojovací četa - verze K' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_platoon_velc_velr_71mpr',
  'HR Velitelská četa - verze K', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_velc_velr_71mpr' AND display_name LIKE 'HR Velitelská četa - verze K' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_velc_velr_71mpr' AND display_name LIKE 'HR Velitelská četa - verze K' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_platoon_veldr_mr_71mpr',
  'HR Velitelské družstvo - verze K', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_veldr_mr_71mpr' AND display_name LIKE 'HR Velitelské družstvo - verze K' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_veldr_mr_71mpr' AND display_name LIKE 'HR Velitelské družstvo - verze K' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_platoon_veldr_rlog_71mpr',
  'HR Velitelské družstvo - verze L', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_veldr_rlog_71mpr' AND display_name LIKE 'HR Velitelské družstvo - verze L' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_veldr_rlog_71mpr' AND display_name LIKE 'HR Velitelské družstvo - verze L' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_platoon_veldr_velr_71mpr',
  'HR Velitelské družstvo - verze K', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_veldr_velr_71mpr' AND display_name LIKE 'HR Velitelské družstvo - verze K' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_veldr_velr_71mpr' AND display_name LIKE 'HR Velitelské družstvo - verze K' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_platoon_zenc_velr_71mpr',
  'HR Ženijní četa - verze K', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_zenc_velr_71mpr' AND display_name LIKE 'HR Ženijní četa - verze K' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_zenc_velr_71mpr' AND display_name LIKE 'HR Ženijní četa - verze K' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_spojdr_spojc_velr_71mpr',
  'HR Spojovací družstvo - verze K', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_spojdr_spojc_velr_71mpr' AND display_name LIKE 'HR Spojovací družstvo - verze K' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_spojdr_spojc_velr_71mpr' AND display_name LIKE 'HR Spojovací družstvo - verze K' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_zendr_zenc_velr_71mpr',
  'HR Ženijní družstvo - verze K', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_zendr_zenc_velr_71mpr' AND display_name LIKE 'HR Ženijní družstvo - verze K' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_zendr_zenc_velr_71mpr' AND display_name LIKE 'HR Ženijní družstvo - verze K' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/1raddr_spojc_velr_41mpr',
  '1. radistické družstvo - verze C', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/1raddr_spojc_velr_41mpr' AND display_name LIKE '1. radistické družstvo - verze C' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/1raddr_spojc_velr_41mpr' AND display_name LIKE '1. radistické družstvo - verze C' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/2raddr_spojc_velr_41mpr',
  '2. radistické družstvo - verze C', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/2raddr_spojc_velr_41mpr' AND display_name LIKE '2. radistické družstvo - verze C' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/2raddr_spojc_velr_41mpr' AND display_name LIKE '2. radistické družstvo - verze C' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/battalion_41mpr',
  'Mechanizovaný prapor na PandurII', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/battalion_41mpr' AND display_name LIKE 'Mechanizovaný prapor na PandurII' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/battalion_41mpr' AND display_name LIKE 'Mechanizovaný prapor na PandurII' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/company_mr_41mpr',
  'Mechanizovaná rota Pandur II', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_mr_41mpr' AND display_name LIKE 'Mechanizovaná rota Pandur II' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_mr_41mpr' AND display_name LIKE 'Mechanizovaná rota Pandur II' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/company_rlog_41mpr',
  'Rota logistiky - verze C', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_rlog_41mpr' AND display_name LIKE 'Rota logistiky - verze C' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_rlog_41mpr' AND display_name LIKE 'Rota logistiky - verze C' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/company_velr_41mpr',
  'Velitelská rota - verze C', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_velr_41mpr' AND display_name LIKE 'Velitelská rota - verze C' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_velr_41mpr' AND display_name LIKE 'Velitelská rota - verze C' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/drrchpz_velc_velr_41mpr',
  'Družstvo radiačního a chemického průzkumu - verze C', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/drrchpz_velc_velr_41mpr' AND display_name LIKE 'Družstvo radiačního a chemického průzkumu - verze C' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/drrchpz_velc_velr_41mpr' AND display_name LIKE 'Družstvo radiačního a chemického průzkumu - verze C' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/obv_41mpr',
  'Obvaziště - verze C', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/obv_41mpr' AND display_name LIKE 'Obvaziště - verze C' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/obv_41mpr' AND display_name LIKE 'Obvaziště - verze C' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_copr_rlog_41mpr',
  'Četa oprav - verze C', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_copr_rlog_41mpr' AND display_name LIKE 'Četa oprav - verze C' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_copr_rlog_41mpr' AND display_name LIKE 'Četa oprav - verze C' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_mc_mr_41mpr',
  'Mechanizovaná četa Pandur II', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_mc_mr_41mpr' AND display_name LIKE 'Mechanizovaná četa Pandur II' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_mc_mr_41mpr' AND display_name LIKE 'Mechanizovaná četa Pandur II' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_pzdr_velr_41mpr',
  'Průzkumné družstvo - verze C', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_pzdr_velr_41mpr' AND display_name LIKE 'Průzkumné družstvo - verze C' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_pzdr_velr_41mpr' AND display_name LIKE 'Průzkumné družstvo - verze C' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_skopu_velr_41mpr',
  'Družstvo odstřelovačů - verze C', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_skopu_velr_41mpr' AND display_name LIKE 'Družstvo odstřelovačů - verze C' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_skopu_velr_41mpr' AND display_name LIKE 'Družstvo odstřelovačů - verze C' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_spojc_velr_41mpr',
  'Spojovací četa - verze C', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_spojc_velr_41mpr' AND display_name LIKE 'Spojovací četa - verze C' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_spojc_velr_41mpr' AND display_name LIKE 'Spojovací četa - verze C' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_velc_velr_41mpr',
  'Velitelská četa - verze C', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_velc_velr_41mpr' AND display_name LIKE 'Velitelská četa - verze C' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_velc_velr_41mpr' AND display_name LIKE 'Velitelská četa - verze C' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_veldr_mr_41mpr',
  'Velitelské družstvo - verze C', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_veldr_mr_41mpr' AND display_name LIKE 'Velitelské družstvo - verze C' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_veldr_mr_41mpr' AND display_name LIKE 'Velitelské družstvo - verze C' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_zenc_velr_41mpr',
  'Ženijní četa - verze C', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_zenc_velr_41mpr' AND display_name LIKE 'Ženijní četa - verze C' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_zenc_velr_41mpr' AND display_name LIKE 'Ženijní četa - verze C' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/spojdr_spojc_velr_41mpr',
  'Spojovací družstvo - verze C', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/spojdr_spojc_velr_41mpr' AND display_name LIKE 'Spojovací družstvo - verze C' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/spojdr_spojc_velr_41mpr' AND display_name LIKE 'Spojovací družstvo - verze C' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/vyprdr_copr_rlog_41mpr',
  'Vyprošťovací družstvo - verze C', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/vyprdr_copr_rlog_41mpr' AND display_name LIKE 'Vyprošťovací družstvo - verze C' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/vyprdr_copr_rlog_41mpr' AND display_name LIKE 'Vyprošťovací družstvo - verze C' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/zendr_zenc_velr_41mpr',
  'Ženijní družstvo - verze C', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/zendr_zenc_velr_41mpr' AND display_name LIKE 'Ženijní družstvo - verze C' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/zendr_zenc_velr_41mpr' AND display_name LIKE 'Ženijní družstvo - verze C' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/zenstrdr_zenc_velr_41mpr',
  'Ženijní strojní družstvo - verze C', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/zenstrdr_zenc_velr_41mpr' AND display_name LIKE 'Ženijní strojní družstvo - verze C' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/zenstrdr_zenc_velr_41mpr' AND display_name LIKE 'Ženijní strojní družstvo - verze C' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/battalion_41mpr_AGR',
  'LR Mechanizovaný prapor na PandurII', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/battalion_41mpr_AGR' AND display_name LIKE 'LR Mechanizovaný prapor na PandurII' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/battalion_41mpr_AGR' AND display_name LIKE 'LR Mechanizovaný prapor na PandurII' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/company_mr_41mpr_AGR',
  'LR Mechanizovaná rota Pandur II', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_mr_41mpr_AGR' AND display_name LIKE 'LR Mechanizovaná rota Pandur II' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_mr_41mpr_AGR' AND display_name LIKE 'LR Mechanizovaná rota Pandur II' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/company_velr_41mpr_AGR',
  'LR Velitelská rota - verze G', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_velr_41mpr_AGR' AND display_name LIKE 'LR Velitelská rota - verze G' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_velr_41mpr_AGR' AND display_name LIKE 'LR Velitelská rota - verze G' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/drrchpz_velc_velr_41mpr_AGR',
  'LR Družstvo radiačního a chemického průzkumu - verze G', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/drrchpz_velc_velr_41mpr_AGR' AND display_name LIKE 'LR Družstvo radiačního a chemického průzkumu - verze G' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/drrchpz_velc_velr_41mpr_AGR' AND display_name LIKE 'LR Družstvo radiačního a chemického průzkumu - verze G' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/drzabvel_velc_velr_41mpr_AGR',
  'LR Družstvo zabezpečení velení - verze G', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/drzabvel_velc_velr_41mpr_AGR' AND display_name LIKE 'LR Družstvo zabezpečení velení - verze G' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/drzabvel_velc_velr_41mpr_AGR' AND display_name LIKE 'LR Družstvo zabezpečení velení - verze G' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/obv_41mpr_AGR',
  'LR Obvaziště - verze G', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/obv_41mpr_AGR' AND display_name LIKE 'LR Obvaziště - verze G' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/obv_41mpr_AGR' AND display_name LIKE 'LR Obvaziště - verze G' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_mc_mr_41mpr_AGR',
  'LR Mechanizovaná četa Pandur II - verze G', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_mc_mr_41mpr_AGR' AND display_name LIKE 'LR Mechanizovaná četa Pandur II - verze G' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_mc_mr_41mpr_AGR' AND display_name LIKE 'LR Mechanizovaná četa Pandur II - verze G' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_pzdr_velr_41mpr_AGR',
  'LR Průzkumné družstvo - verze G', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_pzdr_velr_41mpr_AGR' AND display_name LIKE 'LR Průzkumné družstvo - verze G' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_pzdr_velr_41mpr_AGR' AND display_name LIKE 'LR Průzkumné družstvo - verze G' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_skopu_velr_41mpr_AGR',
  'LR Družstvo odstřelovačů - verze G', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_skopu_velr_41mpr_AGR' AND display_name LIKE 'LR Družstvo odstřelovačů - verze G' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_skopu_velr_41mpr_AGR' AND display_name LIKE 'LR Družstvo odstřelovačů - verze G' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_spojc_velr_41mpr_AGR',
  'LR Spojovací četa - verze G', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_spojc_velr_41mpr_AGR' AND display_name LIKE 'LR Spojovací četa - verze G' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_spojc_velr_41mpr_AGR' AND display_name LIKE 'LR Spojovací četa - verze G' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_velc_velr_41mpr_AGR',
  'LR Velitelská četa - verze G', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_velc_velr_41mpr_AGR' AND display_name LIKE 'LR Velitelská četa - verze G' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_velc_velr_41mpr_AGR' AND display_name LIKE 'LR Velitelská četa - verze G' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_veldr_mr_41mpr_AGR',
  'LR Velitelské družstvo - verze G', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_veldr_mr_41mpr_AGR' AND display_name LIKE 'LR Velitelské družstvo - verze G' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_veldr_mr_41mpr_AGR' AND display_name LIKE 'LR Velitelské družstvo - verze G' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_veldr_velr_41mpr_AGR',
  'LR Velitelské družstvo - verze H', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_veldr_velr_41mpr_AGR' AND display_name LIKE 'LR Velitelské družstvo - verze H' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_veldr_velr_41mpr_AGR' AND display_name LIKE 'LR Velitelské družstvo - verze H' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_zenc_velr_41mpr_AGR',
  'LR Ženijní četa - verze G', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_zenc_velr_41mpr_AGR' AND display_name LIKE 'LR Ženijní četa - verze G' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_zenc_velr_41mpr_AGR' AND display_name LIKE 'LR Ženijní četa - verze G' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/spojdr_spojc_velr_41mpr_AGR',
  'LR Spojovací družstvo - verze G', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/spojdr_spojc_velr_41mpr_AGR' AND display_name LIKE 'LR Spojovací družstvo - verze G' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/spojdr_spojc_velr_41mpr_AGR' AND display_name LIKE 'LR Spojovací družstvo - verze G' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/zendr_zenc_velr_41mpr_AGR',
  'LR Ženijní družstvo - verze G', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/zendr_zenc_velr_41mpr_AGR' AND display_name LIKE 'LR Ženijní družstvo - verze G' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/zendr_zenc_velr_41mpr_AGR' AND display_name LIKE 'LR Ženijní družstvo - verze G' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_battalion_41mpr',
  'HR Mechanizovaný prapor na PandurII', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_battalion_41mpr' AND display_name LIKE 'HR Mechanizovaný prapor na PandurII' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_battalion_41mpr' AND display_name LIKE 'HR Mechanizovaný prapor na PandurII' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_company_mr_41mpr',
  'HR Mechanizovaná rota Pandur II - verze I', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_company_mr_41mpr' AND display_name LIKE 'HR Mechanizovaná rota Pandur II - verze I' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_company_mr_41mpr' AND display_name LIKE 'HR Mechanizovaná rota Pandur II - verze I' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_company_rlog_41mpr',
  'HR Rota logistiky - verze I', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_company_rlog_41mpr' AND display_name LIKE 'HR Rota logistiky - verze I' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_company_rlog_41mpr' AND display_name LIKE 'HR Rota logistiky - verze I' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_company_velr_41mpr',
  'HR Velitelská rota - verze I', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_company_velr_41mpr' AND display_name LIKE 'HR Velitelská rota - verze I' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_company_velr_41mpr' AND display_name LIKE 'HR Velitelská rota - verze I' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_drrchpz_velc_velr_41mpr',
  'HR Družstvo radiačního a chemického průzkumu - verze I', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_drrchpz_velc_velr_41mpr' AND display_name LIKE 'HR Družstvo radiačního a chemického průzkumu - verze I' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_drrchpz_velc_velr_41mpr' AND display_name LIKE 'HR Družstvo radiačního a chemického průzkumu - verze I' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_drzabvel_velc_velr_41mpr',
  'HR Družstvo zabezpečení velení - verze K', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_drzabvel_velc_velr_41mpr' AND display_name LIKE 'HR Družstvo zabezpečení velení - verze K' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_drzabvel_velc_velr_41mpr' AND display_name LIKE 'HR Družstvo zabezpečení velení - verze K' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_obv_41mpr',
  'HR Obvaziště - verze I', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_obv_41mpr' AND display_name LIKE 'HR Obvaziště - verze I' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_obv_41mpr' AND display_name LIKE 'HR Obvaziště - verze I' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_platoon_mc_mr_41mpr',
  'HR Mechanizovaná četa Pandur II - verze I', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_mc_mr_41mpr' AND display_name LIKE 'HR Mechanizovaná četa Pandur II - verze I' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_mc_mr_41mpr' AND display_name LIKE 'HR Mechanizovaná četa Pandur II - verze I' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_platoon_pzdr_velr_41mpr',
  'HR Průzkumné družstvo - verze I', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_pzdr_velr_41mpr' AND display_name LIKE 'HR Průzkumné družstvo - verze I' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_pzdr_velr_41mpr' AND display_name LIKE 'HR Průzkumné družstvo - verze I' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_platoon_skopu_velr_41mpr',
  'HR Družstvo odstřelovačů - verze I', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_skopu_velr_41mpr' AND display_name LIKE 'HR Družstvo odstřelovačů - verze I' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_skopu_velr_41mpr' AND display_name LIKE 'HR Družstvo odstřelovačů - verze I' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_platoon_spojc_velr_41mpr',
  'HR Spojovací četa - verze I', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_spojc_velr_41mpr' AND display_name LIKE 'HR Spojovací četa - verze I' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_spojc_velr_41mpr' AND display_name LIKE 'HR Spojovací četa - verze I' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_platoon_velc_velr_41mpr',
  'HR Velitelská četa - verze I', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_velc_velr_41mpr' AND display_name LIKE 'HR Velitelská četa - verze I' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_velc_velr_41mpr' AND display_name LIKE 'HR Velitelská četa - verze I' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_platoon_veldr_mr_41mpr',
  'HR Velitelské družstvo - verze I', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_veldr_mr_41mpr' AND display_name LIKE 'HR Velitelské družstvo - verze I' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_veldr_mr_41mpr' AND display_name LIKE 'HR Velitelské družstvo - verze I' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_platoon_veldr_rlog_41mpr',
  'HR Velitelské družstvo - verze J', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_veldr_rlog_41mpr' AND display_name LIKE 'HR Velitelské družstvo - verze J' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_veldr_rlog_41mpr' AND display_name LIKE 'HR Velitelské družstvo - verze J' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_platoon_veldr_velr_41mpr',
  'HR Velitelské družstvo - verze K', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_veldr_velr_41mpr' AND display_name LIKE 'HR Velitelské družstvo - verze K' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_veldr_velr_41mpr' AND display_name LIKE 'HR Velitelské družstvo - verze K' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_platoon_zenc_velr_41mpr',
  'HR Ženijní četa - verze I', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_zenc_velr_41mpr' AND display_name LIKE 'HR Ženijní četa - verze I' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_platoon_zenc_velr_41mpr' AND display_name LIKE 'HR Ženijní četa - verze I' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_spojdr_spojc_velr_41mpr',
  'HR Spojovací družstvo - verze I', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_spojdr_spojc_velr_41mpr' AND display_name LIKE 'HR Spojovací družstvo - verze I' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_spojdr_spojc_velr_41mpr' AND display_name LIKE 'HR Spojovací družstvo - verze I' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/HR_zendr_zenc_velr_41mpr',
  'HR Ženijní družstvo - verze I', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_zendr_zenc_velr_41mpr' AND display_name LIKE 'HR Ženijní družstvo - verze I' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/HR_zendr_zenc_velr_41mpr' AND display_name LIKE 'HR Ženijní družstvo - verze I' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/1raddr_spojc_velr_mpr',
  '1. radistické družstvo - verze A', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/1raddr_spojc_velr_mpr' AND display_name LIKE '1. radistické družstvo - verze A' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/1raddr_spojc_velr_mpr' AND display_name LIKE '1. radistické družstvo - verze A' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/2raddr_spojc_velr_mpr',
  '2. radistické družstvo - verze A', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/2raddr_spojc_velr_mpr' AND display_name LIKE '2. radistické družstvo - verze A' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/2raddr_spojc_velr_mpr' AND display_name LIKE '2. radistické družstvo - verze A' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/battalion_T72M4',
  'Tankový prapor (T72M4)', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/battalion_T72M4' AND display_name LIKE 'Tankový prapor (T72M4)' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/battalion_T72M4' AND display_name LIKE 'Tankový prapor (T72M4)' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/company_mr_mpr',
  'Mechanizovaná rota (BVP2)', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_mr_mpr' AND display_name LIKE 'Mechanizovaná rota (BVP2)' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_mr_mpr' AND display_name LIKE 'Mechanizovaná rota (BVP2)' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/company_rlog',
  'Rota logistiky - verze A', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_rlog' AND display_name LIKE 'Rota logistiky - verze A' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_rlog' AND display_name LIKE 'Rota logistiky - verze A' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/company_tr_tpr',
  'Tanková rota (T72M4)', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_tr_tpr' AND display_name LIKE 'Tanková rota (T72M4)' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_tr_tpr' AND display_name LIKE 'Tanková rota (T72M4)' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/company_velr_mpr',
  'Velitelská rota - verze A', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_velr_mpr' AND display_name LIKE 'Velitelská rota - verze A' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/company_velr_mpr' AND display_name LIKE 'Velitelská rota - verze A' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/doprdr_zasc_rlog',
  'Dopravní družstvo - verze A', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/doprdr_zasc_rlog' AND display_name LIKE 'Dopravní družstvo - verze A' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/doprdr_zasc_rlog' AND display_name LIKE 'Dopravní družstvo - verze A' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/dropr1_copr_rlog',
  'Družstvo oprav 1 - verze A', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/dropr1_copr_rlog' AND display_name LIKE 'Družstvo oprav 1 - verze A' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/dropr1_copr_rlog' AND display_name LIKE 'Družstvo oprav 1 - verze A' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/drrchpz_velc_velr_mpr',
  'Družstvo radiačního a chemického průzkumu - verze A', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/drrchpz_velc_velr_mpr' AND display_name LIKE 'Družstvo radiačního a chemického průzkumu - verze A' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/drrchpz_velc_velr_mpr' AND display_name LIKE 'Družstvo radiačního a chemického průzkumu - verze A' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/drzabvel_velc_velr_mpr',
  'Družstvo zabezpečení velení - verze A', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/drzabvel_velc_velr_mpr' AND display_name LIKE 'Družstvo zabezpečení velení - verze A' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/drzabvel_velc_velr_mpr' AND display_name LIKE 'Družstvo zabezpečení velení - verze A' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/hospdr_hospc_rlog',
  'Hospodářské družstvo - verze A', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/hospdr_hospc_rlog' AND display_name LIKE 'Hospodářské družstvo - verze A' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/hospdr_hospc_rlog' AND display_name LIKE 'Hospodářské družstvo - verze A' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/hospsklad_hospc_rlog',
  'Hospodářské skladovací družstvo', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/hospsklad_hospc_rlog' AND display_name LIKE 'Hospodářské skladovací družstvo' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/hospsklad_hospc_rlog' AND display_name LIKE 'Hospodářské skladovací družstvo' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/obv_tpr',
  'Obvaziště - verze A', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/obv_tpr' AND display_name LIKE 'Obvaziště - verze A' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/obv_tpr' AND display_name LIKE 'Obvaziště - verze A' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_copr_rlog',
  'Četa oprav - verze A', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_copr_rlog' AND display_name LIKE 'Četa oprav - verze A' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_copr_rlog' AND display_name LIKE 'Četa oprav - verze A' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_hospc_rlog',
  'Hospodářská četa - verze A', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_hospc_rlog' AND display_name LIKE 'Hospodářská četa - verze A' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_hospc_rlog' AND display_name LIKE 'Hospodářská četa - verze A' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_mc_mr_mpr',
  'Mechanizovaná četa (BVP2)', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_mc_mr_mpr' AND display_name LIKE 'Mechanizovaná četa (BVP2)' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_mc_mr_mpr' AND display_name LIKE 'Mechanizovaná četa (BVP2)' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_spojc_velr_mpr',
  'Spojovací četa - verze A', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_spojc_velr_mpr' AND display_name LIKE 'Spojovací četa - verze A' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_spojc_velr_mpr' AND display_name LIKE 'Spojovací četa - verze A' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_tc_tr_tpr',
  'Tanková četa (T72M4)', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_tc_tr_tpr' AND display_name LIKE 'Tanková četa (T72M4)' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_tc_tr_tpr' AND display_name LIKE 'Tanková četa (T72M4)' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_velc_velr_mpr',
  'Velitelská četa - verze A', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_velc_velr_mpr' AND display_name LIKE 'Velitelská četa - verze A' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_velc_velr_mpr' AND display_name LIKE 'Velitelská četa - verze A' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_zasc_rlog',
  'Zásobovací četa - verze A', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_zasc_rlog' AND display_name LIKE 'Zásobovací četa - verze A' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_zasc_rlog' AND display_name LIKE 'Zásobovací četa - verze A' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/platoon_zenc_velr_mpr',
  'Ženijní četa - verze A', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_zenc_velr_mpr' AND display_name LIKE 'Ženijní četa - verze A' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/platoon_zenc_velr_mpr' AND display_name LIKE 'Ženijní četa - verze A' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/sklady_zasc_rlog',
  'Sklady - verze A', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/sklady_zasc_rlog' AND display_name LIKE 'Sklady - verze A' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/sklady_zasc_rlog' AND display_name LIKE 'Sklady - verze A' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/spojdr_spojc_velr_mpr',
  'Spojovací družstvo - verze A', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/spojdr_spojc_velr_mpr' AND display_name LIKE 'Spojovací družstvo - verze A' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/spojdr_spojc_velr_mpr' AND display_name LIKE 'Spojovací družstvo - verze A' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/vyprdr_copr_rlog',
  'Vyprošťovací družstvo - verze A', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/vyprdr_copr_rlog' AND display_name LIKE 'Vyprošťovací družstvo - verze A' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/vyprdr_copr_rlog' AND display_name LIKE 'Vyprošťovací družstvo - verze A' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/zendr_zenc_velr_mpr',
  'Ženijní družstvo - verze A', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/zendr_zenc_velr_mpr' AND display_name LIKE 'Ženijní družstvo - verze A' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/zendr_zenc_velr_mpr' AND display_name LIKE 'Ženijní družstvo - verze A' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/zenstrdr_zenc_velr_mpr',
  'Ženijní strojní družstvo - verze A', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/zenstrdr_zenc_velr_mpr' AND display_name LIKE 'Ženijní strojní družstvo - verze A' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/zenstrdr_zenc_velr_mpr' AND display_name LIKE 'Ženijní strojní družstvo - verze A' AND is_entity = 'f';

INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  'unit/demo_section_observer',
  'Demo sekce pozorovatelů', 
  'f',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/demo_section_observer' AND display_name LIKE 'Demo sekce pozorovatelů' AND is_entity = 'f');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE 'unit/demo_section_observer' AND display_name LIKE 'Demo sekce pozorovatelů' AND is_entity = 'f';


