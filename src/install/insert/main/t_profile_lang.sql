--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;)
--comment Adding data to table 'main.t_profile_lang'.

INSERT INTO main.t_profile_lang (id_profile, id_lang)
  VALUES (1, 1);
--rollback DELETE FROM main.t_profile_lang WHERE id_profile = 1 AND id_lang = 1;

INSERT INTO main.t_profile_lang (id_profile, id_lang)
  VALUES (1, 2);
--rollback DELETE FROM main.t_profile_lang WHERE id_profile = 1 AND id_lang = 2;

INSERT INTO main.t_profile_lang (id_profile, id_lang)
  VALUES (2, 1);
--rollback DELETE FROM main.t_profile_lang WHERE id_profile = 2 AND id_lang = 1;

INSERT INTO main.t_profile_lang (id_profile, id_lang)
  VALUES (2, 2);
--rollback DELETE FROM main.t_profile_lang WHERE id_profile = 2 AND id_lang = 2;




