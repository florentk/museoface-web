<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?><!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="refresh" content="5" />
	<title>Choisi ta quête</title>
	<style>
	body {
		 margin:100px;
		 padding:10px;
 	}
	img {max-width: 90%;height: auto;}
	</style>
</head>
<body>

<div id="container">
	<h1>Museoface</h1>
	
	
<?php 
echo '<div id="photo">';
$n = 0;
foreach ($images as $img) {
  $n=$n+1;
  if ($n > 20) break;
	echo '<img src="'.base_url("uploads/".$img).'"></img>';
}
echo "</div>";
?>
	




	</div>



</body>
</html>s
