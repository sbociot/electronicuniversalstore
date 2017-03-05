<?php
define('ARTICLE_IMG_PATH', 'images/');
require_once 'check_connect.php';
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
    <!--
      <link rel="stylesheet" href="style/master-form.css">
    -->
    <link  rel = "icon"  href = "images/favico/favicon-32x32.png" >
  </head>
  <body>
  <header>
      <div class="barner_header_wrapper">
          <div class="barner">
              <a href="index.php"><img class="logo" src="<?=ARTICLE_IMG_PATH?>electronicstoreu.png" alt="Electronic Universal Store"></a>
          </div>
          <div class="barner">
              <img class="user_login_container" src="<?= ARTICLE_IMG_PATH ?>user.png" alt="Utilisateur">
              <?php if (is_logged_in()) { ?>
                  <span>Salut <?= $_SESSION[PS_USERNAME] ?> !</span>
                  <form class="logout_user" name="logout" method="post">
                      <input type="submit" name="logout_btn" value="Déconnecter"/>
                  </form>
              <?php } else { ?>
                  <form class="login_user" name="login" method="post">
                      <input type="text" name="username" id="username"
                             value="<?= array_key_exists('username', $_POST) ? $_POST['username'] : '' ?>"
                      />
                      <input type="password" name="password" id="password" value=""/>
                      <?php
                      if (array_key_exists('login_btn', $_POST)) { ?>
                          <p>Le pseudo et le mot de passe fournis ne concordent pas.</p>
                      <?php } ?>
                      <input type="submit" name="login_btn" value="Connecter"/>
                  </form>
              <?php } ?>
          </div>
          <div class="barner">
              <img class="logo" src="<?=ARTICLE_IMG_PATH?>online-store.png" alt="Electronic Universal Store">
          </div>
      </div>
  </header>
      <?php require_once 'base/menu.php'; ?>
