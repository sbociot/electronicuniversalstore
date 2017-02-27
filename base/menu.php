<?php
$menu = array(
  'Acceuil' => 'index.php',
  'Shop' => 'shop.php',
  'Contact' =>'contact.php',
  'Service' => 'service.php',
 );
 
 ?>
<nav class="herder_menu">
<ul class="menu_container">
  <?php foreach ($menu as $key => $value) {?>
    <li><a href="<?= $value ?>"><?= $key?></a></li>
  <?php }  ?>
</ul>
</nav>
