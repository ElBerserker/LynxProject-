/*Coolaborators: Fatima_Azucena_Martinez_Cadena and Raul_Hernandez_Lopez_@Neo
 *Date: wednesday, december 29
 *Description: update tlable survey*/

DELIMITER //
CREATE OR REPLACE PROCEDURE UpdateForSurvey (in SURVEYID VARCHAR(30), in LEVELOFSATISFACTION INT(1), in COMENTS VARCHAR(120), FOLIOTICKET VARCHAR(30))
BEGIN
	UPDATE survey
        SET date_and_time  = CURRENT_TIMESTAMP, level_of_satisfaction = LEVELOFSATISFACTION, coment = COMENTS, folio_ticket = FOLIOTICKET WHERE id_survey = SURVEYID;
END //
DELIMITER ;

