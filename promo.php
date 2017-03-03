<?php
require_once'acces/acces_serv.php';
// var_dump($categories);

?>

<div id="slider">

    <?php foreach ($categories as $id => $article) { ?>

        <figure>
            <a href="aubaine_choix.php?promo=<?= $article['nom']?>">
                <img src="<?= ARTICLE_IMG_PATH,$article['image']?>" alt="<?=$article['nom']?>"/>
                <div class="slider_droit">
                    <h3><?= $article['nom']?></h3>
                    <p>Prix:<?= $article['prix']?></p>
                    <h2><?= $article['economiser']?></h2>

        </div>
        </a>
    </figure>
<?php }?>
</div>
