-- a SQL script that creates a trigger that resets the attribute
-- valid_email only when the email has been changed

DELIMETER //
CREATE TRIGGER valid_email
BEFORE UPDATE ON user
FOR EACH ROW
BEGIN
	IF OLD.email != NEW.email THEN
		SET NEW.valid_email = 0;
	END IF;
END;
//
DELIMETER ;