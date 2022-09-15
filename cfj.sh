#!/bin/bash
echo "recherche du contenu d'un fihier journal"
ls /var/log/
read -p 'choisissez de la liste le nom du fichier log que vous voulez consulter : ' nom
echo "le fichier $nom va s'ouvrir ,cliquez sur espace pour passer a la page suivante et q pour quitter"
echo "ouverture du fichier ${nom}"
sleep 3
less /var/log/$nom

