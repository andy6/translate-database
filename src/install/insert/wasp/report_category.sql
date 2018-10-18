--liquibase formatted sql
--changeset Andy:1.0.5.1 (splitStatements:false endDelimiter:;)
--comment Adding data to table wasp.report_category.


INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'Stop', 'behavior/Movement/Stop', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname LIKE 'behavior/Movement/Stop');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'Stop' AND wasp_taskname LIKE 'behavior/Movement/Stop';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'ConnectionChecker', 'behavior/ElectronicWarfare/ConnectionChecker', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ConnectionChecker');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'ConnectionChecker' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ConnectionChecker';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'DismountFrom', 'behavior/Movement/dismountFrom', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'DismountFrom' AND wasp_taskname LIKE 'behavior/Movement/dismountFrom';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'MountTo', 'behavior/Movement/mountTo', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'MountTo' AND wasp_taskname LIKE 'behavior/Movement/mountTo';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'ChangeFormation', 'behavior/Movement/changeFormation', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'ChangeFormation' AND wasp_taskname LIKE 'behavior/Movement/changeFormation';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'HitchUp', 'behavior/Movement/hitchUp', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'HitchUp' AND wasp_taskname LIKE 'behavior/Movement/hitchUp';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'Unhitch', 'behavior/Movement/unhitch', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'Unhitch' AND wasp_taskname LIKE 'behavior/Movement/unhitch';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'SetFirePermission', 'behavior/Warfare/setFirePermission', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname LIKE 'behavior/Warfare/setFirePermission');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'SetFirePermission' AND wasp_taskname LIKE 'behavior/Warfare/setFirePermission';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'GroundMoveTo', 'behavior/Movement/groundMoveTo', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'GroundMoveTo' AND wasp_taskname LIKE 'behavior/Movement/groundMoveTo';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'ShotOnTarget', 'behavior/Warfare/ShotOnTarget', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnTarget');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'ShotOnTarget' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnTarget';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'ShotOnPoint', 'behavior/Warfare/ShotOnPoint', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnPoint');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'ShotOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ShotOnPoint';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'IndirectFireAttack', 'behavior/Warfare/indirectFireAttack', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'IndirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/indirectFireAttack';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'DirectFireAttack', 'behavior/Warfare/directFireAttack', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'DirectFireAttack' AND wasp_taskname LIKE 'behavior/Warfare/directFireAttack';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'ObserveOnPoint', 'behavior/Warfare/ObserveOnPoint', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ObserveOnPoint');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'ObserveOnPoint' AND wasp_taskname LIKE 'behavior/Warfare/ObserveOnPoint';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'ObserveAfterRoute', 'behavior/Warfare/ObserveAfterRoute', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname LIKE 'behavior/Warfare/ObserveAfterRoute');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'ObserveAfterRoute' AND wasp_taskname LIKE 'behavior/Warfare/ObserveAfterRoute';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'AreaDemarcation', 'behavior/Movement/areaDemarcation', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'AreaDemarcation' AND wasp_taskname LIKE 'behavior/Movement/areaDemarcation';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'TransferSuplies', 'behavior/Movement/TransferSuplies', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'TransferSuplies' AND wasp_taskname LIKE 'behavior/Movement/TransferSuplies';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'FollowUpEntity', 'behavior/Movement/followUpEntity', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'FollowUpEntity' AND wasp_taskname LIKE 'behavior/Movement/followUpEntity');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'FollowUpEntity' AND wasp_taskname LIKE 'behavior/Movement/followUpEntity';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'TakeDefensivePosition', 'behavior/Warfare/TakeDefensivePosition', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'TakeDefensivePosition' AND wasp_taskname LIKE 'behavior/Warfare/TakeDefensivePosition';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'AttachToUnit', 'behavior/AttachToUnit', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'AttachToUnit' AND wasp_taskname LIKE 'behavior/AttachToUnit');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'AttachToUnit' AND wasp_taskname LIKE 'behavior/AttachToUnit';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'DetachFromUnit', 'behavior/DetachFromUnit', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'DetachFromUnit' AND wasp_taskname LIKE 'behavior/DetachFromUnit');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'DetachFromUnit' AND wasp_taskname LIKE 'behavior/DetachFromUnit';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'WeatherRadioEmission', 'behavior/Warfare/WeatherRadioEmissionComposition', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'WeatherRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/WeatherRadioEmissionComposition');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'WeatherRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/WeatherRadioEmissionComposition';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'JammerStart', 'behavior/ElectronicWarfare/JammerStart', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'JammerStart' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/JammerStart');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'JammerStart' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/JammerStart';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'GeneralRadioEmission', 'behavior/Warfare/GeneralRadioEmissionComposition', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'GeneralRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/GeneralRadioEmissionComposition');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'GeneralRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/GeneralRadioEmissionComposition';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'ChangeChannel', 'behavior/ElectronicWarfare/ChangeChannel', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'ChangeChannel' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ChangeChannel';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'FlightPreparation', 'behavior/Movement/airFlightPreparation', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'FlightPreparation' AND wasp_taskname LIKE 'behavior/Movement/airFlightPreparation';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'Takeoff', 'behavior/Movement/airTakeoff', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'Takeoff' AND wasp_taskname LIKE 'behavior/Movement/airTakeoff';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'Land', 'behavior/Movement/airLand', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'Land' AND wasp_taskname LIKE 'behavior/Movement/airLand';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'AirMoveTo', 'behavior/Movement/airMoveTo', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'AirMoveTo' AND wasp_taskname LIKE 'behavior/Movement/airMoveTo';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'GuidingAircraftByIC', 'behavior/Warfare/GuidingAircraftByIC', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'GuidingAircraftByIC' AND wasp_taskname LIKE 'behavior/Warfare/GuidingAircraftByIC';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'UAVExploration', 'behavior/Movement/uavExploration', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'UAVExploration' AND wasp_taskname LIKE 'behavior/Movement/uavExploration');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'UAVExploration' AND wasp_taskname LIKE 'behavior/Movement/uavExploration';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'CommTestQuery', 'behavior/ElectronicWarfare/CommunicationTestComposition', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'CommTestQuery' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/CommunicationTestComposition');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'CommTestQuery' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/CommunicationTestComposition';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'SitrepRadioEmission', 'behavior/Warfare/SitrepRadioEmissionComposition', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'SitrepRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SitrepRadioEmissionComposition');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'SitrepRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SitrepRadioEmissionComposition';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'MedevacRadioEmission', 'behavior/Warfare/MedevacRadioEmissionComposition', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'MedevacRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/MedevacRadioEmissionComposition');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'MedevacRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/MedevacRadioEmissionComposition';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'SaluteRadioEmission', 'behavior/Warfare/SaluteRadioEmissionComposition', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'SaluteRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SaluteRadioEmissionComposition');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'SaluteRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/SaluteRadioEmissionComposition';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'ContactRadioEmission', 'behavior/Warfare/ContactRadioEmissionComposition', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'ContactRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/ContactRadioEmissionComposition');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'ContactRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/ContactRadioEmissionComposition';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'EnemySpotted', 'EnemySpottedEvaluator', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'EnemySpotted' AND wasp_taskname LIKE 'EnemySpottedEvaluator');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'EnemySpotted' AND wasp_taskname LIKE 'EnemySpottedEvaluator';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'StrangerSpotted', 'StrangerSpottedEvaluator', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'StrangerSpotted' AND wasp_taskname LIKE 'StrangerSpottedEvaluator');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'StrangerSpotted' AND wasp_taskname LIKE 'StrangerSpottedEvaluator';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'EnemyKilled', 'EnemyKilledEvaluator', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'EnemyKilled' AND wasp_taskname LIKE 'EnemyKilledEvaluator');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'EnemyKilled' AND wasp_taskname LIKE 'EnemyKilledEvaluator';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'FriendKilled', 'FriendKilledEvaluator', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'FriendKilled' AND wasp_taskname LIKE 'FriendKilledEvaluator');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'FriendKilled' AND wasp_taskname LIKE 'FriendKilledEvaluator';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'Munition', 'MunitionEvaluator', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'Munition' AND wasp_taskname LIKE 'MunitionEvaluator');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'Munition' AND wasp_taskname LIKE 'MunitionEvaluator';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'Fuel', 'FuelEvaluator', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'Fuel' AND wasp_taskname LIKE 'FuelEvaluator');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'Fuel' AND wasp_taskname LIKE 'FuelEvaluator';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'DirectDetonation', 'DirectDetonationEvaluator', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'DirectDetonation' AND wasp_taskname LIKE 'DirectDetonationEvaluator');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'DirectDetonation' AND wasp_taskname LIKE 'DirectDetonationEvaluator';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'IndirectDetonation', 'IndirectDetonationEvaluator', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'IndirectDetonation' AND wasp_taskname LIKE 'IndirectDetonationEvaluator');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'IndirectDetonation' AND wasp_taskname LIKE 'IndirectDetonationEvaluator';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'SelfDamage', 'SelfDamageEvaluator', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'SelfDamage' AND wasp_taskname LIKE 'SelfDamageEvaluator');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'SelfDamage' AND wasp_taskname LIKE 'SelfDamageEvaluator';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'AirportControlTower', 'AirportControlTowerEvaluator', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'AirportControlTower' AND wasp_taskname LIKE 'AirportControlTowerEvaluator';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'AirTrafficControl', 'AirTrafficControlEvaluator', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'AirTrafficControl' AND wasp_taskname LIKE 'AirTrafficControlEvaluator';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'JTAC', 'JTACEvaluator', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname LIKE 'JTACEvaluator');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'JTAC' AND wasp_taskname LIKE 'JTACEvaluator';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'UAVControl', 'UAVControlEvaluator', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'UAVControl' AND wasp_taskname LIKE 'UAVControlEvaluator');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'UAVControl' AND wasp_taskname LIKE 'UAVControlEvaluator';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'SpecialReport', 'ACK', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'ACK');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'ACK';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'SpecialReport', 'END', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'END');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'END';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'SpecialReport', 'ROGER', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'ROGER');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'SpecialReport' AND wasp_taskname LIKE 'ROGER';


