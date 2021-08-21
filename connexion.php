<?php
$hostname='localhost:3306';
$username="root";
$pwd="root";
$bd='crud_ig';
	try {
	$dbConnection = new PDO("mysql:host=<localhost:3306></localhost:3306>;dbname=".$bd, $username, $pwd);	
	$dbConnection->exec("set names utf8");
	$dbConnection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	return $dbConnection;
    }  catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
	}
?>