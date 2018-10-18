--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;)
--comment Adding data to table 'main.t_group'.

INSERT INTO main.t_group (name, description)
  VALUES ('Předseda výboru', 'Předseda výboru')
  ON CONFLICT (name) DO NOTHING;
--rollback DELETE FROM main.t_group WHERE name = 'Předseda výboru'

INSERT INTO main.t_group (name, description)
  VALUES ('Místopředseda výboru', 'Místopředseda výboru')
  ON CONFLICT (name) DO NOTHING;
--rollback DELETE FROM main.t_group WHERE name = 'Místopředseda výboru'

INSERT INTO main.t_group (name, description)
  VALUES ('Člen výboru', 'Člen výboru')
  ON CONFLICT (name) DO NOTHING;
--rollback DELETE FROM main.t_group WHERE name = 'Člen výboru'

INSERT INTO main.t_group (name, description)
  VALUES ('Člen kontrolní komise', 'Člen kontrolní komise')
  ON CONFLICT (name) DO NOTHING;
--rollback DELETE FROM main.t_group WHERE name = 'Člen kontrolní komise'
