/*Coolaborators: Fatima_Azucena_Martinez_Cadena and Raul_Hernandez_Lopez_@Neo
 *Date: wednesday, december 29
 *Description: stored procedure for inserting data to the users table*/

DELIMITER //
CREATE OR REPLACE PROCEDURE AddAttributesForUsers (in USERID VARCHAR(30) ,in USERTYPE VARCHAR(30), in USERNAME VARCHAR(100), in PASSWORDUSSER VARCHAR(30), in STATUS VARCHAR(10))
BEGIN
	INSERT INTO users VALUES (USERID ,USERTYPE, USERNAME, PASSWORDUSSER, STATUS);				
END //
DELIMITER ;
