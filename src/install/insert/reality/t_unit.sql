--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;)
--comment Adding data to table 'reality.t_unit'.

INSERT INTO reality.t_unit (id_building, unit_type, label, population, floor_area)
  VALUES (
	(SELECT id FROM reality.t_building WHERE name = 'First building'), 
	'FLAT', '27', 2, 75)
  ON CONFLICT (id_building, label) DO NOTHING;
--rollback DELETE FROM reality.t_unit WHERE id_building = (SELECT id FROM reality.t_building WHERE name = 'First building') AND id_user = (SELECT id FROM main.t_user WHERE email = 'andy@naentou.cz') AND label = '27'

