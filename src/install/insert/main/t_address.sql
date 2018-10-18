--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;)
--comment Adding data to table 'main.t_address'.

INSERT INTO main.t_address (id_user, phone, email, street, city, zip, country)
  SELECT (SELECT id FROM main.t_user WHERE email = 'andy@naentou.cz'), 00420777666555, 'andy2@naentou.cz', 'Ulice Novákova 498/47', 'Novákovice', 60200, 'Czech republic' 
    WHERE NOT EXISTS (SELECT 1 FROM main.t_address WHERE phone = 00420777666555);
--rollback DELETE FROM main.t_address WHERE phone = 00420777666555;


