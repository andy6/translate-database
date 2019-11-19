--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;)
--comment Adding data to table 'main.t_profile_lang'.

INSERT INTO main.t_profile_lang (id_profile, id_lang)
  VALUES (1, 'cz');
--rollback DELETE FROM main.t_profile_lang WHERE id_profile = 1 AND id_lang = 'cz';

INSERT INTO main.t_profile_lang (id_profile, id_lang)
  VALUES (1, 'en');
--rollback DELETE FROM main.t_profile_lang WHERE id_profile = 1 AND id_lang = 'en';

INSERT INTO main.t_profile_lang (id_profile, id_lang)
  VALUES (2, 'cz');
--rollback DELETE FROM main.t_profile_lang WHERE id_profile = 2 AND id_lang = 'cz';

INSERT INTO main.t_profile_lang (id_profile, id_lang)
  VALUES (2, 'en');
--rollback DELETE FROM main.t_profile_lang WHERE id_profile = 2 AND id_lang = 'en';




