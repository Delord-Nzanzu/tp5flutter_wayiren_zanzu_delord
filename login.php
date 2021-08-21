<?php
	include('conn.php');

		$mail=$_POST['mail'];
		$pass = $_POST['pass'];
		// $passwordhash =md5($password);
		
		$rqt='SELECT * FROM tetudiant WHERE mail = "'.$mail.'" AND pass = "'.$pass.'"';
		$rqt2=mysqli_query($connect,$rqt) OR die(mysql_error());

		$result=array();
		while($fetchData=$rqt2->fetch_assoc()){
			$result[]=$fetchData;
		}
		echo json_encode($result);

?>