<?php
require_once'base/header.php';
require_once'base/menu.php';
require_once'acces/icon.php';
define('ICON_PATH', 'images/icons/');
require_once'base/footer.php';
 ?>

<div class="image_categorie">
   <h1>Magasinez les AUBAINES par catégories</h1>
  <?php foreach ($myicon as $key => $value) {?>

      <div class="categorie_icon">
        <ul class="icon_wrapper">
          <a href="aubaine_choix.php?aubaine=<?= $value['name'] ?>">
          <li><img class="icon" src="<?= ICON_PATH,$value['image']?>" alt="<?= $value['name']?>"></li>
          <li><?= $value['name']?></li>
        </ul>
      </div>
    </a>
  <?php }  ?>
</div>
