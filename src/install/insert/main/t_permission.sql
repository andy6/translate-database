--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;)
--comment Adding data to table 'main.t_permission'.

INSERT INTO main.t_permission (name, description)
  VALUES ('EDIT_USER', 'Permission to edit user details.')
  ON CONFLICT (name) DO UPDATE SET description = 'Permission to edit user details.';
--rollback DELETE FROM main.t_permission WHERE name = 'EDIT_USER'

INSERT INTO main.t_permission (name, description)
  VALUES ('EDIT_GROUP', 'Permission to edit group details.')
  ON CONFLICT (name) DO UPDATE SET description = 'Permission to edit group details.';
--rollback DELETE FROM main.t_permission WHERE name = 'EDIT_GROUP'

INSERT INTO main.t_permission (name, description)
  VALUES ('EDIT_PERMISSION', 'Permission to edit permissions.')
  ON CONFLICT (name) DO UPDATE SET description = 'Permission to edit permissions';
--rollback DELETE FROM main.t_permission WHERE name = 'EDIT_PERMISSION'

