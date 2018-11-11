<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Choisis ton environnement</title>
  <link rel="stylesheet" href="<?php echo base_url("css/styles.css"); ?>">
</head>
<body>

<div id="container">
	<h1>Bravo tu as trouvé ta silhouette !</h1>

  <h1>Maintenant, choisis ton environnement</h1>

	<div id="body">

				
		  
  <?php echo form_open('welcome/valide_fond'); ?>
  
		  <div id=form>
				  <?php echo form_input('fond_id', set_value("fond_id") , 'placeholder="Code" autofocus'); ?>
		  </div>

    <?php echo form_submit('submit', 'Valider !');?>
  
  </form>

	</div>

	<p class="footer">Museoface</p>
</div>

</body>
</html>