--liquibase formatted sql
--changeset Andy:1.0.5.2 (splitStatements:false endDelimiter:;)
--comment Adding data to table wasp.report_category.

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'Retreat', 'behavior/Movement/Retreat', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'Retreat' AND wasp_taskname LIKE 'behavior/Movement/Retreat';

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'CivilRadioEmission', 'behavior/Warfare/CivilRadioEmissionComposition', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'CivilRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/CivilRadioEmissionComposition');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'CivilRadioEmission' AND wasp_taskname LIKE 'behavior/Warfare/CivilRadioEmissionComposition';

--liquibase formatted sql
--changeset Andy:1.0.5.3 (splitStatements:false endDelimiter:;)
--comment Adding data to table wasp.report_category.

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'ResponsiveJammerStart', 'behavior/ElectronicWarfare/ResponsiveJammerStart', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'ResponsiveJammerStart' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ResponsiveJammerStart');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'ResponsiveJammerStart' AND wasp_taskname LIKE 'behavior/ElectronicWarfare/ResponsiveJammerStart';


--liquibase formatted sql
--changeset Andy:1.0.5.4 (splitStatements:false endDelimiter:;)
--comment Adding data to table wasp.report_category.

INSERT INTO wasp.report_category (name, wasp_taskname, deleted)
  SELECT 'FollowEntity', 'behavior/Movement/followEntity', false WHERE NOT EXISTS (SELECT 1 FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity');
--rollback DELETE FROM wasp.report_category WHERE name LIKE 'FollowEntity' AND wasp_taskname LIKE 'behavior/Movement/followEntity';


