<?php
 require_once 'base/header.php';
 require_once 'base/menu.php';
 require_once 'acces/shop_acces_serv.php';
 // var_dump($_GET['aubaine']);
 // var_dump($data);
 $econmiser = 100;
 ?>
<div class="aubaine_choix_user_wrapper"></div>
<div class="aubaine_choix_user">
  <?php
    foreach ($data as $key => $value) {
      if (array_key_exists('aubaine', $_GET) && in_array($_GET['aubaine'], $value)) {?>
        <h2><?=$value['nom']?></h2>
        <img src="<?= ARTICLE_IMG_PATH,$value['image']?>" alt="<?=$value['nom']?>"/>
        <p><a href="user_choice.php?aubaine=<?=$value['nom']?>"><?= $value['prix'] ?></a> </p>
</div>
    <?php }
  } ?>

</div>
<ul class="your_result">
  <li><?=$value['nom']?></li>
  <li><?=$value['prix']?></li>
</ul>
