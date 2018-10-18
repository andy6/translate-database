CREATE OR REPLACE FUNCTION insert_network_creation() 
RETURNS BOOLEAN AS $$

DECLARE 
  network_domain character varying(128);
  description character varying(128);
  composition_name character varying(128);
  display_name character varying(128);
  radiostation_name character varying(128);
  radiostation_digital boolean;
  transmission_mode_name character varying(128);
  transmission_digital boolean;
  equipment_user_name character varying(128);
  callsign_set_name character varying(128);
BEGIN
 
FOR network_domain, description, 
    composition_name, display_name, 
    radiostation_name, radiostation_digital,
	transmission_mode_name, transmission_digital, 
	equipment_user_name,
	callsign_set_name IN 
	
    SELECT creation.network_domain, creation.description, 
	actors.composition_name, actors.display_name, 
	radiostation.name, radiostation.digital,
	transmission_setup.transmission_mode_name, transmission_setup.digital,
	equipment_user.name, callsign_set.name
    FROM wasp.network_creation creation
	  LEFT JOIN wasp.wasp_actors actors ON actors.id = creation.fk_wasp_actors
	  LEFT JOIN ew.radiostation radiostation ON radiostation.id = creation.fk_radiostation
	  LEFT JOIN ew.transmission_setup transmission_setup ON transmission_setup.id = creation.fk_transmission_setup
	  LEFT JOIN wasp.equipment_user equipment_user ON equipment_user.id = creation.fk_equipment_user
	  LEFT JOIN wasp.callsign_set callsign_set ON callsign_set.id = creation.fk_callsign_set
	    ORDER BY creation.id
  LOOP
  RAISE notice '
INSERT INTO wasp.network_creation (network_domain, description, fk_wasp_actors, fk_radiostation, fk_transmission_setup, fk_equipment_user, fk_callsign_set, deleted)
  SELECT 
  ''%'',
  ''%'',
  (SELECT id FROM wasp.wasp_actors WHERE composition_name LIKE ''%'' AND display_name LIKE ''%''), 
  (SELECT id FROM ew.radiostation WHERE name LIKE ''%'' AND digital = ''%''), 
  (SELECT id FROM ew.transmission_setup WHERE transmission_mode_name LIKE ''%'' AND digital = ''%''), 
  (SELECT id FROM wasp.equipment_user WHERE name LIKE ''%''), 
  (SELECT id FROM wasp.callsign_set WHERE name LIKE ''%''),
  false
  WHERE NOT EXISTS (SELECT 1 FROM wasp.network_creation WHERE network_domain LIKE ''%'' AND fk_wasp_actors = (SELECT id FROM wasp.wasp_actors WHERE composition_name LIKE ''%'' AND display_name LIKE ''%''));
--rollback DELETE FROM wasp.network_creation WHERE network_domain LIKE ''%'';', 
		network_domain, description, 
		composition_name, display_name, 
		radiostation_name, radiostation_digital, 
		transmission_mode_name, transmission_digital,
		equipment_user_name, 
		callsign_set_name, 
		network_domain, composition_name, display_name, network_domain;
  END LOOP;
        RETURN true;

END;
$$  LANGUAGE plpgsql;

SELECT insert_network_creation();
DROP FUNCTION IF EXISTS insert_network_creation();