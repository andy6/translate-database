--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;)
--comment Adding data to table 'main.t_lang'.

INSERT INTO main.t_lang (id, label_cz, label_en, label_de)
  VALUES ('cz', 'Čeština', 'Czech', 'Tschechisch');
--rollback DELETE FROM main.t_lang WHERE id = 'cz';

INSERT INTO main.t_lang (id, label_cz, label_en, label_de)
  VALUES ('en', 'Angličtina', 'English', 'Englisch');
--rollback DELETE FROM main.t_lang WHERE id = 'en';

INSERT INTO main.t_lang (id, label_cz, label_en, label_de)
  VALUES ('de', 'Němčina', 'German', 'Deutsch');
--rollback DELETE FROM main.t_lang WHERE id = 'de';


