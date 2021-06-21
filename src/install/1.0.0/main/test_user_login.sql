--liquibase formatted sql
--changeset Andy:tests (splitStatements:false endDelimiter:;) dbms:postgresql
--comment Creates test procedures on schema 'main'.

-- Tests on schema main.
DO $$
DECLARE
  _login_result boolean;
BEGIN
  -- user accounts
  INSERT INTO main.t_user (email, password, enabled)
    SELECT 'first@naentou.cz', 'pass', true
    WHERE NOT EXISTS (SELECT 1 FROM main.t_user WHERE email = 'first@naentou.cz');
  INSERT INTO main.t_user (email, password, enabled)
    SELECT 'second@naentou.cz', 'pass', true
    WHERE NOT EXISTS (SELECT 1 FROM main.t_user WHERE email LIKE 'second@naentou.cz');
  INSERT INTO main.t_user (email, password, enabled)
    SELECT 'third@naentou.cz', 'pass', false
    WHERE NOT EXISTS (SELECT 1 FROM main.t_user WHERE email LIKE 'third@naentou.cz');

  -- user groups
  INSERT INTO main.t_group (name, description)
    SELECT 'FirstGroup', 'description'
    WHERE NOT EXISTS (SELECT 1 FROM main.t_group WHERE lower(name) LIKE lower('FirstGroup'));
  INSERT INTO main.t_group (name, description)
    SELECT 'SecondGroup', 'description'
    WHERE NOT EXISTS (SELECT 1 FROM main.t_group WHERE lower(name) LIKE lower('SecondGroup'));

  -- linked table of user account and group
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




  -- login with correct user account
  SELECT user_login INTO _login_result FROM main.user_login('first@naentou.cz', 'pass');
  IF (NOT _login_result) THEN
    RAISE EXCEPTION 'TEST failed! User login with correct password is not logged in!';
  END IF;

  -- login with disabled user account
  SELECT user_login INTO _login_result FROM main.user_login('third@naentou.cz', 'pass');
  IF (_login_result) THEN
    RAISE EXCEPTION 'TEST failed! Disabled user account could be logged in!';
  END IF;
  
  -- login with incorrect password
  SELECT user_login INTO _login_result FROM main.user_login('first@naentou.cz', 'bad_pass');
  IF (_login_result) THEN
    RAISE EXCEPTION 'TEST failed! User login with bad password is logged in!';
  END IF;

  -- login with incorrect e-mail address
  SELECT * INTO _login_result FROM main.user_login('bad_email@naentou.cz', 'pass');
  IF (_login_result) THEN
    RAISE EXCEPTION 'TEST failed! User login with bad email address is logged in!';
  END IF;




  -- delete test data
  DELETE FROM main.t_user WHERE id = (SELECT id FROM main.t_user WHERE email='first@naentou.cz');
  DELETE FROM main.t_user WHERE id = (SELECT id FROM main.t_user WHERE email='second@naentou.cz');
  DELETE FROM main.t_user WHERE id = (SELECT id FROM main.t_user WHERE email='third@naentou.cz');
  DELETE FROM main.t_group WHERE id = (SELECT id FROM main.t_group WHERE name='FirstGroup');
  DELETE FROM main.t_group WHERE id = (SELECT id FROM main.t_group WHERE name='SecondGroup');

END$$;