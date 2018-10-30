--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;)
--comment Adding data to table 'main.t_group_permission'.

INSERT INTO main.t_group_permission (id_group, id_permission)
  SELECT 
    (SELECT id FROM main.t_group WHERE name = 'Předseda výboru'),
    (SELECT id FROM main.t_permission WHERE name = 'TEST')
    WHERE NOT EXISTS (SELECT 1 FROM main.t_group_permission WHERE 
	id_group = (SELECT id FROM main.t_group WHERE name = 'Předseda výboru') AND
	id_permission = (SELECT id FROM main.t_permission WHERE name = 'TEST'));
--rollback DELETE FROM main.t_group_permission WHERE id_group = (SELECT id FROM main.t_group WHERE name = 'Předseda výboru') AND id_permission = ((SELECT id FROM main.t_permission WHERE name = 'TEST')

INSERT INTO main.t_group_permission (id_group, id_permission)
  SELECT 
    (SELECT id FROM main.t_group WHERE name = 'Místopředseda výboru'),
    (SELECT id FROM main.t_permission WHERE name = 'TEST')
    WHERE NOT EXISTS (SELECT 1 FROM main.t_group_permission WHERE 
	id_group = (SELECT id FROM main.t_group WHERE name = 'Místopředseda výboru') AND
	id_permission = (SELECT id FROM main.t_permission WHERE name = 'TEST'));
--rollback DELETE FROM main.t_group_permission WHERE id_group = (SELECT id FROM main.t_group WHERE name = 'Místopředseda výboru') AND id_permission = ((SELECT id FROM main.t_permission WHERE name = 'TEST')





