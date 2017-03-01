<?php
define('ARTICLE_IMG_PATH', 'images/');
 ?>
<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <title>Electronic Universal Store | Acceuil</title>
    <meta name="viewport" content="width=device-width, intial-scale=1">
    <meta name="robots" content="index,follow" >
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans" rel="stylesheet">

      <link rel="stylesheet" href="style/master.css">
    <!--
      <link rel="stylesheet" href="style/master-form.css">
    -->
    <link  rel = "icon"  href = "images/favico/favicon-32x32.png" >
  </head>
  <body>
    <div class="logo_container">
      <ul class="header_wrapper">
        <li><img class="logo" src="<?=ARTICLE_IMG_PATH?>electronicstoreu.png" alt="Electronic Universal Store"></li>
        <!--<li>
          <form class="searbarengine" action="aubaine_choix.php" method="get">
            <input type="search" name="search">
            <input type="submit">
          </form>
        </li>-->
        <li><img src="<?=ARTICLE_IMG_PATH?>online-store.png" alt="Panier"></li>
      </ul>
    </div>
      <?php require_once 'base/menu.php'; ?>
