<?php
require_once('base/header.php');
require_once'base/menu.php';
?>
<html>
<head>

</head>
<body>
<div>
<meta name="description" content="Services Adaptés Pour Réduire l'Inconfort et la Douleur. Appelez pour en savoir+
Techniques Sans Douleur · Soins de Qualité · Service Hors Pair · + de 20 ans d'expérience
Services: Examen Dentaire, Nettoyage, Réparation de Carie, Blanchiment des Dents, Prothèses," />
</div>
    <div>

    <form id="form" method="post">
        <div class="conatact">
            <h1 class="ecrire">Nous Ecrire</h1>
            <label for="saisi_nom">Nom: </label>
            <input type="text" id="nom" name="nom" placeholder="entrez votre nom">
            <label for="saisi_mail">Mail: </label>
            <input type="text" id="eml" name="eml" placeholder="entrez votre mail">
            <label for="saisi_com">commentaire: </label>
            <textarea  id="saisi_nom" name="saisi_nom" cols="53" rows="5" placeholder="entrez votre commentaire"></textarea>


        </div>

    </form>

</div>
<div class="footer">
    <?php
    require_once'base/footer.php';
    ?>
</div>
</body>
</html>