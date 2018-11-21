<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>

  <h2>2. Choisis ta silhouette !</h2>  

  <p>Chaque silhouette est celle d'un personnage du musée! Il y en a neuf au choix et elles sont signalées par un cartel rouge! Et inutile de courrir dans tout le musée, tu les trouveras uniquement en galerie intérieure !</p>

	<div id="body">

				  
		  <div id = "list">
		  
		    <?php foreach ($quetes as $q):?>
				<div class="thumbnail">
				  <a href= <?php echo base_url("index.php/welcome/quete?quete=".$q->quete_id); ?> "  >
				    <img src="<?php echo base_url("img/".$q->quete_img); ?>"></img> 
			      <div class="caption"><p><?php echo $q->quete_titre; ?></p></div>
			    </a>
			 </div>

				<?php endforeach; ?>
	  </div>

	</div>
