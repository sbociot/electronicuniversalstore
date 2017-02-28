<?php
require_once'acces/acces_serv.php';
 var_dump($categories);
define('ARTICLE_IMG_PATH', 'images/');

?>

    <div id="promotion">
<?php foreach ($categorieS as $id => $article) { ?>
    <figure>
        <h2><?= $article['nom']?></h2>
        <img src="<?= ARTICLE_IMG_PATH,$article['image']?>" alt="" />
        <figcaption><?= utf8_encode($article['description'])?></figcaption>
        <h4>Prix:</h4>
        <p></p>
        <h4>Prix avec taxes:</h4>
        <p></p>
        <h3>Economisez:</h3>
        <p><?= $article['economiser']?></p>
        <h4>Livraison:</h4>
        <p><?= $article['livraison']?></p>

    </figure>
    </div>
<?php }?>
