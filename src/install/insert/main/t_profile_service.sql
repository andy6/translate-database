--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;)
--comment Adding data to table 'main.t_profile_service'.

INSERT INTO main.t_profile_service (id_profile, id_service)
  VALUES (1, 'translations');
--rollback DELETE FROM main.t_profile_service WHERE id_profile = 1 AND id_service = 'translations';

INSERT INTO main.t_profile_service (id_profile, id_service)
  VALUES (1, 'interpretation');
--rollback DELETE FROM main.t_profile_service WHERE id_profile = 1 AND id_service = 'interpretation';

INSERT INTO main.t_profile_service (id_profile, id_service)
  VALUES (2, 'translations');
--rollback DELETE FROM main.t_profile_service WHERE id_profile = 2 AND id_service = 'translations';

INSERT INTO main.t_profile_service (id_profile, id_service)
  VALUES (2, 'interpretation');
--rollback DELETE FROM main.t_profile_service WHERE id_profile = 2 AND id_service = 'interpretation';




