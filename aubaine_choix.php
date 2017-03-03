<?php
 require_once 'base/header.php';
 require_once 'base/menu.php';
 require_once 'acces/acces_serv.php';


 // var_dump($_GET['aubaine']);
 // var_dump($data);
/*$userSearch = ucfirst($_GET['search']);*/
/*var_dump($_GET['promo']);*/
 ?>

<div class="aubaine_choix_user_wrapper">
    <h1><?php if (array_key_exists('aubaine' , $_GET)){
        echo  $_GET['aubaine'];
        }else {
        echo $_GET['promo'];
        }  ?></h1>
  <?php
    foreach ($aubainesCategorie as $key => $value) {
      if (array_key_exists('aubaine', $_GET) && in_array($_GET['aubaine'], $value)) {?>
          <div class="aubaine_choix_user">
        <h2><?=$value['nom']?></h2>
        <img src="<?= ARTICLE_IMG_PATH,$value['image']?>" alt="<?=$value['nom']?>"/>
        <p><a href="user_choice.php?aubaine=<?=$value['nom']?>"><?= $value['prix'] ?></a> </p>
</div>
      <?php }else foreach ($categories as $key => $value){
            if(array_key_exists('promo' , $_GET) && in_array($_GET['promo'] , $value)){?>
                <div class="aubaine_choix_user">
                    <h2><?= $value['nom']?></h2>
                    <img src="<?= ARTICLE_IMG_PATH,$value['image']?>" alt="<?=$value['nom']?>"/>
                    <p><a href="user_choice.php?aubaine=<?= $value['nom']?>"><?= $value['prix'] ?></a> </p>
                </div>
           <?php }
      }?>
    <?php }?>
</div>
<?php
require_once 'base/footer.php';