SELECT r.name, b.frequency FROM ew.bandwidth AS b
LEFT JOIN ew.radiostation AS r ON b.fk_radiostation = r.id