--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;)
--comment Adding data to table 'reality.t_association'.

INSERT INTO reality.t_user_association (id_user, id_association)
  VALUES (
  (SELECT id FROM main.t_user WHERE email = 'andy@naentou.cz'), 
  (SELECT id FROM reality.association WHERE name = 'SVJ Údolní 54, Brno'))
  ON CONFLICT (name) DO NOTHING
--rollback DELETE FROM reality.t_association WHERE name = 'Předseda výboru'

