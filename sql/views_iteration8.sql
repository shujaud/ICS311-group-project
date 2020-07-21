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