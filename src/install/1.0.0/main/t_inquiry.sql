--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Creates a new table 'main.t_inquiry' in the current database.

-- Table main.t_inquiry
-- DROP TABLE IF EXISTS main.t_inquiry CASCADE;
CREATE TABLE IF NOT EXISTS main.t_inquiry (
  id serial PRIMARY KEY NOT NULL,
  title CHARACTER VARYING(32) NOT NULL,
  content CHARACTER VARYING(255) NOT NULL,
  price INTEGER
);
COMMENT ON TABLE main.t_inquiry IS 'Table stores inquires.';
COMMENT ON COLUMN main.t_inquiry.id IS 'Table identifier.';
COMMENT ON COLUMN main.t_inquiry.title IS 'Title.';
COMMENT ON COLUMN main.t_inquiry.content IS 'Text content.';
COMMENT ON COLUMN main.t_inquiry.price IS 'Price.';
-- rollback DROP TABLE IF EXISTS main.t_inquiry;