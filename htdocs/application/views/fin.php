<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

	<div id="body">

  <p>Tu es prêt pour ton selfie ! Dirige-toi vers le tableaumaton en galerie "Symbolisme et Peintures de Salon" !<p>
    
  <h2>6. Entre ton pseudo sur l'ordinateur mis à ta disposition... </h2>

  <p>... Saisis-toi de tes accessoires</p> 
  <p>... Et prend la pose devant ton oeuvre préférée!</p> 

  <p>Ton selfie est automatiquement sauvegardé! Découvre-le en sortant du tableaumaton à ta droite - Bravo ! Il a toute sa place parmi les oeuvres du Palais des Beaux-arts de Lille !</p>

  <small>Ton pseudo : <?php echo "$email" ?></small>

  

  
  
	<div id="photo">
	  <img class="img-rounded" src="<?php echo base_url($img); ?>" width="95%" ></img>
	</div>

  <a href="<?php echo base_url("index.php"); ?>">Recommencer</a>
  
  </form>

	</div>


