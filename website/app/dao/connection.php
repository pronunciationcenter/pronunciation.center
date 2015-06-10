<?php
class connection{

	function getConnection(){

		$config = new Config();

		// Create connection
		$mysqli = new mysqli($config->dbhost, $config->dbuser, $config->dbpass, $config->dbname);
		
		// Check connection
		if (mysqli_connect_errno()) {
			die("Connection failed: " . mysqli_connect_error());
		}
		//set char_set
		$mysqli->set_charset("utf8");
		return $mysqli;
	}
}
?>