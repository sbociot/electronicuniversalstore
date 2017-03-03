<?php
$menu = array(
  'Acceuil' => 'index.php',
  'Shop' => 'shop.php',
  'Contact' =>'contact.php',
  'Service' => 'formulaire.php',
 );
 
 ?>
<nav class="herder_menu">
    <!----menu mobil--->
    <div class="menu-btn" id="menu-btn">
        <span></span>
        <span></span>
        <span></span>
    </div>
        <!----menu normal--->
    <ul class="menu_container">
      <?php foreach ($menu as $key => $value) {?>
        <li><a href="<?= $value ?>"><?= $key?></a></li>
      <?php }  ?>
    </ul>


</nav>
