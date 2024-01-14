<?php
	$email = $_POST['inputEmail'];
	$pswd = $_POST['inputPasswd'];

	$conn = mysqli_connect("localhost:3306", "root", "", "obs_db");
	if(!$conn){
		echo "Cannot connect to database " . mysqli_connect_error($conn);
		exit;
	}

	$query = "SELECT username, password FROM admin";
	$result = mysqli_query($conn, $query);
	if(!$result){
		echo "Empty!";
		exit;
	}

	while ($row = mysqli_fetch_assoc($result)){
		if($email == $row['username'] && $pswd == $row['password']){
			echo "Welcome admin! Long time no see";
			break;
		}
	}
?>