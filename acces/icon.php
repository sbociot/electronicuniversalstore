<?php
/*//*
// *
// */
//define('DB_HOST', 'localhost'); // Host DB
//define('DB_USERNAME', 'root'); // Host DB
//define('DB_PASSWORD', 'root'); // Host DB
//define('DB_NAME', 'shop'); // Host DB
//define('DB_PORT', '8888');
///* Dervys
// * define('DB_HOST', '127.0.0.1'); // Host DB
//define('DB_USERNAME', 'root'); // Host DB
//define('DB_PASSWORD', ''); // Host DB
//define('DB_NAME', 'categorie'); // Host DB
//define('DB_PORT', '8888');
// * */
//$mysqli = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);
//if ($mysqli->connect_errno) {
//    echo "Echec lors de la connexion à MySQL : ", $mysqli->connect_error;É
//}
//// Rédaction de la requete
///*steve database*/
//$query_str = 'SELECT * FROM shop_icon'; // Sélection de tous les articles
///*dervys
//
//$query_str = 'SELECT * FROM gadget'; // Sélection de tous les articles
//*/
//
//$res = $mysqli->query($query_str); // xécution de la requête
//
//// Chargement des données, ligne par ligne (boucle while)
//$data = array();
//if ($res && ($res->num_rows > 0)) {
//    while ($article = $res->fetch_assoc()) {
//        $data[$article['id']] = $article;
//        // $categories[$article_cat['id']] = $article_cat;
//    }
//}
//// Dump de toutes le données
//// var_dump($data);
//
//// Que les article de la catégorie 1
//// $query_str = 'SELECT * FROM article WHERE category_id=1'; // Sélection des articles de categorie 1
//// $res = $mysqli->query($query_str); // xécution de la requête
////
////de // Chargement des données, ligne par ligne (boucle while)
//// $data = array();
//// if ($res && ($res->num_rows > 0)) {
////     while ($article = $res->fetch_assoc()) {
////         $data[$article['id']] = $article;
////     }
//// }
//// // Dump de toutes le données
//// var_dump($data);
////
//$myicon = array();
//$query_str = 'SELECT * FROM icon_shop';
//$result = $mysqli->query($query_str);
//if ($result && ($result ->num_rows > 0)) {
//    while ($fontawsome = $result ->fetch_assoc()) {
//        $myicon[$fontawsome['id']] = $fontawsome;
//        // $categories[$article_cat['id']] = $article_cat;
//    }
//}
//// Dump de toutes le données*/
