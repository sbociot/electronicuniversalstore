<?php
$menu = array(
  'Acceuil' => 'index.php',
  'Shop' => 'shop.php',
  'Contact' =>'contact.php',
  'Service' => 'formulaire.php',
 );
 
 ?>
<nav class="herder_menu">
    <div class="responsive_menu">
        <div id="one"></div>
        <div id="two"></div>
        <div id="three"></div>
    </div>
        <!----menu normal--->
    <ul class="menu_container">
      <?php foreach ($menu as $key => $value) {?>
        <li><a href="<?= $value ?>"><?= $key?></a></li>
      <?php }  ?>
    </ul>


</nav>
