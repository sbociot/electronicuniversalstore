<?php
require_once('base/header.php');
require_once'base/menu.php';
?>

<div class="fr_conect">
    <form method="post" action="index.php">
        <h2 class="ecrire">Contactez Nous</h2>
        <label for="saisi_nom">Nom: </label>
        <input type="text" id="nom" name="nom" placeholder="entrez votre nom">
        <label for="saisi_mail">Mail: </label>
        <input type="text" id="eml" name="eml" placeholder="entrez votre mail">
        <label for="saisi_com">Commentaire: </label>
        <textarea  id="saisi_nom" name="saisi_nom" cols="53" rows="5" placeholder="entrez votre commentaire"></textarea>
        <input id="coment" type="submit" value="Envoyer">


    </form>
</div>
    <?php
    require_once'base/footer.php';
    ?>


