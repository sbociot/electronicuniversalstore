<?php
/**
 * Gestion du panier
 * Chaque item de panier contient :
 *  - une clef qui est l'itd de l'article
 *  - une valeur que est un tableau de
 *  -- un nom
 *  -- une quantité
 * ex:
 * 27 => array(
 *          'qty' => 2,
 *          'desc'=> 'Tee shirt Fruits of the Loom'
 * );
 *
 */

define('PS_PANIER','panier'); // Nom du panier en session
define('PS_PANIER_ITEM_QTY','qty'); // Qté article dans le panier
define('PS_PANIER_ITEM_NAME','desc'); // Nom pour l'utilisateur
define('PS_PANIER_ITEM_IMAGE','img');
define('PS_PANIER_ITEM_PRIX','prix');
define('PS_PANIER_ITEM_DESCRIPTION','DESCRIPTION');
define('PS_PANIER_ITEM_DESCRIPTION_1','description_1');
define('PS_PANIER_ITEM_DESCRIPTION_2','description_1');
define('PS_PANIER_ITEM_DESCRIPTION_3','description_1');

// Création du panier s'il n'existe pas
if ( ! array_key_exists(PS_PANIER, $_SESSION)) {
    $_SESSION[PS_PANIER] = array();
}
// Prendre un référence sur le panier
$panier =& $_SESSION[PS_PANIER];

/**
 * Compte le nombre d'items dans le panier
 */
function panier_get_count() {
    global $panier;
    $resultat = 0;
    foreach ($panier as $item) {
        $resultat+= $item[PS_PANIER_ITEM_QTY];
    }
    return $resultat;
}

//var_dump($_POST);

if (array_key_exists('panier_add', $_POST) && array_key_exists('article_id', $_POST) && array_key_exists('article_name', $_POST)) {
    $article_id = $_POST['article_id'];
    $article_name = $_POST['article_name'];
    $article_image = $_POST['article_image'];
    $article_prix = $_POST['article_prix'];
    if (array_key_exists($article_id, $panier)) {
        $panier[$article_id][PS_PANIER_ITEM_QTY]++;
    } else {
        $panier[$article_id] = array(
            PS_PANIER_ITEM_QTY => 1,
            PS_PANIER_ITEM_NAME => $article_name,
            PS_PANIER_ITEM_IMAGE => $article_image,
            PS_PANIER_ITEM_PRIX => $article_prix,
        );
    }
} else if (array_key_exists('panier_remove', $_POST) && array_key_exists('article_id', $_POST)) {
    // Supression d'un article dans le panier
    $article_id = $_POST['article_id'];
    unset($panier[$article_id]);
} else if (array_key_exists('panier_empty', $_POST)) {
    // Vider le panier
    $panier = array();
}


