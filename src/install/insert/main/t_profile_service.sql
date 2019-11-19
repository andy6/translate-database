--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;)
--comment Adding data to table 'main.t_profile_service'.

INSERT INTO main.t_profile_service (id_profile, id_service)
  VALUES (1, 1);
--rollback DELETE FROM main.t_profile_service WHERE id_profile = 1 AND id_service = 1;

INSERT INTO main.t_profile_service (id_profile, id_service)
  VALUES (1, 2);
--rollback DELETE FROM main.t_profile_service WHERE id_profile = 1 AND id_service = 2;

INSERT INTO main.t_profile_service (id_profile, id_service)
  VALUES (2, 1);
--rollback DELETE FROM main.t_profile_service WHERE id_profile = 2 AND id_service = 1;

INSERT INTO main.t_profile_service (id_profile, id_service)
  VALUES (2, 2);
--rollback DELETE FROM main.t_profile_service WHERE id_profile = 2 AND id_service = 2;




