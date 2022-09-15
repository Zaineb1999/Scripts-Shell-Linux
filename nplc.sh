#!/bin/bash
TOTAL=`top -b n 1 | grep "^Tasks" | awk '{print$2}'`
RUNNING=`top -b n 1 | grep "^Tasks" | awk '{print$4}'`
SLEEPING=`top -b n 1 | grep "^Tasks" | awk '{print$6}'`
STOPPED=`top -b n 1 | grep "^Tasks" | awk '{print$8}'`
ZOMBIE=`top -b n 1 | grep "^Tasks" | awk '{print$10}'`
echo "Lancement de recherche de nombre de processus par catégorie :"
echo "vous avez ${TOTAL} processus"
echo "${RUNNING} en cours d'execution  ${SLEEPING} endormis  ${STOPPED} arretes et ${ZOMBIE} zombies"
