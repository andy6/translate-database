--liquibase formatted sql
--changeset Andy:tests (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Creates test functions on schema 'main'.

-- Tests on schema main.
DO $$
DECLARE
  _login_result boolean;
BEGIN
  INSERT INTO main.t_user (sso_id, email, password)
  SELECT '11', 'first@naentou.cz', 'pass'
  WHERE NOT EXISTS (SELECT 1 FROM main.t_user WHERE email = 'first@naentou.cz');
  INSERT INTO main.t_user (sso_id, email, password, disabled)
  SELECT '12', 'second@naentou.cz', 'pass', false
  WHERE NOT EXISTS (SELECT 1 FROM main.t_user WHERE email LIKE 'second@naentou.cz');
  INSERT INTO main.t_user (sso_id, email, password, disabled)
  SELECT '13', 'third@naentou.cz', 'pass', true
  WHERE NOT EXISTS (SELECT 1 FROM main.t_user WHERE email LIKE 'third@naentou.cz');

  INSERT INTO main.t_group (name, description)
  SELECT 'FirstGroup', 'description'
  WHERE NOT EXISTS (SELECT 1 FROM main.t_group WHERE lower(name) LIKE lower('FirstGroup'));
  INSERT INTO main.t_group (name, description)
  SELECT 'SecondGroup', 'description'
  WHERE NOT EXISTS (SELECT 1 FROM main.t_group WHERE lower(name) LIKE lower('SecondGroup'));

  INSERT INTO main.t_user_group (id_user, id_group)
  SELECT (SELECT id FROM main.t_user WHERE email='first@naentou.cz'), (SELECT id FROM main.t_group WHERE name='FirstGroup')
  WHERE NOT EXISTS (SELECT 1 FROM main.t_user_group WHERE
      id_user = (SELECT id FROM main.t_user WHERE email='first@naentou.cz') AND
      id_group = (SELECT id FROM main.t_group WHERE name='FirstGroup'));
  INSERT INTO main.t_user_group (id_user, id_group)
  SELECT (SELECT id FROM main.t_user WHERE email='second@naentou.cz'), (SELECT id FROM main.t_group WHERE name='SecondGroup')
  WHERE NOT EXISTS (SELECT 1 FROM main.t_user_group WHERE
      id_user = (SELECT id FROM main.t_user WHERE email='second@naentou.cz') AND
      id_group = (SELECT id FROM main.t_group WHERE name='SecondGroup'));

  --DELETE FROM main.t_user WHERE id = (SELECT id FROM main.t_user WHERE email='first@naentou.cz');
  --DELETE FROM main.t_group WHERE id = (SELECT id FROM main.t_group WHERE name='SecondGroup');


  -- bad password test
  SELECT * INTO _login_result FROM main.user_login('third@naentou.cz', 'bad_pass');
  IF (_login_result) THEN
    RAISE EXCEPTION 'TEST failed! User login with bad password!';
  END IF;

  -- bad email test
  SELECT * INTO _login_result FROM main.user_login('bad_email@naentou.cz', 'pass');
  IF (_login_result) THEN
    RAISE EXCEPTION 'TEST failed! User login with bad email address!';
  END IF;

END$$;