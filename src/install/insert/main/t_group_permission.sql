--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;)
--comment Adding data to table 'main.t_group_permission'.

INSERT INTO main.t_group_permission (id_group, id_permission)
  SELECT 
    (SELECT id FROM main.t_group WHERE name = 'Předseda výboru'),
    (SELECT id FROM main.t_permission WHERE name = 'EDIT_USER')
    WHERE NOT EXISTS (SELECT 1 FROM main.t_group_permission WHERE 
	id_group = (SELECT id FROM main.t_group WHERE name = 'Předseda výboru') AND
	id_permission = (SELECT id FROM main.t_permission WHERE name = 'EDIT_USER'));
--rollback DELETE FROM main.t_group_permission WHERE id_group = (SELECT id FROM main.t_group WHERE name = 'Předseda výboru') AND id_permission = ((SELECT id FROM main.t_permission WHERE name = 'EDIT_USER')

INSERT INTO main.t_group_permission (id_group, id_permission)
  SELECT 
    (SELECT id FROM main.t_group WHERE name = 'Předseda výboru'),
    (SELECT id FROM main.t_permission WHERE name = 'EDIT_GROUP')
    WHERE NOT EXISTS (SELECT 1 FROM main.t_group_permission WHERE 
	id_group = (SELECT id FROM main.t_group WHERE name = 'Předseda výboru') AND
	id_permission = (SELECT id FROM main.t_permission WHERE name = 'EDIT_GROUP'));
--rollback DELETE FROM main.t_group_permission WHERE id_group = (SELECT id FROM main.t_group WHERE name = 'Předseda výboru') AND id_permission = ((SELECT id FROM main.t_permission WHERE name = 'EDIT_GROUP')

INSERT INTO main.t_group_permission (id_group, id_permission)
  SELECT 
    (SELECT id FROM main.t_group WHERE name = 'Předseda výboru'),
    (SELECT id FROM main.t_permission WHERE name = 'EDIT_PERMISSION')
    WHERE NOT EXISTS (SELECT 1 FROM main.t_group_permission WHERE 
	id_group = (SELECT id FROM main.t_group WHERE name = 'Předseda výboru') AND
	id_permission = (SELECT id FROM main.t_permission WHERE name = 'EDIT_PERMISSION'));
--rollback DELETE FROM main.t_group_permission WHERE id_group = (SELECT id FROM main.t_group WHERE name = 'Předseda výboru') AND id_permission = ((SELECT id FROM main.t_permission WHERE name = 'EDIT_PERMISSION')

INSERT INTO main.t_group_permission (id_group, id_permission)
  SELECT 
    (SELECT id FROM main.t_group WHERE name = 'Místopředseda výboru'),
    (SELECT id FROM main.t_permission WHERE name = 'EDIT_USER')
    WHERE NOT EXISTS (SELECT 1 FROM main.t_group_permission WHERE 
	id_group = (SELECT id FROM main.t_group WHERE name = 'Místopředseda výboru') AND
	id_permission = (SELECT id FROM main.t_permission WHERE name = 'EDIT_USER'));
--rollback DELETE FROM main.t_group_permission WHERE id_group = (SELECT id FROM main.t_group WHERE name = 'Místopředseda výboru') AND id_permission = ((SELECT id FROM main.t_permission WHERE name = 'EDIT_USER')





