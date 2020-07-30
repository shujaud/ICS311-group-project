-- Query 7.33 - All tables from 'movies' perspective - by Shuja Uddin
SELECT *
FROM   (SELECT *
        FROM   (SELECT *
                FROM   (SELECT *
                        FROM   (SELECT *
                                FROM   (SELECT *
                                        FROM   movies
                                               LEFT OUTER JOIN movie_data using(
                                               movie_id)) AS
                                       data
                                       LEFT OUTER JOIN (SELECT
                                       movie_id,
                                       Count(trivia) AS trivia_count
                                                        FROM   movie_trivia
                                                        GROUP  BY movie_id) AS
                                                       trivia
                                       using(
                                       movie_id))
                               AS
                               data_trivia
                               LEFT OUTER JOIN (SELECT
                               movie_id,
                               Count(keyword) AS keyword_count
                                                FROM   movie_keywords
                                                GROUP  BY movie_id) AS keywords
                               using(
                               movie_id)
                       ) AS
                       data_trivia_keywords
                       LEFT OUTER JOIN (SELECT movie_id,
                                               Count(movie_media_id) AS
                                               media_count
                                        FROM   movie_media
                                        GROUP  BY movie_id) AS media using(
                       movie_id))
               AS
               data_trivia_keywords_media
               LEFT OUTER JOIN (SELECT movie_id,
                                       Count(song_id) AS song_count
                                FROM   movie_song
                                GROUP  BY movie_id) AS song using(movie_id)) AS
       data_trivia_keywords_media_song
       LEFT OUTER JOIN (SELECT movie_id,
                               Count(people_id) AS people_count
                        FROM   movie_people
                        GROUP  BY movie_id) AS peoples using(movie_id);  

-- Query 7.35 - Gives the list of all movies containing a set of characters in the native name - by Shuja Uddin
SELECT *
FROM   movies
WHERE  movies.native_name REGEXP "^(?=.*f)(?=.*z)";
-- Query for "movie_view" which details all movie information - by Shuja Uddin
CREATE VIEW movie_view AS
SELECT movies.movie_id, native_name, country, language, running_time, GROUP_CONCAT(DISTINCT keyword SEPARATOR ', ') AS keywords, GROUP_CONCAT(DISTINCT trivia SEPARATOR ', ') AS trivia, GROUP_CONCAT(DISTINCT movie_media_id SEPARATOR ', ') AS media, GROUP_CONCAT(DISTINCT song_id SEPARATOR ', ') AS songs, GROUP_CONCAT(DISTINCT anagram SEPARATOR ', ') AS anagrams
FROM movies
      LEFT OUTER JOIN movie_data ON movies.movie_id = movie_data.movie_id
     LEFT OUTER JOIN movie_numbers ON movies.movie_id = movie_numbers.movie_id
     LEFT OUTER JOIN movie_keywords ON movies.movie_id = movie_keywords.movie_id
     LEFT OUTER JOIN movie_trivia ON movies.movie_id = movie_trivia.movie_id
     LEFT OUTER JOIN movie_media ON movies.movie_id = movie_media.movie_id
     LEFT OUTER JOIN movie_song ON movies.movie_id = movie_song.movie_id
     LEFT OUTER JOIN movie_anagrams ON movies.movie_id = movie_anagrams.movie_id
GROUP BY movies.movie_id

-- Query for "people_view" which details all people information - by Shuja Uddin
CREATE VIEW people_view AS
SELECT people.id, REPLACE(CONCAT(first_name, ' ', middle_name, ' ', last_name), '  ', ' ') AS name, screen_name, GROUP_CONCAT(DISTINCT people_trivia_name SEPARATOR ', ') AS trivia, GROUP_CONCAT(DISTINCT movies ORDER BY moviepeople.movie_id ASC SEPARATOR ', ') AS movies, movie_roles, GROUP_CONCAT(DISTINCT title ORDER BY songpeople.song_id ASC SEPARATOR ', ') AS songs, song_roles
FROM people
      LEFT OUTER JOIN people_trivia ON people.id = people_trivia.people_id
     LEFT OUTER JOIN (SELECT people_id, movie_id, CONCAT(native_name, ' (', english_name, ') ', year_made) AS movies FROM movies INNER JOIN movie_people USING(movie_id)) AS moviepeople ON people.id = moviepeople.people_id
     LEFT OUTER JOIN (SELECT movie_id, people_id, GROUP_CONCAT(role ORDER BY movie_id SEPARATOR ', ') AS movie_roles FROM `movie_people` GROUP BY people_id) AS movieroles ON people.id = movieroles.people_id
     LEFT OUTER JOIN (SELECT people_id, song_id, title FROM songs INNER JOIN song_people USING(song_id)) AS songpeople ON people.id = songpeople.people_id
     LEFT OUTER JOIN (SELECT song_id, people_id, GROUP_CONCAT(role ORDER BY song_id SEPARATOR ', ') AS song_roles FROM `song_people` GROUP BY people_id) AS songroles ON people.id = songroles.people_id
