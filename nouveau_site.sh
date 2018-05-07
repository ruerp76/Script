#!/bin/bash


echo "Nom de votre nouveau site "
read nomsite

echo "Dans quel répertoire souhaitez vous créer votre nouveau site"
read rep

#mkdir $rep
cd $rep && mkdir $nomsite && cd $nomsite

echo "Quel nom voulez-vous donner à votre fichier html? (Ne pas indiquer l'extension .html, elle sera créée automatiquement !)"
read nom_html && > $nom_html.html

cat <<EOF >index.html
<!DOCTYPE html>
<html lang="fr">
    <head>
        <meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
        <link rel="stylesheet" href="CSS/style.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css"       integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg"       crossorigin="anonymous">
        <title>$nomsite</title>
    </head>
    <body>
    </body>
</html>   
EOF

mkdir assets && cd assets && mkdir css && mkdir img && mkdir js

echo "Quel nom voulez-vous donner à votre fichier css? (Ne pas indiquer l'extension .css, elle sera créée automatiquement !)"
read nom_css

cd css
> $nom_css.css && echo "Bravo, votre dossier est prêt, vous pouvez commencer à travailler !"


