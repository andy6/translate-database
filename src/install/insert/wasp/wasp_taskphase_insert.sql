CREATE OR REPLACE FUNCTION insert_wasp_taskphase() 
RETURNS BOOLEAN AS $$

DECLARE 
  name character varying(128);
  category_name character varying(256);
  wasp_taskname character varying(256);
  taskphase_int integer;
  fk_report_category integer;
BEGIN
 
FOR name, category_name, wasp_taskname, taskphase_int, fk_report_category IN 
    SELECT taskphase.name, category.name, category.wasp_taskname, taskphase.taskphase, taskphase.fk_report_category
    FROM wasp.wasp_taskphase taskphase
	  LEFT JOIN wasp.report_category category ON category.id = taskphase.fk_report_category
	    ORDER BY taskphase.id
  LOOP
  RAISE notice '
INSERT INTO wasp.wasp_taskphase (fk_report_category, name, taskphase, deleted)
  SELECT 
  (SELECT id FROM wasp.report_category WHERE name LIKE ''%'' AND wasp_taskname = ''%''),
  ''%'', 
  %,
  false 
  WHERE NOT EXISTS (SELECT 1 FROM wasp.wasp_taskphase WHERE name LIKE ''%'' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE ''%'' AND wasp_taskname = ''%''));
--rollback DELETE FROM wasp.wasp_taskphase WHERE name LIKE ''%'' AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE ''%'' AND wasp_taskname = ''%'';',
		category_name, wasp_taskname, name, taskphase_int, name, category_name, wasp_taskname, name, category_name, wasp_taskname;
  END LOOP;
        RETURN true;

END;
$$  LANGUAGE plpgsql;

SELECT insert_wasp_taskphase();
DROP FUNCTION IF EXISTS insert_wasp_taskphase();