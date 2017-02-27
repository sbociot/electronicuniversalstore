<?php
 require_once 'base/header.php';
 require_once 'base/menu.php';
 require_once 'acces/shop_acces_serv.php';
 // var_dump($_GET['aubaine']);
 // var_dump($data);

 ?>

<div class="aubaine_choix_user">
  <?php
    foreach ($data as $key => $value) {
      if (array_key_exists('aubaine', $_GET) && in_array($_GET['aubaine'], $value)) {?>
        <div class="wrapper_query_image">
        <div class="query_image">
          <img src="<?= ARTICLE_IMG_PATH,$value['image']?>" alt="<?=$value['nom']?>"/>
        </div>
        <ul class="your_result">
          <li><?=$value['nom']?></li>
          <li><?=$value['description_1']?></li>
          <li><?=$value['description_2']?></li>
          <li><?=$value['description_3']?></li>
          <li><?=$value['prix']?></li>
        </ul>
        </div>
    <?php }
  } ?>

</div>
