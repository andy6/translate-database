CREATE OR REPLACE FUNCTION insert_wasp_enum_translator() 
RETURNS BOOLEAN AS $$

DECLARE 
  enum_type character varying(128);
  enum_value integer;
  code character varying(3);
  result_string character varying(1024);
BEGIN
 
FOR enum_type, enum_value, code, result_string IN 
    SELECT enum_translator.enum_type, enum_translator.enum_value, language.code, enum_translator.result_string
    FROM wasp.enum_translator enum_translator 
      LEFT JOIN ew.language language ON enum_translator.fk_language = language.id
	 ORDER BY enum_translator.id
  LOOP
  RAISE notice '
INSERT INTO wasp.enum_translator (enum_type, enum_value, fk_language, result_string)
  SELECT ''%'', ''%'', (SELECT id FROM ew.language WHERE code = ''%''), ''%'' WHERE NOT EXISTS (
    SELECT 1 FROM wasp.enum_translator WHERE enum_type LIKE ''%'' AND enum_value = ''%'' AND fk_language = (SELECT id FROM ew.language WHERE code = ''%''));
--rollback DELETE FROM wasp.enum_translator WHERE enum_type LIKE ''%'' AND enum_value = ''%'' AND fk_language = (SELECT id FROM ew.language WHERE code = ''%'');', 
		enum_type, enum_value, code, result_string, enum_type, enum_value, code, enum_type, enum_value, code;        
  END LOOP;
        RETURN true;

END;
$$  LANGUAGE plpgsql;

SELECT insert_wasp_enum_translator();
DROP FUNCTION IF EXISTS insert_wasp_enum_translator();