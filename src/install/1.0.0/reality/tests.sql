--liquibase formatted sql
--changeset Andy:tests (splitStatements:false endDelimiter:;) dbms:postgresql
--comment Creates test functions on schema 'reality'.

-- Tests on schema reality.
DO $$
BEGIN
  INSERT INTO reality.t_association (name)
  SELECT 'SVJFirstAssociation'
  WHERE NOT EXISTS (SELECT 1 FROM reality.t_association WHERE name = 'SVJFirstAssociation');
  INSERT INTO reality.t_association (name)
  SELECT 'SVJSecondAssociation'
  WHERE NOT EXISTS (SELECT 1 FROM reality.t_association WHERE name = 'SVJSecondAssociation');

  INSERT INTO reality.t_building (name, id_association, street, city, zip, country)
  SELECT 'FirstBuilding', (SELECT 1 FROM reality.t_association WHERE name LIKE 'SVJFirstAssociation'), 'firstStreet', 'firstCity', 12345, 'firstCountry'
  WHERE NOT EXISTS (SELECT 1 FROM reality.t_building WHERE lower(name) LIKE lower('FirstBuilding'));
  INSERT INTO reality.t_building (name, id_association, street, city, zip, country)
  SELECT 'SecondBuilding', (SELECT 1 FROM reality.t_association WHERE name LIKE 'SVJFirstAssociation'), 'secondStreet', 'secondStreet', 12345, 'secondCountry'
  WHERE NOT EXISTS (SELECT 1 FROM reality.t_building WHERE lower(name) LIKE lower('SecondBuilding'));

  INSERT INTO reality.t_user_association (id_user, id_association)
  SELECT (SELECT id FROM main.t_user WHERE email='first@naentou.cz'), (SELECT id FROM reality.t_association WHERE name='SVJFirstAssociation')
  WHERE NOT EXISTS (SELECT 1 FROM reality.t_user_association WHERE
      id_user = (SELECT id FROM main.t_user WHERE email='first@naentou.cz') AND
      id_association = (SELECT id FROM reality.t_association WHERE name='SVJFirstAssociation'));
  INSERT INTO reality.t_user_association (id_user, id_association)
  SELECT (SELECT id FROM main.t_user WHERE email='second@naentou.cz'), (SELECT id FROM reality.t_association WHERE name='SVJSecondAssociation')
  WHERE NOT EXISTS (SELECT 1 FROM reality.t_user_association WHERE
      id_user = (SELECT id FROM main.t_user WHERE email='second@naentou.cz') AND
      id_association = (SELECT id FROM reality.t_association WHERE name='SVJSecondAssociation'));


END$$;