GROUP BY people.id

-- Query for "song_view" which details all song information - by Shuja Uddin
CREATE VIEW song_view AS
SELECT songs.song_id, title, GROUP_CONCAT(DISTINCT song_media_id SEPARATOR ', ') AS media, GROUP_CONCAT(DISTINCT name ORDER BY people_id SEPARATOR ', ') AS people, GROUP_CONCAT(role ORDER BY people_id SEPARATOR ', ') AS roles, GROUP_CONCAT(DISTINCT movie ORDER BY movie_id SEPARATOR ', ') AS movies
FROM songs
      LEFT OUTER JOIN song_media ON songs.song_id = song_media.song_id
     LEFT OUTER JOIN (SELECT people_id, song_id, REPLACE(CONCAT(first_name, ' ', middle_name, ' ', last_name), '  ', ' ') AS name, role FROM `people` INNER JOIN song_people ON people.id = song_people.people_id ORDER BY people_id) AS songpeople ON songs.song_id = songpeople.song_id
     LEFT OUTER JOIN (SELECT movie_id, CONCAT(native_name, ' (', english_name, ') ', year_made) AS movie, song_id FROM movies INNER JOIN movie_song USING(movie_id)) AS songmovie ON songs.song_id = songmovie.song_id
GROUP BY songs.song_id
-- Constraints for table `movie_anagrams`
--
ALTER TABLE `movie_anagrams`
  ADD CONSTRAINT `movie_anagrams_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_data`
--
ALTER TABLE `movie_data`
  ADD CONSTRAINT `movie_data_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_keywords`
--
ALTER TABLE `movie_keywords`
  ADD CONSTRAINT `movie_keywords_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_media`
--
ALTER TABLE `movie_media`
  ADD CONSTRAINT `movie_media_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_numbers`
--
ALTER TABLE `movie_numbers`
  ADD CONSTRAINT `movie_numbers_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_people`
--
ALTER TABLE `movie_people`
  ADD CONSTRAINT `movie_people_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_people_ibfk_2` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_quotes`
--
ALTER TABLE `movie_quotes`
  ADD CONSTRAINT `movie_quotes_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_song`
--
ALTER TABLE `movie_song`
  ADD CONSTRAINT `movie_song_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_song_ibfk_2` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `movie_trivia`
--
ALTER TABLE `movie_trivia`
  ADD CONSTRAINT `movie_trivia_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `people_trivia`
--
ALTER TABLE `people_trivia`
  ADD CONSTRAINT `people_trivia_ibfk_1` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `song_keywords`
--
ALTER TABLE `song_keywords`
  ADD CONSTRAINT `song_keywords_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `song_media`
--
ALTER TABLE `song_media`
  ADD CONSTRAINT `song_media_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `song_people`
--
ALTER TABLE `song_people`
  ADD CONSTRAINT `song_people_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `song_people_ibfk_2` FOREIGN KEY (`people_id`) REFERENCES `people` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `song_trivia`
--
ALTER TABLE `song_trivia`
  ADD CONSTRAINT `song_trivia_ibfk_1` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`) ON DELETE CASCADE ON UPDATE CASCADE;
--Insert statements to test FK constraints and cascading deletions for iteration 9 - by Shuja Uddin
INSERT INTO `movies` (`movie_id`, `native_name`, `english_name`, `year_made`) VALUES (1021, 'Alien', 'Alien', '1979');

INSERT INTO `movie_anagrams` (`movie_id`, `anagram`) VALUES ('1021', 'Aline'), ('1021', 'Anile'), ('1021', 'Elain'), ('1021', 'Elian'), ('1021', 'Laine'), ('1021', 'Linea');

