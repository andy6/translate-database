--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;)
--comment Adding data to table 'main.t_user'.

INSERT INTO main.t_user (email, sso_id, password, first_name, last_name)
  VALUES ('andy@naentou.cz', 1, 'test', 'Ondra', 'Novák')
  ON CONFLICT (email) DO NOTHING;
--rollback DELETE FROM main.t_user WHERE email = 'andy@naentou.cz';

INSERT INTO main.t_user (email, sso_id, password, first_name, last_name)
  SELECT 'borec@naentou.cz', 2, 'test', 'Borec', 'Novák' 
  ON CONFLICT (email) DO NOTHING;
--rollback DELETE FROM main.t_user WHERE email = 'borec@naentou.cz';

INSERT INTO main.t_user (email, sso_id, password, first_name, last_name)
  SELECT 'a', 3, '$2a$10$okCM3myrbzRDUf.FTfR2KehwnZfT2J8K5lUT9yfUPLYarFedoWnC6', 'Borec', 'Novák' 
  ON CONFLICT (email) DO NOTHING;
--rollback DELETE FROM main.t_user WHERE email = 'a';




