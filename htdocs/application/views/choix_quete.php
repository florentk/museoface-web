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
				<div><a href= <?php echo base_url("index.php/welcome/quete?quete=1"); ?> "  ><img src="<?php echo base_url("img/jesus.png"); ?>"></img></a><br/> Vous, ici!?  </div>
				<div><a href=" <?php echo base_url("index.php/welcome/quete?quete=2"); ?> "  ><img src="<?php echo base_url("img/femmerouge.png"); ?>"></img></a><br/>Parce qu’elle le vaut bien!  </div>
				<div><a href=" <?php echo base_url("index.php/welcome/quete?quete=3"); ?> "  ><img src="<?php echo base_url("img/femmepied.png"); ?>"></img></a><br/>Ciel ! Mon mari !  </div>
				<div><a href=" <?php echo base_url("index.php/welcome/quete?quete=4"); ?> "  ><img src="<?php echo base_url("img/femmeblanche.png"); ?>"></img></a><br/>C’est moi la plus belle! </div>
				<div><a href=" <?php echo base_url("index.php/welcome/quete?quete=5"); ?> "  ><img src="<?php echo base_url("img/hommechapeau.png"); ?>"></img></a><br/>Je pense donc je suis!  </div>
				<div><a href=" <?php echo base_url("index.php/welcome/quete?quete=6"); ?> "  ><img src="<?php echo base_url("img/jeunehomme.png"); ?>"></img></a><br/>La flemme  </img></a></div>
				<div><a href=" <?php echo base_url("index.php/welcome/quete?quete=7"); ?> "  ><img src="<?php echo base_url("img/vieillefemme.png"); ?>"></img></a><br/>Il fait froid ici !  </div>
				<div><a href=" <?php echo base_url("index.php/welcome/quete?quete=8"); ?> "  ><img src="<?php echo base_url("img/hommeregardhaut.png"); ?>"></img></a><br/>Aaah, si vous saviez!  </div>
				<div><a href=" <?php echo base_url("index.php/welcome/quete?quete=9"); ?> "  ><img src="<?php echo base_url("img/hommecanne.png"); ?>"></img></a><br/>Quel homme ! </div>
		  </div>

	</div>

	<p class="footer">Museoface</p>
</div>

</body>
</html>
