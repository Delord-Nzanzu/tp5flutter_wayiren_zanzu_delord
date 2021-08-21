<?php
include('./connexion.php');
?>
<?php 
//SELECT id,nom,postnom,adresse,contact,mail,pass FROM `tetudiant` WHERE 1

			$id=htmlspecialchars($_POST['id']);
			$nom=htmlspecialchars($_POST['nom']);	
			$postnom=htmlspecialchars($_POST['postnom']);
            $prenom=htmlspecialchars($_POST['prenom']);
            $sexe=htmlspecialchars($_POST['sexe']);	
			$adresse=htmlspecialchars($_POST['adresse']);			
			$contact=htmlspecialchars($_POST['contact']);	
			$mail=htmlspecialchars($_POST['mail']);	
            $username=htmlspecialchars($_POST['username']);
			$pass=htmlspecialchars($_POST['pass']);			

			$stmt = $dbConnection->prepare("UPDATE tetudiant set nom=:nom,postnom=:postnom,prenom=:prenom,sexe=:sexe,adresse=:adresse,contact=:contact,mail=:mail,username=:username,pass=:pass where id=:id");
			        $stmt->bindParam("nom", $nom,PDO::PARAM_STR);
			        $stmt->bindParam("postnom", $postnom,PDO::PARAM_STR);
                    $stmt->bindParam("prenom", $prenom,PDO::PARAM_STR);
                    $stmt->bindParam("sexe", $sexe,PDO::PARAM_STR);
					$stmt->bindParam("adresse", $adresse,PDO::PARAM_STR);					
					$stmt->bindParam("contact", $contact,PDO::PARAM_STR);	
					$stmt->bindParam("mail", $mail,PDO::PARAM_STR);
                    $stmt->bindParam("username", $username,PDO::PARAM_STR);	
					$stmt->bindParam("pass", $pass,PDO::PARAM_STR);	
					$stmt->bindParam("id", $id,PDO::PARAM_STR);	
          			$stmt->execute();
          			$status= 'OK';
          			echo json_encode(array("response"=>$status));
   	
 ?>