--liquibase formatted sql
--changeset Andy:config (splitStatements:false endDelimiter:;) dbms:postgresql
--comment Alter database set byte array to escape.


DO $$
  BEGIN
    EXECUTE 'ALTER DATABASE ' || current_database() || ' SET bytea_output TO ''escape''';
END; $$;