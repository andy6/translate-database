--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Enters a new schema 'technology' into the current database.

-- Schema technology
CREATE SCHEMA IF NOT EXISTS technology;
--rollback DROP SCHEMA IF EXISTS technology;
