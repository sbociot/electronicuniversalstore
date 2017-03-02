<?php
define('DB_HOST', 'localhost'); // Host DB
define('DB_USERNAME', 'root'); // Host DB
define('DB_PASSWORD', 'root'); // Host DB
define('DB_NAME', 'shop'); // Host DB

$mysqli = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
if ($mysqli->connect_errno) {
    echo "Echec lors de la connexion à MySQL : ", $mysqli->connect_error;
}

// Rédaction de la requete sur les catégories articles
$query_str = 'SELECT * FROM `shop`'; // Sélection de toutes les catégories articles

$res = $mysqli->query($query_str); // Exécution de la requête

// Chargement des données, ligne par ligne (boucle while)
$categories = array();
if ($res && ($res->num_rows > 0)) {
    while ($article_cat = $res->fetch_assoc()) {
        $categories[$article_cat['id']] = $article_cat;
    }
}
//var_dump($categories);

/**
 * Fournit un tableu d'article
 * @return array
 */
function get_articles($where = '') {
    global $mysqli;
    // Rédaction de la requete sur les articles
    $query_str = 'SELECT * FROM `article` ' . $where; // Sélection de tous les articles

    $res = $mysqli->query($query_str); // xécution de la requête

    // Chargement des données, ligne par ligne (boucle while)
    $data = array();
    if ($res && ($res->num_rows > 0)) {
        while ($article = $res->fetch_assoc()) {
            $data[$article['id']] = $article;
        }
    }
    return $data;
}
//Coonexion a la base de donnée shop pour les icones
$mysqli = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
if ($mysqli->connect_errno) {
    echo "Echec lors de la connexion à MySQL : ", $mysqli->connect_error;
}
// Rédaction de la requete
/*steve database*/
$query_str = 'SELECT * FROM shop_icon'; // Sélection de tous les articles
/*dervys

$query_str = 'SELECT * FROM gadget'; // Sélection de tous les articles
*/

$res = $mysqli->query($query_str); // xécution de la requête

// Chargement des données, ligne par ligne (boucle while)
$data = array();
if ($res && ($res->num_rows > 0)) {
    while ($article = $res->fetch_assoc()) {
        $data[$article['id']] = $article;
        // $categories[$article_cat['id']] = $article_cat;
    }
}

$myicon = array();
$query_str = 'SELECT * FROM icon_shop';
$result = $mysqli->query($query_str);
if ($result && ($result ->num_rows > 0)) {
    while ($fontawsome = $result ->fetch_assoc()) {
        $myicon[$fontawsome['id']] = $fontawsome;
        // $categories[$article_cat['id']] = $article_cat;
    }
}
// Dump de toutes le données
$mysqli = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
if ($mysqli->connect_errno) {
    echo "Echec lors de la connexion à MySQL : ", $mysqli->connect_error;
}
// Rédaction de la requete
$query_str = 'SELECT * FROM shop_categorie'; // Sélection de tous les articles

$res = $mysqli->query($query_str); // xécution de la requête

// Chargement des données, ligne par ligne (boucle while)
$data = array();
if ($res && ($res->num_rows > 0)) {
    while ($article = $res->fetch_assoc()) {
        $data[$article['id']] = $article;
        // $categories[$article_cat['id']] = $article_cat;
    }
}

$aubainesCategorie = array();
$query_str = 'SELECT * FROM shop_categorie';
$result = $mysqli->query($query_str);
if ($result && ($result ->num_rows > 0)) {
    while ($fontawsome = $result ->fetch_assoc()) {
        $aubainesCategorie [$fontawsome['id']] = $fontawsome;
        // $categories[$article_cat['id']] = $article_cat;
    }
}
// Dump de toutes le données

$mysqli = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
if ($mysqli->connect_errno) {
    echo "Echec lors de la connexion à MySQL : ", $mysqli->connect_error;
}

// Rédaction de la requete sur les promo
$query_str = 'SELECT * FROM `promo`'; // Sélection de toutes les catégories articles

$res = $mysqli->query($query_str); // Exécution de la requête

// Chargement des données, ligne par ligne (boucle while)
$categories = array();
if ($res && ($res->num_rows > 0)) {
    while ($article_cat = $res->fetch_assoc()) {
        $categories[$article_cat['id']] = $article_cat;
    }
}
