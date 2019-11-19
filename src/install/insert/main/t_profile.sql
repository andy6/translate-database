--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;)
--comment Adding data to table 'main.t_profile'.

INSERT INTO main.t_profile (id_user, price, description)
  VALUES (1, 1000, 'More information about me.');
--rollback DELETE FROM main.t_profile WHERE id_user = 'Čeština' AND ;

INSERT INTO main.t_profile (id_user, price, description)
  VALUES (2, 500, 'I would be better than I am.');
--rollback DELETE FROM main.t_profile WHERE id_user = 'Angličtina';




