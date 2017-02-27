<?php
$menu = array(
  'Acceuil' => 'index.php',
  'Shop' => 'shop.php',
  'Contact' =>'contact.php',
  'Service' => 'service.php',
 );
 define('ARTICLE_IMG_PATH', 'images/');
 ?>
<nav class="herder_menu">
<div class="logo_container">
<img class="logo" src="<?=ARTICLE_IMG_PATH?>electronicuniversalstorelogo.png" alt="Electronic Universal Store">
</div>
<ul class="menu_container">
  <?php foreach ($menu as $key => $value) {?>
    <li><a href="<?= $value ?>"><?= $key?></a></li>
  <?php }  ?>
  <li>
    <form class="searbarengine" action="index.php" method="post">
      <label for="searchcontrol">Rechercher</label>
      <input type="search" name="search">
      <input type="submit">
    </form>
  </li>
</ul>
</nav>
