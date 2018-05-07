#!/bin/bash


echo "Nom de votre nouveau site "
read nomsite

echo "Dans quel répertoire souhaitez vous créer votre nouveau site"
read rep

#mkdir $rep
cd $rep && mkdir $nomsite && cd $nomsite

echo "Quel nom voulez-vous donner à votre fichier html? (Ne pas indiquer l'extension .html, elle sera créée automatiquement !)"
read nom_html && > $nom_html.html

mkdir assets && cd assets && mkdir css && mkdir img && mkdir js

echo "Quel nom voulez-vous donner à votre fichier css? (Ne pas indiquer l'extension .css, elle sera créée automatiquement !)"
read nom_css

cd css
> $nom_css.css && echo "Bravo, votre dossier est prêt, vous pouvez commencer à travailler !"


