<?php

  $nav_selected = "MOVIES"; 
  $left_buttons = "YES"; 
  $left_selected = ""; 

  include("./nav.php");
  global $db;

  if (isset($_GET['id'])){

    $id = $_GET['id'];

    $sql = "SELECT * FROM movies
            WHERE movie_id = '$id';";
    
    $sql_metadata = "SELECT * 
                     FROM movies INNER JOIN movie_data 
                     USING(movie_id) 
                     WHERE movie_id = '$id';";

    $sql_movie_photos = "SELECT * 
                         FROM movies INNER JOIN movie_media 
                         USING(movie_id) 
                         WHERE movie_id = '$id' AND m_link_type = \"photo\";";

    $sql_movie_posters = "SELECT * 
                          FROM movies INNER JOIN movie_media 
                          USING(movie_id) 
                          WHERE movie_id = '$id' AND m_link_type = \"poster\";";
    
    $sql_movie_videos = "SELECT * 
                          FROM movies INNER JOIN movie_media 
                          USING(movie_id) 
                          WHERE movie_id = '$id' AND m_link_type = \"video\";";

    $sql_people = "SELECT movie_id, people_id, `role`, first_name, middle_name, last_name 
                   FROM movie_people INNER JOIN people 
                   ON people_id = people.id 
                   WHERE movie_id = '$id'
                   ORDER BY `role` ASC ";
    
    $sql_songs = "SELECT song_id, movie_id, title 
                  FROM movie_song INNER JOIN songs 
                  USING(song_id) 
                  WHERE movie_id = '$id';";

    if (!$result = $db->query($sql)) {
        die ('There was an error running query');
    }

    if ($result->num_rows > 0) {
        $row = $result -> fetch_assoc();

        print ('<div class="right-content">
                <div class="container">  
                <h3 style = "color: #01B0F1;">Movies | '.$row["native_name"].'</h3>');
        print ('<h4 class= "title"> Movie Name: </h4><p class= "words" >'.$row["native_name"]. '</p>
                <h4 class= "title"> Movie Name in English: </h4><p class= "words" >'.$row["english_name"]. '</p>
                <h4 class= "title"> Year Made: </h4><p class= "words" >'.$row["year_made"]. '</p>');
        
        $result->close();

        if (!$metadata = $db->query($sql_metadata)) {
            die ('There was an error running query');
        }
        
        if ($metadata->num_rows>0) {
            $metadata_row = $metadata -> fetch_assoc();
            print ('<h4 class= "title"> Additional data: </h4>
                    <p class= "words" >Language: '.$metadata_row["language"].'</p>
                    <p class= "words" >Country: '.$metadata_row["country"].'</p>
                    <p class= "words" >Genre: '.$metadata_row["genre"].'</p>
                    <p class= "words" >Synopsis: '.$metadata_row["plot"].'</p>');
        }

        $metadata->close();

        if (!$movie_posters = $db->query($sql_movie_posters)) {
            die ('There was an error running query');
        }

        if (!$movie_photos = $db->query($sql_movie_photos)) {
            die ('There was an error running query');
        }

        if (!$movie_videos = $db->query($sql_movie_videos)) {
            die ('There was an error running query');
        }
        
        if ($movie_posters->num_rows>0 || $movie_photos->num_rows>0 || $movie_videos->num_rows>0) {
            print ('<h4 class= "title"> Multimedia: </h4>');
        }

        if ($movie_posters->num_rows>0) {
            print ('<p class= "words" >Posters:</p>');
            while ($movie_posters_row = $movie_posters->fetch_assoc()) {
                echo '<img class="multimedia" src = "'.$movie_posters_row["m_link"].'"/>';
            }
        }
        
        $movie_posters->close();

        if ($movie_photos->num_rows>0) {
            print ('<p class= "words" >Photos:</p>');
            while ($movie_photos_row = $movie_photos->fetch_assoc()) {
                echo '<img class="multimedia" src = "'.$movie_photos_row["m_link"].'"/>';
            }
        }

        $movie_photos->close();

        if ($movie_videos->num_rows>0) {
            print ('<p class= "words" >Videos:</p>');
            while ($movie_videos_row = $movie_videos->fetch_assoc()) {
                $video_link = str_replace('watch?v=', 'embed/', ''.$movie_videos_row["m_link"].'');
                echo '<iframe width="560" height="315" src="'.$video_link.'" frameborder="0" 
                      allow="accelerometer; autoplay; encrypted-media; gyroscope; 
                      picture-in-picture" allowfullscreen></iframe>';
            }
        }

        $movie_videos->close();

        if (!$people = $db->query($sql_people)) {
            die ('There was an error running query');
        }

        //The table is ordered by roles in alphabetical order.
        if ($people->num_rows>0) {
            print ('<h4 class= "title"> People: </h4>');
            $has_directors = false;
            $has_lead_actors = false;
            $has_lead_actresses = false;
            $has_music_directors = false;
            $has_producers = false;
            $has_supporting_actors = false;
            $has_supporting_actresses = false;
            $directors = '';
            $lead_actors = '';
            $lead_actresses = '';
            $music_directors = '';
            $producers = '';
            $supporting_actors = '';
            $supporting_actresses = '';
            while ($people_row = $people->fetch_assoc()) {
                if ($people_row["role"] == "director") {
                    if (!$has_directors) {
                        $has_directors = true;
                        $directors = $directors.'<p class= "words" >Directors:</p>';
                    }
                    $directors = $directors.'<a href="people_info.php?id='.$people_row["people_id"].'">'.
                                             $people_row["first_name"].' '.$people_row["middle_name"].' '.$people_row["last_name"].'</a>, ';
                }
                
                if ($people_row["role"] == "lead actor") {
                    if (!$has_lead_actors) {
                        $has_lead_actors = true;
                        $lead_actors = $lead_actors.'<p class= "words" >Lead Actors:</p>';
                    }
                    $lead_actors = $lead_actors.'<a href="people_info.php?id='.$people_row["people_id"].'">'.
                                             $people_row["first_name"].' '.$people_row["middle_name"].' '.$people_row["last_name"].'</a>, ';
                }

                if ($people_row["role"] == "lead actress") {
                    if (!$has_lead_actresses) {
                        $has_lead_actresses = true;
                        $lead_actresses = $lead_actresses.'<p class= "words" >Lead Actresses:</p>';
                    }
                    $lead_actresses = $lead_actresses.'<a href="people_info.php?id='.$people_row["people_id"].'">'.
                                             $people_row["first_name"].' '.$people_row["middle_name"].' '.$people_row["last_name"].'</a>, ';
                }

                if ($people_row["role"] == "music director") {
                    if (!$has_music_directors) {
                        $has_music_directors = true;
                        $music_directors = $music_directors.'<p class= "words" >Music Directors:</p>';
                    }
                    $music_directors = $music_directors.'<a href="people_info.php?id='.$people_row["people_id"].'">'.
                                             $people_row["first_name"].' '.$people_row["middle_name"].' '.$people_row["last_name"].'</a>, ';
                }

                if ($people_row["role"] == "producer") {
                    if (!$has_producers) {
                        $has_producers = true;
                        $producers = $producers.'<p class= "words" >Producers:</p>';
                    }
                    $producers = $producers.'<a href="people_info.php?id='.$people_row["people_id"].'">'.
                                             $people_row["first_name"].' '.$people_row["middle_name"].' '.$people_row["last_name"].'</a>, ';
                }

                if ($people_row["role"] == "supporting actor") {
                    if (!$has_supporting_actors) {
                        $has_supporting_actors = true;
                        $supporting_actors = $supporting_actors.'<p class= "words" >Supporting Actors:</p>';
                    }
                    $supporting_actors = $supporting_actors.'<a href="people_info.php?id='.$people_row["people_id"].'">'.
                                             $people_row["first_name"].' '.$people_row["middle_name"].' '.$people_row["last_name"].'</a>, ';
                }

                if ($people_row["role"] == "supporting actress") {
                    if (!$has_supporting_actresses) {
                        $has_supporting_actresses = true;
                        $supporting_actresses = $supporting_actresses.'<p class= "words" >Supporting Actresses:</p>';
                    }
                    $supporting_actresses = $supporting_actresses.'<a href="people_info.php?id='.$people_row["people_id"].'">'.
                                             $people_row["first_name"].' '.$people_row["middle_name"].' '.$people_row["last_name"].'</a>, ';
                }
            }
            str_replace('  ', ' ', $directors);
            echo '<p ';
            echo rtrim($directors, ", ");
            echo '</p>';

            str_replace('  ', ' ', $lead_actors);
            echo '<p ';
            echo rtrim($lead_actors, ", ");
            echo '</p>';
            
            str_replace('  ', ' ', $lead_actresses);
            echo '<p ';
            echo rtrim($lead_actresses, ", ");
            echo '</p>';

            str_replace('  ', ' ', $music_directors);
            echo '<p ';
            echo rtrim($music_directors, ", ");
            echo '</p>';

            str_replace('  ', ' ', $producers);
            echo '<p ';
            echo rtrim($producers, ", ");
            echo '</p>';

            str_replace('  ', ' ', $supporting_actors);
            echo '<p ';
            echo rtrim($supporting_actors, ", ");
            echo '</p>';
            
            str_replace('  ', ' ', $supporting_actresses);
            echo '<p ';
            echo rtrim($supporting_actresses, ", ");
            echo '</p>';
        }

        $people->close();

        if (!$songs = $db->query($sql_songs)) {
            die ('There was an error running query');
        }

        if ($songs->num_rows>0) {
            print ('<h4 class= "title"> Songs: </h4>');
            while ($songs_row = $songs->fetch_assoc()) {
                echo '<a href="song_info.php?id='.$songs_row["song_id"].'">'.
                $songs_row["title"].'</a><br/>';
            }
        }
        
        $songs->close();
    } else {
        print ('<div class="right-content">
          <div class="container">
      
            <h3 style = "color: #01B0F1;">Movies | ERROR</h3>
            <h4 class = "title"> MOVIE DOES NOT EXIST </h4>');
    }   
}
include("./footer.php");
?> 