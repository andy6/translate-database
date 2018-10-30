--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;)
--comment Adding data to table 'reality.t_association'.

INSERT INTO reality.t_unit_user (id_unit, id_user, ownership, part)
  VALUES (
  (SELECT id FROM reality.t_unit WHERE label = '27' AND id_building = (SELECT id FROM reality.t_building WHERE name = 'First building')), 
  (SELECT id FROM main.t_user WHERE email = 'andy@naentou.cz'), 
  'PRIVATE', 1)
  ON CONFLICT (id_unit, id_user) DO NOTHING
--rollback DELETE FROM reality.t_unit_user WHERE id_unit = (SELECT id FROM reality.t_unit WHERE label = '27' AND id_building = (SELECT id FROM reality.t_building WHERE name = 'First building')) AND id_user = (SELECT id FROM main.t_user WHERE email = 'andy@naentou.cz')

