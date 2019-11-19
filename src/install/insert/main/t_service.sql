--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;)
--comment Adding data to table 'main.t_service'.

INSERT INTO main.t_service (id, label_cz, label_en, label_de)
  VALUES ('translations', 'Překlady', 'Translations', 'Übersetzungen');
--rollback DELETE FROM main.t_service WHERE id = 'translations';

INSERT INTO main.t_service (id, label_cz, label_en, label_de)
  VALUES ('judicial_translations', 'Soudní překlady', 'Judicial Translations', 'Beglaubigte Übersetzungen');
--rollback DELETE FROM main.t_service WHERE id = 'judicial_translations';

INSERT INTO main.t_service (id, label_cz, label_en, label_de)
  VALUES ('interpretation', 'Tlumočení', 'Interpretation', 'Dolmetschen');
--rollback DELETE FROM main.t_service WHERE id = 'Tlumočení';

INSERT INTO main.t_service (id, label_cz, label_en, label_de)
  VALUES ('judicial_interpretation', 'Soudní tlumočení', 'Judicial Interpretation', 'Gerichtsdolmetschen');
--rollback DELETE FROM main.t_service WHERE id = 'Soudní tlumočení';
