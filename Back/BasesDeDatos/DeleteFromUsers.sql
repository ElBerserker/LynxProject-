/*Coolaborators: Fatima_Azucena_Martinez_Cadena and Raul_Hernandez_Lopez_@Neo
 *Date: wednesday, december 29
 *Description: Delete from users table*/

DELIMITER //
CREATE OR REPLACE PROCEDURE DeleteFromUsers(in id VARCHAR(30))
BEGIN
	DELETE FROM users where user_id = id;
END //	
DELIMITER ;
