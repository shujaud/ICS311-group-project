--Shuja Uddin
--Procedure to process single row from mpr_test_data
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `process_mpr_single_row`(IN `nativename` VARCHAR(180), IN `yearmade` INT(4), IN `stagename` VARCHAR(30), IN `role_data` VARCHAR(20), IN `screenname` VARCHAR(30), OUT `execution_status` VARCHAR(100))
BEGIN
	DECLARE movie_count, person_count, case_number, movieid, peopleid, relation_count INT;
    
	SELECT COUNT(movies.native_name)
    INTO movie_count
	FROM movies 
	WHERE movies.native_name = nativename AND 
    	  movies.year_made = yearmade;
      
	SELECT COUNT(people.stage_name)
    INTO person_count
	FROM people 
	WHERE people.stage_name = stagename;

	SELECT
	CASE
		WHEN movie_count=1 AND person_count=1 THEN 1
    	WHEN movie_count=0 AND person_count=0 THEN 2
    	WHEN movie_count=1 AND person_count=0 THEN 3
    	WHEN movie_count=0 AND person_count=1 THEN 4
    	ELSE 5
	END
	INTO case_number;
    
    IF case_number = 1 THEN

        SELECT movies.movie_id
        INTO movieid
        FROM movies
        WHERE movies.native_name = nativename AND
      	      movies.year_made = yearmade;
        
        SELECT people.id
        INTO peopleid
        FROM people
        WHERE people.stage_name = stagename;
    	        
        SELECT COUNT(movie_people.movie_id)
        INTO relation_count
        FROM movie_people
        WHERE movieid = movie_people.movie_id AND peopleid = movie_people.people_id;
        
        IF relation_count > 0 THEN
        	SET execution_status = "M,P,R ignored; Data already exists";
        ELSE
        	INSERT INTO movie_people(movie_id, people_id, role)
            VALUES (movieid, peopleid, role_data);
        	SET execution_status = "M,P ignored: R created";
        END IF;
    
    ELSEIF case_number = 2 THEN
    	
        INSERT INTO `movies` (`movie_id`, `native_name`, `english_name`, `year_made`)
        VALUES (NULL, nativename, '', yearmade);
        
        SELECT movies.movie_id
        INTO movieid
        FROM movies
        WHERE movies.native_name = nativename AND
      	  	  movies.year_made = yearmade;
              
        INSERT INTO `people` (`id`, `stage_name`, `first_name`, `middle_name`, `last_name`, `gender`, `image_name`, `screen_name`)
        VALUES (NULL, stagename, '', '', '', '', '', screenname);
        
        SELECT people.id
    	INTO peopleid
    	FROM people
    	WHERE people.stage_name = stagename;
        
        INSERT INTO `movie_people` (`movie_people`.`movie_id`, `movie_people`.`people_id`, `movie_people`.`role`)
        VALUES (movieid, peopleid, role_data);
        
        SET execution_status = "M,P,R created";
    
    ELSEIF case_number = 3 THEN

        SELECT movies.movie_id
        INTO movieid
        FROM movies
        WHERE movies.native_name = nativename AND
      	      movies.year_made = yearmade;
    
    	INSERT INTO `people` (`id`, `stage_name`, `first_name`, `middle_name`, `last_name`, `gender`, `image_name`, `screen_name`)
        VALUES (NULL, stagename, '', '', '', '', '', screenname);
                
        SELECT people.id
    	INTO peopleid
    	FROM people
    	WHERE people.stage_name = stagename;
                
        INSERT INTO `movie_people` (`movie_people`.`movie_id`, `movie_people`.`people_id`, `movie_people`.`role`)
        VALUES (movieid, peopleid, role_data);
                
        SET execution_status = "M ignored; P,R created";
    
    ELSEIF case_number = 4 THEN
                
    	INSERT INTO `movies` (`movie_id`, `native_name`, `english_name`, `year_made`)
        VALUES (NULL, nativename, '', yearmade);
        
        SELECT movies.movie_id
        INTO movieid
        FROM movies
        WHERE movies.native_name = nativename AND
      	  	  movies.year_made = yearmade;

        SELECT people.id
    	INTO peopleid
    	FROM people
    	WHERE people.stage_name = stagename;
        
        INSERT INTO `movie_people` (`movie_people`.`movie_id`, `movie_people`.`people_id`, `movie_people`.`role`)
        VALUES (movieid, peopleid, role_data);

        SET execution_status = "P ignored; M, R created";
    
    ELSE
    	SET execution_status = "M,P,R ignored; Unique tuple can not be identified";
    END IF;
END$$
DELIMITER ;


-- Script requires for the procedure to already be created
SET @id := 1;

SELECT @name := native_name, 
       @year := year_made,
       @stage_name := stage_name,
       @role := role,
       @screen_name := screen_name
FROM mpr_test_data 
WHERE id=@id;

CALL process_mpr_single_row(@name, @year, @stage_name, @role, @screen_name, @execution_status);

UPDATE `mpr_test_data` SET `execution_status` = @execution_status WHERE `mpr_test_data`.`id` = @id;

SELECT *
FROM mpr_test_data
WHERE id=@id;