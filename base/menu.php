<?php
$menu = array(
  'Acceuil' => 'index.php',
  'Shop' => 'shop.php',
  'Contact' =>'contact.php',
  'Service' => 'formulaire.php',
 );
 
 ?>
<nav class="header_menu">
  <!----menu normal--->
    <ul class="menu_container">
      <?php foreach ($menu as $key => $value) {?>
        <li><a href="<?= $value ?>"><?= $key?></a></li>
      <?php }  ?>
    </ul>
</nav>

