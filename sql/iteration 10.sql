--Initial SQL Query 1
SELECT COUNT(movie_id)
FROM `movies`
WHERE `movies`.`year_made` = 1994;


/* Initial EXPLAIN statement:
id 	select_type 	table 	type 	possible_keys 	key 	key_len 	ref 	rows 	Extra 	
1 	SIMPLE 	        movies 	ALL 	NULL 	        NULL 	NULL 	    NULL 	130005 	Using where*/

-- I indexed year_made and added LIMIT 1 to the query for optimization, the new query is provided below:
SELECT COUNT(movie_id)
FROM `movies`
WHERE `movies`.`year_made` = 1994
LIMIT 1;

/* Optimized EXPLAIN statement:
id 	select_type 	table 	type 	possible_keys 	key 	    key_len 	ref 	rows 	Extra 	
1 	SIMPLE 	        movies 	ref 	year_made 	    year_made 	1 	        const 	1408 	Using index */



--Initial SQL Query 2
SELECT movie_id, native_name, english_name, plot
FROM movies INNER JOIN movie_data USING(movie_id)
WHERE plot LIKE "%wayward%";

/* Initial EXPLAIN statement:
id 	select_type 	table 	    type 	possible_keys 	key 	   key_len 	ref 	                   rows 	Extra 	
1 	SIMPLE 	        movie_data 	ALL 	PRIMARY 	    NULL 	   NULL 	NULL 	                   126162 	Using where
1 	SIMPLE 	        movies 	    eq_ref 	PRIMARY 	    PRIMARY    4 	    omdb1.movie_data.movie_id  1                    */

-- I added FULLTEXT capabilities on the plot column and changed the query to use MATCH AGAINST rather than LIKE, the new query is provided below:
SELECT movie_id, native_name, english_name, plot
FROM movies INNER JOIN movie_data USING(movie_id)
WHERE MATCH(plot) AGAINST("wayward");


/* Optimized EXPLAIN statement:
id 	select_type 	table 	    type 	    possible_keys 	key 	 key_len 	ref 	                    rows 	Extra 	
1 	SIMPLE 	        movie_data 	fulltext 	PRIMARY,plot 	plot 	 0 		                                1 	    Using where
1 	SIMPLE 	        movies 	    eq_ref 	    PRIMARY         PRIMARY  4 	        omdb1.movie_data.movie_id 	1 	                */




--Initial SQL Query 3
SELECT song_id, title, lyrics
FROM songs
WHERE lyrics LIKE "%there%";

/* Initial EXPLAIN statement:
id 	select_type 	table 	type 	possible_keys 	key 	key_len 	ref 	rows 	Extra 	
1 	SIMPLE 	        songs 	ALL 	NULL 	        NULL 	NULL 	    NULL 	178730 	Using where */

--I added FULLTEXT on the lyrics column and changed the query to use MATCH AGAINST rather than LIKE, new query is provided below:
SELECT song_id, title, lyrics
FROM songs
WHERE MATCH(lyrics) AGAINST("%there%");

/* Optimized EXPLAIN statement:
id 	select_type 	table 	type 	   possible_keys 	key 	key_len 	ref 	rows 	Extra 	
1 	SIMPLE 	        songs 	fulltext   lyrics 	        lyrics 	0 		            1 	    Using where