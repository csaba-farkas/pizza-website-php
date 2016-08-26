<?php

// connect and select MYySQL pizza database
	 $server = 'localhost';
	 $username = 'cl60-pizzadb';
	 $password = 'YWczk34f^';

	 $conn = mysqli_connect($server, $username, $password);

	 if(!$conn) {
		 echo "<h1>Connection with database cannot be established. Please check your connection.</h1>";
		 die();
	 }

	 $schema = "cl60-pizzadb";
	 $table = "orders";

	 if(!mysqli_select_db($conn, $schema)) {
		 echo '<h2>Unable to connect to database '.$schema.'</h2>';
	 }

?>
