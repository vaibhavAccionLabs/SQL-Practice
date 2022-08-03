CREATE DEFINER=`root`@`localhost` PROCEDURE `getUsers`(IN fName VARCHAR(200), IN lName VARCHAR(200), IN Address TEXT)
BEGIN
INSERT INTO users (first_name, last_name, address) VALUES
(fName, lName, Address);
SELECT * FROM users;
END