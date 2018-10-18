SELECT r.name, mt.modulation_code FROM ew.radiostation_modulation_type_link AS l
LEFT JOIN ew.radiostation AS r ON l.fk_radiostation = r.id
LEFT JOIN ew.modulation_type AS mt ON l.fk_modulation_type = mt.id
ORDER BY mt.modulation_code, r.name