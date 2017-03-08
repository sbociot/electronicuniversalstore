<?php
/**
 * Created by PhpStorm.
 * User: Steve
 * Date: 2017-03-08
 * Time: 7:42 AM
 */
require_once 'base/header.php';
require_once  'base/menu.php';
require_once 'acces/acces_serv.php';
require_once 'panier.php';
?>
<div class="details_product">
    <?php foreach ($aubainesCategorie as $key => $value) {
        if (array_key_exists('details', $_GET) && in_array($_GET['details'], $value)) {
            ?>
            <div class="details">
                <img src="<?= ARTICLE_IMG_PATH, $value['image'] ?>" alt="<?= $value['nom'] ?>"
            </div>
            <div class="details">
                <h2><?= utf8_encode($value['nom']) ?></h2>
                <p>Details</p>
                <ul>
                    <li><?= utf8_encode($value['description']) ?></li>
                    <li><?= utf8_encode($value['description_1']) ?></li>
                    <li><?= utf8_encode($value['description_2']) ?></li>
                    <li><?= utf8_encode($value['description_3']) ?></li>
                </ul>
            </div>
            <form class="panier_action_details" method="post">
                <input type="submit" name="panier_add" value="Ajouter"/>
                <input type="hidden" name="article_id" value="<?=$key?>"/>
                <input type="hidden" name="article_name" value="<?=utf8_encode($value['nom'])?>"/>
                <input type="hidden" name="article_image" value="<?=utf8_encode($value['image'])?>"/>
            </form>
            <a href="contact.php?details=<?= $key?>">Acheter</a>
        <?php }
    }?>

</div>


<?php require_once 'base/footer.php';
