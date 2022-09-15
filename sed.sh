#!/bin/bash
A=`df -h --total | grep "^total" | awk '{print$5}' | cut -d'%' -f1`
if [ $A -gt 95 ]
then
        echo "Attention !! disque plein !!"
       echo "ne vous inquietez pas on va vous aider a trouver les plus lourds fichiers systemes "
       echo "lancement de la recherche"
       df -h | grep "^Filesystem" -v | while read FS
do
        FS_NAME=`echo $FS | awk '{print $1}'`
        FS_SIZE=`echo $FS | awk '{print $5}' | cut -d'%' -f1`
        if [ ${FS_SIZE} -gt 95 ]
        then
                                             echo "le fichier systeme : ${FS_NAME} occupe : ${FS_SIZE}%"
                                     else
                                             echo "le fichier systeme : ${FS_NAME} n'occupe que : ${FS_SIZE}%"
                                     fi
                             done
                     else
			     echo "pas de probleme , les fichiers systemes n'occupent que $A%"            
                     fi

