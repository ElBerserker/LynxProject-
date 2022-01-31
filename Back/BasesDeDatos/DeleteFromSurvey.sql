/*Coolaborators: Fatima_Azucena_Martinez_Cadena and Raul_Hernandez_Lopez_@Neo
 *Date: wednesday, december 29
 *Description: Delete from survey table*/

DELIMITER //
CREATE OR REPLACE PROCEDURE DeleteFromSurvey(in id VARCHAR(30))
BEGIN
	DELETE FROM survey where id_survey = id;
END //	
DELIMITER ;
