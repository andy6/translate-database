--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;)
--comment Adding data to table 'main.t_user_group'.

INSERT INTO main.t_user_group (id_user, id_group)
  SELECT 
    (SELECT id FROM main.t_user WHERE email = 'andy@naentou.cz'), 
	(SELECT id FROM main.t_group WHERE name = 'Předseda výboru')
    WHERE NOT EXISTS (SELECT 1 FROM main.t_user_group WHERE 
	id_user = (SELECT id FROM main.t_user WHERE email = 'andy@naentou.cz') AND
	id_group = (SELECT id FROM main.t_group WHERE name = 'Předseda výboru'));
--rollback DELETE FROM main.t_user_group WHERE name = 'Předseda výboru'

INSERT INTO main.t_user_group (id_user, id_group)
  SELECT 
    (SELECT id FROM main.t_user WHERE email = 'borec@naentou.cz'), 
	(SELECT id FROM main.t_group WHERE name = 'Místopředseda výboru')
    WHERE NOT EXISTS (SELECT 1 FROM main.t_user_group WHERE 
	id_user = (SELECT id FROM main.t_user WHERE email = 'borec@naentou.cz') AND
	id_group = (SELECT id FROM main.t_group WHERE name = 'Místopředseda výboru'));
--rollback DELETE FROM main.t_user_group WHERE name = 'Místopředseda výboru'