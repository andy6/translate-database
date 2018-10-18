SELECT r.name, fs
.frequency FROM ew.frequency_step AS fs
LEFT JOIN ew.radiostation AS r ON fs.fk_radiostation = r.id