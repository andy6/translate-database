CREATE OR REPLACE FUNCTION insert_wasp_report() 
RETURNS BOOLEAN AS $$

DECLARE 
  report_name character varying(128);
  report_fk_language integer;
  language_code character varying(3);
  category_name character varying(128);
  report_category_name character varying(128);
  wasp_taskname character varying(128);
  sentence character varying(384);
  wasp_taskphase character varying(128);
  fk_report_category integer;
  taskphase integer;
BEGIN
 
FOR report_name, report_fk_language, language_code, category_name, report_category_name, wasp_taskname, wasp_taskphase, sentence, taskphase IN 
    SELECT report.name, report.fk_language, language.code, category.name, report_category.name, report_category.wasp_taskname, taskphase.name, report.sentence, taskphase.taskphase
    FROM wasp.report report 
	 LEFT JOIN ew.language "language" ON language.id = report.fk_language
	 LEFT JOIN wasp.category "category" ON category.id = report.fk_category
	 LEFT JOIN wasp.report_category "report_category" ON report_category.id = report.fk_report_category
	 LEFT JOIN wasp.wasp_taskphase "taskphase" ON report.fk_wasp_taskphase = taskphase.id
	 ORDER BY report.id
  LOOP
  RAISE notice '
INSERT INTO wasp.report (name, fk_language, fk_category, fk_report_category, fk_wasp_taskphase, sentence, deleted)
		 SELECT ''%'', 
		(SELECT id FROM ew.language WHERE code = ''%''), 
		(SELECT id FROM wasp.category WHERE name = ''%''),
		(SELECT id FROM wasp.report_category WHERE name LIKE ''%'' AND wasp_taskname LIKE ''%''),
		(SELECT COALESCE((SELECT id FROM wasp.wasp_taskphase WHERE name LIKE ''%'' AND taskphase = % AND fk_report_category = (SELECT id FROM wasp.report_category WHERE name LIKE ''%'' AND wasp_taskname LIKE ''%'')), (SELECT id FROM wasp.wasp_taskphase WHERE name LIKE ''%''))),
		''%'',
		false 
		WHERE NOT EXISTS (SELECT 1 FROM wasp.report WHERE name LIKE ''%''); 
		--rollback DELETE FROM wasp.report WHERE name LIKE ''%'';
		
--rollback UPDATE wasp.report SET fk_wasp_taskphase = (SELECT taskphase FROM wasp.wasp_taskphase WHERE name LIKE ''%'');', 
		report_name, language_code, category_name, report_category_name, wasp_taskname,  wasp_taskphase, taskphase, report_category_name, wasp_taskname, wasp_taskphase, sentence, report_name, report_name, wasp_taskphase;
  END LOOP;
        RETURN true;

END;
$$  LANGUAGE plpgsql;

SELECT insert_wasp_report();
DROP FUNCTION IF EXISTS insert_wasp_report();