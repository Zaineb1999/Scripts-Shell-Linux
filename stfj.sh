#!/bin/bash
echo "surveillance de la taille des fichiers journaux"
ls /var/log/
read -p 'choisissez de la liste le nom du fichier log que vous voulez savoir sa taille : ' nom
A=`du -h /var/log/$nom | awk '{print$1}'`
echo "la taille de fichier log $nom est : $A"


