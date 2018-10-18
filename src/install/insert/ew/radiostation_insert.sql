CREATE OR REPLACE FUNCTION insert_ew_radiostation() 
RETURNS BOOLEAN AS $$

DECLARE 
  _radiostation ew.radiostation%rowtype;
BEGIN
 
FOR _radiostation IN 
    SELECT radiostation.*
    FROM ew.radiostation radiostation 
	 ORDER BY radiostation.name
  LOOP
  
  RAISE notice '
INSERT INTO ew.radiostation (name, min_frequence, max_frequence, antenna_gain, power, retranslation, note, jammer, sweep, sweep_random, burst_length, burst_rate, digital)
  SELECT ''%'', ''%'', ''%'', ''%'', ''%'', ''%'', ''%'', ''%'', ''%'', ''%'', ''%'', ''%'', ''%'' WHERE NOT EXISTS (
    SELECT 1 FROM ew.radiostation WHERE name LIKE ''%'');
--rollback DELETE FROM ew.radiostation WHERE name LIKE ''%'';', 
		_radiostation.name, _radiostation.min_frequence, _radiostation.max_frequence, 
		_radiostation.antenna_gain, _radiostation.power, 
		_radiostation.retranslation, _radiostation.note, _radiostation.jammer, _radiostation.sweep, _radiostation.sweep_random, _radiostation.burst_length, _radiostation.burst_rate, _radiostation.digital,
		_radiostation.name, _radiostation.name;    
  END LOOP;
        RETURN true;

END;
$$  LANGUAGE plpgsql;

SELECT insert_ew_radiostation();
DROP FUNCTION IF EXISTS insert_ew_radiostation();