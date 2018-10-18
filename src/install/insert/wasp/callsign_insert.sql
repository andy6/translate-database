CREATE OR REPLACE FUNCTION insert_wasp_callsign() 
RETURNS BOOLEAN AS $$

DECLARE 
  callsign character varying(128);
  circular boolean;
  callsign_set_name character varying(128);
BEGIN
 
FOR callsign, circular, callsign_set_name IN 
    SELECT callsign.callsign, callsign.circular, callsign_set.name
    FROM wasp.callsign callsign 
      LEFT JOIN wasp.callsign_set callsign_set ON callsign.fk_callsign_set = callsign_set.id
	 ORDER BY callsign.id
  LOOP
  RAISE notice '
INSERT INTO wasp.callsign (callsign, circular, fk_callsign_set, deleted)
  SELECT ''%'', false, (SELECT id FROM wasp.callsign_set WHERE name LIKE ''%''), false WHERE NOT EXISTS (SELECT 1 FROM wasp.callsign WHERE callsign LIKE ''%'');
--rollback DELETE FROM wasp.callsign WHERE callsign LIKE ''%'';', 
		callsign, callsign_set_name, callsign, callsign;        
  END LOOP;
        RETURN true;

END;
$$  LANGUAGE plpgsql;

SELECT insert_wasp_callsign();
DROP FUNCTION IF EXISTS insert_wasp_callsign();