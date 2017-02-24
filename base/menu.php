<?php
$menu = array(
  'Acceuil' => 'index.php',
  'Shop' => 'shop.php',
  'Contact' =>'contact.php',
  'Service' => 'service.php',
 );
 define('ARTICLE_IMG_PATH', 'images/');
 ?>
<nav class="header_menu">
  <div class="logo_container">
    <a href="index.php"><img class="logo" src="<?=ARTICLE_IMG_PATH?>/electronicuniversalstorelogo.png" alt="Electronic Universal Store"></a>
  </div>
  <div class="wrapper_menu">
<ul class="menu_container">
  <?php foreach ($menu as $key => $value) {?>
    <li><a href="<?= $value ?>"><?= $key?></a></li>
  <?php }  ?>
  <li>
    <form class="searbarengine" action="index.php" method="post">
      <input type="search" name="rechercher">
      <input type="submit" value="Rechercher">
    </form>
  </li>
  <li>
    <div class="user_login">
      <form class="log_in" action="index.php" method="post">
        <label for="user">Utilisateur</label>
        <input type="text" name="user" value="">
        <label for="userkey">Mot de passe</label>
        <input type="password" name="motdepase" value="">
      </form>
    </div>
  </li>
</ul>
</div>
</nav>
