--liquibase formatted sql
--changeset Andy:1.0.0 (splitStatements:false endDelimiter:;) dbms:postgresql,h2
--comment Creates a new functions in schema 'main'.

-- Function main.proc_timestamp
-- DROP FUNCTION IF EXISTS main.proc_timestamp();
CREATE OR REPLACE FUNCTION main.proc_timestamp()
  RETURNS trigger AS
$BODY$
BEGIN
  BEGIN
    IF (TG_OP = 'INSERT') THEN
      NEW.ts_created = CURRENT_TIMESTAMP;
      NEW.ts_changed = NULL;
    END IF;
    EXCEPTION WHEN others THEN
    RAISE NOTICE '% %', SQLERRM, SQLSTATE;
    RETURN NEW;
  END;

  BEGIN
    IF (TG_OP = 'UPDATE') THEN
      NEW.ts_created = OLD.ts_created;
      NEW.ts_changed = CURRENT_TIMESTAMP;
    END IF;
    EXCEPTION WHEN others THEN
    RAISE NOTICE '% %', SQLERRM, SQLSTATE;
    RETURN NEW;
  END;

  RETURN NEW;
END;
$BODY$
LANGUAGE plpgsql VOLATILE SECURITY DEFINER
COST 100;
COMMENT ON FUNCTION main.proc_timestamp() IS 'Function writes timestamps into a table.';
-- rollback DROP FUNCTION IF EXISTS main.proc_timestamp();

-- Function main.user_login
-- DROP FUNCTION IF EXISTS main.user_login(character varying, character varying);
CREATE OR REPLACE FUNCTION main.user_login(_email character varying, _password character varying)
  RETURNS boolean AS
$BODY$
DECLARE
  _result boolean;
  _valid boolean;
  _id_user integer;
  _hashedpass character varying;
  _log_type character varying;
  _log_category character varying;
  _message character varying;
BEGIN
  _log_type = 'SUCCESS';
  _log_category = 'LOGIN_USER';
  _message = 'User login "' || _email || '"';
  SELECT u.id, u.disabled, u.password INTO _id_user, _valid, _hashedpass FROM main.t_user AS u WHERE email = _email;

  IF (_id_user IS NULL) THEN
    _log_type = 'ERROR';
    _message = _message || ' was not found!';
    _result = false;
  END IF;

  IF (_password = _hashedpass) THEN
    IF (_valid = false) THEN
      _log_type = 'WARNING';
      _message = _message || ' had not valid user account!';
      _result = false;
    ELSEIF (_valid = true) THEN
      _log_type = 'SUCCESS';
      _message = _message || ' was logged successfully.';
      _result = true;
    END IF;
  ELSE
    _log_type = 'ERROR';
    _message = _message || ' password was not valid!';
    _result = false;
  END IF;

  INSERT INTO main.t_log (log_type, log_category, text_value, id_user_created) VALUES (_log_type, _log_category, _message, _id_user);

  RETURN _result;
END;
$BODY$
LANGUAGE plpgsql VOLATILE
COST 100;
COMMENT ON FUNCTION main.user_login(character varying, character varying) IS 'Function will log in a user based on a username and password.';
-- rollback FUNCTION IF EXISTS main.user_login(character varying, character varying);
