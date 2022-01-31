/*Coolaborators: Fatima_Azucena_Martinez_Cadena and Raul_Hernandez_Lopez_@Neo
 *Date: wednesday, december 29
 *Description: update table users*/

DELIMITER //
CREATE OR REPLACE PROCEDURE UpdateForUsers (in USERID VARCHAR(30) ,in USERTYPE VARCHAR(30), in USERNAME VARCHAR(100), in PASSWORDUSSER VARCHAR(30), in STATUS VARCHAR(10))
BEGIN
	UPDATE  users 	
	SET type_of_user = USERTYPE, name_of_user = USERNAME, password = PASSWORDUSSER, status = STATUS WHERE user_id = USERID;
END //
DELIMITER ;
