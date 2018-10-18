SELECT r.name, ts.transmission_mode_name, ts.id FROM ew.radiostation_setup_link AS l
LEFT JOIN ew.radiostation AS r ON l.fk_radiostation = r.id
LEFT JOIN ew.transmission_setup AS ts ON l.fk_setup = ts.id
ORDER BY  r.name, ts.transmission_mode_name