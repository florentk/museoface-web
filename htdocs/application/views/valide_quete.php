<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
	
	<?php 
	if($recommence)
	  echo "<h2>C'est le mauvais portrait, recommence !</h2>"
  ?>

  <h2>3. Commence ta quête !</h2> 

	<div id="body">

  <p>Retrouve l'oeuvre correspondant à ta silhouette parmi les oeuvres signalées par un cartel rouge (il n'y en a que 6!) au sein de la galerie intérieure.</p>

  <div class="well">  
  <h3><?php echo $titre ; ?></h3>
				  

    <?php echo $desc ; ?>
  </div>
	
	<p>Entre le code à 4 chiffres présent sur le cartel rouge pour valider ta réponse! </p>
		  
  <?php echo form_open('welcome/verif_portrait'); ?>
  
		  <div id=form>

				  
				  <?php echo form_input('portrait_id', set_value("portrait_id"),  array("autofocus"=>"","placeholder"=>"Code","class"=>"form-control") ); ?><?php echo form_submit('submit', 'J\'essaye !', array("class"=>"btn btn-primary"));?>
		  </div>
  
  </form>

	</div>
