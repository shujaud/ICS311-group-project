<div id="menu-left">

<a href="songs.php">
  	<div <?php if($left_selected == "SONGS")
  	{ echo 'class="menu-left-current-page"'; } ?>>
  	<img src="./images/movie_list.png" title="Icons made by Freepik from www.flaticon.com">
  	<br/>Song List<br/></div>
  </a>

  <a href="song_data.php">
  	<div <?php if($left_selected == "SONG_DATA")
  	{ echo 'class="menu-left-current-page"'; } ?>>
  	<img src="./images/movies_data.png" title="Icons made by mynamepong from www.flaticon.com">
  	<br/>Songs Data<br/></div>
  </a>

  <a href="create_song.php">
  	<div <?php if($left_selected == "CREATE_SONG")
  	{ echo 'class="menu-left-current-page"'; } ?>>
  	<img src="./images/add_movie.png" title="Icons made by bqlqn from www.flaticon.com">
  	<br/>New Song<br/></div>
  </a>

  <a href = "update_song.php">
  	<div <?php if($left_selected == "UPDATE_SONG")
  	{ echo 'class="menu-left-current-page"'; } ?>>
  	<img src="./images/update_movie.png" title="Icons made by Freepik from www.flaticon.com">
  	<br/>Update Song<br/></div>
  </a>

  <a href = "delete_song.php">
    <div <?php if($left_selected == "DELETE_SONG")
    { echo 'class="menu-left-current-page"'; } ?>>
    <img src="./images/delete_movie.png" title ="Icons made by Darius Dan from www.flaticon.com">
    <br/>Remove Song<br/></div>
  </a>

  <a href = "song_report.php">
  	<div <?php if($left_selected == "SONG_REPORT")
  	{ echo 'class="menu-left-current-page"'; } ?>>
  	<img src="./images/movie_report.png" title ="Icons made by catkuro from www.flaticon.com">
  	<br/>Songs Report<br/></div>
  </a>


</div>
