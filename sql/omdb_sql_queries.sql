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
SELECT movie_id, native_name, english_name
FROM   movies
WHERE  movies.native_name REGEXP "^(?=.*f)(?=.*z)";  