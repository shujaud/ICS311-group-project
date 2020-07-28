<div id="menu-left">

<a href="movies.php">
  	<div <?php if($left_selected == "MOVIES")
  	{ echo 'class="menu-left-current-page"'; } ?>>
  	<img src="./images/movie_list.png" title="Icons made by Freepik from www.flaticon.com">
  	<br/>Movie List<br/></div>
  </a>

  <a href="movie_data.php">
  	<div <?php if($left_selected == "MOVIE_DATA")
  	{ echo 'class="menu-left-current-page"'; } ?>>
  	<img src="./images/movies_data.png" title="Icons made by mynamepong from www.flaticon.com">
  	<br/>Movies Data<br/></div>
  </a>

  <a href="create_movie.php">
  	<div <?php if($left_selected == "CREATE_MOVIE")
  	{ echo 'class="menu-left-current-page"'; } ?>>
  	<img src="./images/add_movie.png" title="Icons made by bqlqn from www.flaticon.com">
  	<br/>New Movie<br/></div>
  </a>

  <a href = "update_movie.php">
  	<div <?php if($left_selected == "UPDATE_MOVIE")
  	{ echo 'class="menu-left-current-page"'; } ?>>
  	<img src="./images/update_movie.png" title="Icons made by Freepik from www.flaticon.com">
  	<br/>Update Movie<br/></div>
  </a>

  <a href = "delete_movie.php">
    <div <?php if($left_selected == "DELETE_MOVIE")
    { echo 'class="menu-left-current-page"'; } ?>>
    <img src="./images/delete_movie.png" title ="Icons made by Darius Dan from www.flaticon.com">
    <br/>Remove Movie<br/></div>
  </a>

  <a href = "movie_report.php">
  	<div <?php if($left_selected == "MOVIE_REPORT")
  	{ echo 'class="menu-left-current-page"'; } ?>>
  	<img src="./images/movie_report.png" title ="Icons made by catkuro from www.flaticon.com">
  	<br/>Movies Report<br/></div>
  </a>


</div>
