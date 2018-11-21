<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
	
	<div class="alert alert-success">Bravo tu as trouvé ta silhouette !</div>

  <h2>4. Choisis ton environnement!</h2>

	<div id="body">
	
  <p>Avec ou devant quelle peinture souhaiterais-tu poser? Un paysage, une nature morte ou encore une peinture d'histoire? 
Tu en as 12 au choix dispersées dans les galeries extérieures et elles sont signalées par un cartel vert!</p>

  <p>Tu as trouvé? Entre le code à 4 lettres présent que le cartel vert de ton oeuvre préférée!	</p>

  <?php echo form_open('welcome/valide_fond'); ?>
  
		  <div id=form>
<?php echo form_input('fond_id', set_value("fond_id"),  array("autofocus"=>"","placeholder"=>"Code","class"=>"form-control") ); ?><?php echo form_submit('submit', 'Valider !', array("class"=>"btn btn-primary"));?>
				  
		  </div>

  
  </form>

	</div>

