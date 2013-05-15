<?php
include_once 'libs/default.php';
include_once 'config.php';
$link = mysqli_connect(Core::$DB_LOCAL,Core::$DB_LOGIN,Core::$DB_PASS,Core::$DB_NAME);
	mysqli_set_charset($link,'utf8');
if($_SERVER['HTTP_X_REQUESTED_WITH'] == 'XMLHttpRequest') {
$town = $_GET['town'];
$res = q("SELECT * 
					FROM `mvideo_shops` 
					WHERE  `town` = '".$town."' 
					ORDER BY `address` ");


	if(mysqli_num_rows($res)){
		while ($row = mysqli_fetch_assoc($res)){
			$addressshop[] = array(
				"id"=>				htmlsc($row['id']),
				"town" => 		htmlsc($row['town']),
				"address" =>  htmlsc($row['address']),
				"lat" => 			htmlsc($row['lat']),
				"lon" => 			htmlsc($row['lon']),
				"rrab" => 		htmlsc($row['grafrab']));
				
		}
		
		$json = json_encode($addressshop);
		echo $json;
	}
}





