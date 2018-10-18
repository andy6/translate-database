SELECT r.name, l.name, c.name, rc.name, r.sentence
FROM wasp.report r
LEFT JOIN ew.language l ON l.id=r.fk_language
LEFT JOIN wasp.category c ON c.id=r.fk_category
LEFT JOIN wasp.report_category rc ON rc.id=r.fk_report_category
ORDER BY r.name, l.name, c.name, rc.name, r.sentence