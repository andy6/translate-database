--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql
--comment Creates data types on schema 'reality'.

-- Type: reality.unit_type_enum
-- DROP TYPE reality.unit_type_enum;
DO $$ 
BEGIN
  CREATE TYPE reality.unit_type_enum AS ENUM (
    'FLAT', -- byt
    'COMMERCIAL_PREMISES', -- komercni prostory
    'COMMON_PREMISES', -- spolecne prostory
    'CELLAR' -- sklep
  );
EXCEPTION
    WHEN duplicate_object THEN null;
END 
$$;
COMMENT ON TYPE reality.unit_type_enum IS 'Unit type enumeration.';
-- rollback DROP TYPE IF EXISTS reality.unit_type_enum;

-- Type: reality.ownership_type_enum
-- DROP TYPE reality.ownership_type_enum;
DO $$ 
BEGIN
  CREATE TYPE reality.ownership_type_enum AS ENUM (
    'PRIVATE', -- osobni vlastnictvi
    'COOPERATIVE', -- druzstevni vlastnictvi
    'RENTED', -- pronájem
    'STATE' -- statni vlastnictvi
  );
EXCEPTION
    WHEN duplicate_object THEN null;
END 
$$;
COMMENT ON TYPE reality.ownership_type_enum IS 'Unit ownership.';
-- rollback DROP TYPE IF EXISTS reality.ownership_type_enum;
