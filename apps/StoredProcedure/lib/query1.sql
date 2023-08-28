CREATE PROCEDURE userCount (IN name  VARCHAR(255), OUT userCount int )
BEGIN 
  SELECT COUNT(*) INTO userCount from users
  WHERE fname = name;
END