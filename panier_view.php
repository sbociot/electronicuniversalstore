<?php
require_once 'check_connect.php';
require_once 'acces/acces_serv.php';
require_once 'panier.php';
require_once 'base/header.php';
require_once 'base/menu.php';

?>
<div class="panier_control"><span class="panier_count"><?= panier_get_count() ?></span></div>
<div class="panier">
    <?php if ( ! empty($panier)) { // Des items sont présents ?>
        <ul class="panier_liste">
            <?php foreach ($panier as $article_id => $article) { ?>
                <li class="panier_article">
                    <span class="panier_article_name"><?= $article[PS_PANIER_ITEM_NAME]?></span>
                    <span class="panier_article_quantite">(<?= $article[PS_PANIER_ITEM_QTY]?>)</span>
                    <form class="panier_action" method="post">
                        <input class="ui-button ui-widget ui-corner-all ui-button-icon-only" type="submit" name="panier_remove" value="X"/>
                        <input type="hidden" name="article_id" value="<?=$article_id?>"/>
                    </form>
                </li>
            <?php } ?>
        </ul>
        <form class="panier_action" method="post">
            <input type="submit" name="panier_empty" value="Vider le panier" />
        </form>
    <?php } else { // panier vide ?>
        <p>Votre panier est vide.</p>
    <?php } ?>
</div>


<?php
require_once 'base/footer.php';
?>