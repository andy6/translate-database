CREATE OR REPLACE FUNCTION insert_wasp_actors() 
RETURNS BOOLEAN AS $$

DECLARE 
  composition_name character varying(128);
  display_name character varying(256);
  is_entity boolean;
BEGIN
 
FOR composition_name, display_name, is_entity IN 
    SELECT actors.composition_name, actors.display_name, actors.is_entity
    FROM wasp.wasp_actors actors
	    ORDER BY actors.id
  LOOP
  RAISE notice '
INSERT INTO wasp.wasp_actors (composition_name, display_name, is_entity, deleted)
  SELECT 
  ''%'',
  ''%'', 
  ''%'',
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_actors WHERE composition_name LIKE ''%'' AND display_name LIKE ''%'' AND is_entity = ''%'');
--rollback DELETE FROM wasp.wasp_actors WHERE composition_name LIKE ''%'' AND display_name LIKE ''%'' AND is_entity = ''%'';', 
		composition_name, display_name, is_entity, composition_name, display_name, is_entity, composition_name, display_name, is_entity;
  END LOOP;
        RETURN true;

END;
$$  LANGUAGE plpgsql;

SELECT insert_wasp_actors();
DROP FUNCTION IF EXISTS insert_wasp_actors();