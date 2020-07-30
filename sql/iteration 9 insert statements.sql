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