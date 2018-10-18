CREATE OR REPLACE FUNCTION insert_ew_frequency_step() 
RETURNS BOOLEAN AS $$

DECLARE 
  frequency integer;
  _radiostation_name character varying(255);
BEGIN
 
FOR frequency, _radiostation_name IN 
    SELECT fs.frequency, r.name
    FROM ew.frequency_step AS fs
	LEFT JOIN ew.radiostation AS r ON fs.fk_radiostation = r.id
	 ORDER BY fs.fk_radiostation
  LOOP
  
  RAISE notice '
INSERT INTO ew.frequency_step (fk_radiostation, frequency)
  SELECT (SELECT id FROM ew.radiostation WHERE name LIKE ''%''), ''%'' WHERE NOT EXISTS (
    SELECT 1 FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE ''%'') AND frequency = ''%'');
--rollback DELETE FROM ew.frequency_step WHERE fk_radiostation = (SELECT id FROM ew.radiostation WHERE name LIKE ''%'') AND frequency = ''%'';', 
		_radiostation_name, frequency,
		_radiostation_name, frequency,
		_radiostation_name, frequency;
		
  END LOOP;
        RETURN true;

END;
$$  LANGUAGE plpgsql;

SELECT insert_ew_frequency_step();
DROP FUNCTION IF EXISTS insert_ew_frequency_step();

