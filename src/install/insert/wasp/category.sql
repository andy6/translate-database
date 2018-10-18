--liquibase formatted sql
--changeset Andy:1.0.3.1 (splitStatements:false endDelimiter:;)
--comment Adding data to table wasp.category.

INSERT INTO wasp.category (name, deleted)
  SELECT 'Začátečník', false WHERE NOT EXISTS (SELECT 1 FROM wasp.category WHERE name = 'Začátečník');
--rollback DELETE FROM wasp.category WHERE name = 'Začátečník';

INSERT INTO wasp.category (name, deleted)
  SELECT 'Pokročilý', false WHERE NOT EXISTS (SELECT 1 FROM wasp.category WHERE name = 'Pokročilý');
--rollback DELETE FROM wasp.category WHERE name = 'Pokročilý';