INSERT INTO `movie_data` (`movie_id`, `language`, `country`, `genre`, `plot`) VALUES ('1021', 'English', 'USA', 'Horror', 'In the distant future, the crew of the commercial spaceship Nostromo are on their way home when they pick up a distress call from a distant moon. The crew are under obligation to investigate and the spaceship descends on the moon afterwards. After a rough landing, three crew members leave the spaceship to explore the area on the moon. At the same time as they discover a hive colony of some unknown creature, the ship\'s computer deciphers the message to be a warning, not a distress call. When one of the eggs is disturbed, the crew realizes that they are not alone on the spaceship and they must deal with the consequences.');

INSERT INTO `movie_keywords` (`movie_id`, `keyword`) VALUES ('1021', 'alien'), ('1021', 'spaceship'), ('1021', 'outer space'), ('1021', 'creature'), ('1021', 'trapped');

INSERT INTO `movie_media` (`movie_media_id`, `m_link`, `m_link_type`, `movie_id`) VALUES (NULL, 'https://m.media-amazon.com/images/M/MV5BZjNhNDNiNWMtMGU4NS00OGVkLWE0YWMtOTU4ZWUyNGU5N2ZjXkEyXkFqcGdeQXVyNTU1NTcwOTk@._V1_.jpg', 'poster', '1021'), (NULL, 'https://m.media-amazon.com/images/M/MV5BNjIyODEzYTItZjY3Ny00MDRkLWEyMTQtNGUxOGM2ODdmYjRkXkEyXkFqcGdeQXVyMjk3NTUyOTc@._V1_SX1777_CR0,0,1777,999_AL_.jpg', 'photo', '1021'), (NULL, 'https://www.youtube.com/watch?v=LjLamj-b0I8', 'video', '1021');

INSERT INTO `movie_numbers` (`movie_id`, `running_time`, `length`, `strength`, `weight`, `budget`, `box_office`) VALUES ('1021', '117', '10', '11', '12', '11000000', '108108079');

INSERT INTO `movie_quotes` (`movie_id`, `movie_quote_id`, `movie_quote_name`) VALUES ('1021', NULL, 'You still don\'t understand what you\'re dealing with, do you? The perfect organism. Its structural perfection is matched only by its hostility.'), ('1021', NULL, 'How do we kill it, Ash? There\'s gotta be a way of killing it. How? How do we do it?');

INSERT INTO `movie_trivia` (`movie_id`, `trivia`) VALUES ('1021', 'The dead facehugger that Ash autopsies was made using fresh shellfish, four oysters, and a sheep kidney to re-create the internal organs.'), ('1021', 'Shredded condoms were used to create tendons of the beast\'s ferocious jaws.');

INSERT INTO `people` (`id`, `first_name`, `middle_name`, `last_name`, `gender`, `image_name`, `screen_name`) VALUES (102, 'Wolfgang', 'Amadeus', 'Mozart', 'Male', 'wolfgang_mozart.jpg', '');

INSERT INTO `people_trivia` (`people_id`, `people_trivia_id`, `people_trivia_name`) VALUES ('102', NULL, 'Mozart’s nickname was “Wolfie.”'), ('102', NULL, 'Mozart could write music before he could write words.');

INSERT INTO `songs` (`song_id`, `title`, `lyrics`) VALUES (7, 'Eine kleine Nachtmusik', NULL);

INSERT INTO `song_keywords` (`song_id`, `keyword`) VALUES ('7', 'allegro'), ('7', 'romanze'), ('7', 'menuetto'), ('7', 'rondo');

INSERT INTO `song_media` (`song_media_id`, `song_id`, `s_link`, `s_link_type`) VALUES (NULL, '7', 'https://www.youtube.com/watch?v=oy2zDJPIgwc', 'video');

INSERT INTO `song_trivia` (`song_id`, `song_trivia_id`, `song_trivia_name`) VALUES ('7', NULL, 'Today, the serenade is widely performed and recorded; indeed, both Jacobson and Hildesheimer opine that the serenade is the most popular of all Mozart\'s works.'), ('7', NULL, 'The serenade was completed in Vienna on 10 August 1787,[2] around the time Mozart was working on the second act of his opera Don Giovanni.');
