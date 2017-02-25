<?php
require_once'base/header.php';
require_once'base/menu.php';
require_once'acces/icon.php';
define('ICON_PATH', 'images/icons/');
 ?>
<div class="image_categorie">
  <?php foreach ($myicon as $key => $value) {?>
    <div class="categorie_icon">
      <ul class="icon_wrapper">
        <li><?= $value['name']?></li>
        <li><img class="icon" src="<?= ICON_PATH,$value['image']?>" alt="<?= $value['name']?>"></li>
      </ul>
    </div>
  <?php }  ?>
</div>
