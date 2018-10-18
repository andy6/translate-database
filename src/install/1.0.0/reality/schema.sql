--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Enters a new schema 'reality' into the current database.

-- Schema reality
CREATE SCHEMA IF NOT EXISTS reality;
--rollback DROP SCHEMA IF EXISTS reality;
