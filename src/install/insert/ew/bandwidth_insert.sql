CREATE OR REPLACE FUNCTION insert_ew_bandwidth() 
RETURNS BOOLEAN AS $$

DECLARE 
  frequency integer;
  _radiostation_name character varying(255);
BEGIN
 
FOR frequency, _radiostation_name IN 
    SELECT b.frequency, r.name
    FROM ew.bandwidth AS b
	LEFT JOIN ew.radiostation AS r ON b.fk_radiostation = r.id
	 ORDER BY b.fk_radiostation
  LOOP
  
  RAISE notice '
INSERT INTO ew.bandwidth (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE ''%''), ''%'' WHERE NOT EXISTS (
    SELECT 1 FROM ew.bandwidth WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE ''%'') AND frequency = ''%'');
--rollback DELETE FROM ew.bandwidth WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE ''%'') AND frequency = ''%'';', 
		_radiostation_name, frequency,
		_radiostation_name, frequency,
		_radiostation_name, frequency;
		
  END LOOP;
        RETURN true;

END;
$$  LANGUAGE plpgsql;

SELECT insert_ew_bandwidth();
DROP FUNCTION IF EXISTS insert_ew_bandwidth();

