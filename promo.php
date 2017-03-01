<?php
require_once'acces/acces_serv.php';
// var_dump($categories);


?>

    <div id="slider">

<?php foreach ($categories as $id => $article) { ?>
    <a href="aubaine_choix.php?=promo=<?= utf8_encode($article['nom'])?>" >
    <figure>
        <img src="<?= ARTICLE_IMG_PATH,$article['image']?>" alt="" />
        <div id="slider_droit">
        <h3><?= utf8_encode($article['nom'])?></h3>
<!--        <figcaption>--><?//= utf8_encode($article['description'])?><!--</figcaption>-->

        <h4>Prix:</h4>
        <p><?= $article['prix']?></p>
<!--        <h4>Prix avec taxes:</h4>-->
<!--        <p>--><?//= $article['prix avec taxes']?><!--</p>-->
<!--        <h3>Economisez:</h3>-->
        <h2><?= utf8_encode ($article['economiser'])?></h2>
<!--        <h4>Livraison:</h4>-->
<!--        <p>--><?//= utf8_encode ($article['livraison'])?><!--</p>-->
        </div>
    </figure>
    </a>

<?php }?>
    </div>
