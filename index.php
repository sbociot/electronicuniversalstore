<?php
require_once'base/header.php';
require_once'base/menu.php';
require_once'acces/icon.php';
define('ICON_PATH', 'images/icons/');


 ?>

<div class="image_categorie">
   <h1>Magasinez les AUBAINES par catégories</h1>
  <?php foreach ($myicon as $key => $value) {?>
      <div class="categorie_icon">
        <ul class="icon_wrapper">
          <li><img class="icon" src="<?= ICON_PATH,$value['image']?>" alt="<?= $value['name']?>"></li>
          <li><a href="aubaine_choix.php?aubaine=<?= $value['name'] ?>"><?= $value['name']?></a></li>
        </ul>
      </div>
  <?php }  ?>
</div>
<div class="">
  <?php
  //  require_once'promo.php'; 
   ?>

</div>
<?php require_once'base/footer.php';?>
