<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Choisis ta quête</title>
  <link rel="stylesheet" href="<?php echo base_url("css/styles.css"); ?>">
</head>
<body>

<div id="container">
	<h1>Choisis ta quête</h1>

	<div id="body">

				  
		  <div id = "list">
				<div><a href= <?php echo base_url("index.php/welcome/quete?quete=1"); ?> "  ><img src="<?php echo base_url("img/jesus.png"); ?>">  Vous, ici!?  </img> </a></div>
				<div><a href=" <?php echo base_url("index.php/welcome/quete?quete=2"); ?> "  ><img src="<?php echo base_url("img/femmerouge.png"); ?>"> Parce qu’elle le vaut bien!  </img></a></div>
				<div><a href=" <?php echo base_url("index.php/welcome/quete?quete=3"); ?> "  ><img src="<?php echo base_url("img/femmepied.png"); ?>"> Ciel ! Mon mari !  </img></a></div>
				<div><a href=" <?php echo base_url("index.php/welcome/quete?quete=4"); ?> "  ><img src="<?php echo base_url("img/femmeblanche.png"); ?>"> C’est moi la plus belle! </img></a></div>
				<div><a href=" <?php echo base_url("index.php/welcome/quete?quete=5"); ?> "  ><img src="<?php echo base_url("img/hommechapeau.png"); ?>"> Je pense donc je suis!  </img></a></div>
				<div><a href=" <?php echo base_url("index.php/welcome/quete?quete=6"); ?> "  ><img src="<?php echo base_url("img/jeunehomme.png"); ?>"> La flemme  </img></a></div>
				<div><a href=" <?php echo base_url("index.php/welcome/quete?quete=7"); ?> "  ><img src="<?php echo base_url("img/vieillefemme.png"); ?>"> Il fait froid ici !  </img></a></div>
				<div><a href=" <?php echo base_url("index.php/welcome/quete?quete=8"); ?> "  ><img src="<?php echo base_url("img/hommeregardhaut.png"); ?>"> Aaah, si vous saviez!  </img></a></div>
				<div><a href=" <?php echo base_url("index.php/welcome/quete?quete=9"); ?> "  ><img src="<?php echo base_url("img/hommecanne.png"); ?>"> Quel homme ! </img></a></div>
		  </div>

	</div>

	<p class="footer">Museoface</p>
</div>

</body>
</html>
