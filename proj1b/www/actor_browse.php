<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
	<title>Movie Database Query System - Browse Actor </title>
	<style>	
	.form-horizontal{
	    display:block;
	    width:50%;
	    margin:0 auto;
	}
	</style>
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	  <a class="navbar-brand" href="#">Movie Database Query System</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	  <div class="collapse navbar-collapse" id="navbarNavDropdown">
	    <ul class="navbar-nav">
	      <li class="nav-item active">
	        <a class="nav-link" href="/homepage.php">Home <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="/update.php">Update</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="/browse.php">Browse</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="/search.php">Search</a>
	      </li>
	    </ul>
	  </div>
	</nav>
	
</head>
<body>
	<p></br></p>
	<form>
		<div class="form form-horizontal">
		<h1>Browse Actors</h1>

		<!-- TODO: Options are returned from sql, Lexicographical order??-->
		<div class="form-group d-flex flex-column">
			<label for id = "actor" class="control-label">Select an Actor</label>
			 <select id = "actor" class="custom-select">
			  <option value="1"> Alice(1990-01-01) </option>
			  <option value="2"> Bob(1990-01-01) </option>
			  <option value="3"> ... </option>
			</select>
		</div>

	  	<div class="form-group">
	  		<button type="submit" class="btn btn-primary">Submit</button>
	  	</div>
	 </div>

	</form>

	<?php
			
	?>

	
</body>
</html>