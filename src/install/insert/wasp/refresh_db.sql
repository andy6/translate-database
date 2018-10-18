--liquibase formatted sql
--changeset Andy:1.0.5.1 (splitStatements:false endDelimiter:;)
--comment Adding data to table wasp.refresh_db.

INSERT INTO wasp.refresh_db(id, "time") SELECT 1, NOW() WHERE NOT EXISTS (SELECT 1 FROM wasp.refresh_db WHERE id = 1); 
-- rollback DELETE FROM wasp.refresh_db WHERE id = 1;