CREATE OR REPLACE FUNCTION insert_wasp_report_category() 
RETURNS BOOLEAN AS $$

DECLARE 
  name character varying(128);
  wasp_taskname character varying(256);
BEGIN
 
FOR name, wasp_taskname IN 
    SELECT report_category.name, report_category.wasp_taskname
    FROM wasp.report_category report_category
	 ORDER BY report_category.id
  LOOP
  RAISE notice '
INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT ''%'', ''%'', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE ''%'' AND wasp_taskname LIKE ''%'');
--rollback DELETE FROM wasp.report_category WHERE name LIKE ''%'' AND wasp_taskname LIKE ''%'';', 
		name, wasp_taskname, name, wasp_taskname, name, wasp_taskname;
  END LOOP;
        RETURN true;

END;
$$  LANGUAGE plpgsql;

SELECT insert_wasp_report_category();
DROP FUNCTION IF EXISTS insert_wasp_report_category();