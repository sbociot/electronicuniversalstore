<?php
require_once'base/header.php';
require_once'base/menu.php';
require_once'acces/icon.php';
require_once 'acces/acces_serv.php';
define('ICON_PATH', 'images/icons/');
 ?>

<div class="promo_carrusel">
    <?php
 require_once'promo.php';
    ?>
</div>

<div class="image_categorie">
   <h1>Magasinez les AUBAINES par catégories</h1>
  <?php foreach ($myicon as $key => $value) {?>
    <a href="aubaine_choix.php?aubaine=<?= $value['name'] ?>" >
      <div class="categorie_icon">
        <ul class="icon_wrapper">
          <li><img class="icon" src="<?= ICON_PATH,$value['image']?>" alt="<?= $value['name']?>"></li>
          <li><?= $value['name']?></li>
        </ul>
    </a>
      </div>
  <?php }  ?>
</div>

<?php require_once'base/footer.php';?>

