<?php
include('./connexion.php');
?>
<?php 
//SELECT id,nom,postnom,adresse,contact,mail,pass FROM `tetudiant` WHERE 1

			$id=htmlspecialchars($_POST['id']);
				

			$stmt = $dbConnection->prepare("DELETE FROM tetudiant where id=:id");		       
					$stmt->bindParam("id", $id,PDO::PARAM_STR);	
          			$stmt->execute();
          			$status= 'suppression';
          			echo json_encode(array("response"=>$status));
   	
 ?>