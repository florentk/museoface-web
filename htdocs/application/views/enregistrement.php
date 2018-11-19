<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

	<div id="body">
	
	<p>Bienvenue sur Muséoface !</p>
	
	<p>Réalise ton selfie à partir des oeuvres du Palais des Beaux-arts de Lille !</p>
	
	<p>A chaque étape, tu vas construire ton autoportrait - tu peux revenir en arrière au besoin. A la fin retrouve notre tableaumaton et entre dans les collections du musée </p>
	
	<h2>1. Entre ton pseudo</h2>
	
	<p>il te permettra de retrouver les oeuvres choisies au fil de ta visite ! 	</p>
	
  <?php echo form_open('welcome/ajout_visiteur'); ?>
      <?php 
			  echo form_hidden('pseudo', 'pseudo');
			?>
				  

		  <div><?php echo form_input('email', set_value("email"),  array("placeholder"=>"Pseudo","class"=>"form-control") ); ?><?php echo form_submit('submit', 'C\'est parti !', array("class"=>"btn btn-primary"));?></div>



    
		  
		</form>
		


	</div>


