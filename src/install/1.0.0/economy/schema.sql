--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Enters a new schema 'economy' into the current database.

-- Schema economy
CREATE SCHEMA IF NOT EXISTS economy;
--rollback DROP SCHEMA IF EXISTS economy;
