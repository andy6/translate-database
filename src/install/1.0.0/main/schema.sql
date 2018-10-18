--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Enters a new schema 'main' into the current database.

-- Schema main
CREATE SCHEMA IF NOT EXISTS main;
--rollback DROP SCHEMA IF EXISTS main;
