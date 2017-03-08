<?php
require_once 'check_connect.php';
require_once 'acces/acces_serv.php';
require_once 'panier.php';
require_once 'base/header.php';
require_once 'base/menu.php';

?>
<!--<div class="panier_control"><span class="panier_count"><?/*= panier_get_count() */?></span></div>-->
<div class="panier">
    <?php if ( ! empty($panier)) { // Des items sont présents ?>
        <form class="panier_action" method="post">
            <table class="panier_table">
                <tr>
                    <th>Produit</th>
                    <th>Nom</th>
                    <th>Quantité</th>
                    <th>Supprimé</th>
                </tr>
            <?php foreach ($panier as $article_id => $article) { ?>
                    <tr>
                        <td><img class="panier_image" src="<?= ARTICLE_IMG_PATH,$article[PS_PANIER_ITEM_IMAGE]?>" alt="<?= $article[PS_PANIER_ITEM_IMAGE]?>"></td>
                        <td><span class="panier_article_name"><?= $article[PS_PANIER_ITEM_NAME]?></span></td>
                        <td><span class="panier_article_quantite"><?= $article[PS_PANIER_ITEM_QTY]?></span></td>
                        <td><input class="ui-button ui-widget ui-corner-all ui-button-icon-only" type="submit" name="panier_remove" value="X"/></td>
                    </tr>
            <?php }?>
                </table>
                        <input type="hidden" name="article_id" value="<?=$article_id?>"/>
                    </form>

        <form class="panier_action" method="post">
            <input type="submit" name="panier_empty" value="Vider le panier" />
        </form>
        <a href="contact.php?=choix<?= $article_id?>">Acheter</a>
    <?php } else {  ?>
        <p class="empty_cart">!Votre panier est vide.</p>
        <p class="empty_cart"><a href="shop.php">Notre Catalogue</a></p>
    <?php } ?>
</div>


<?php
require_once 'base/footer.php';
?>