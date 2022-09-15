#!/bin/bash
NOMBRE_COEUR=`cat /proc/cpuinfo | grep "^cpu family" | awk '{print$4}'`
SEUIL=`echo "${NOMBRE_COEUR}*1" | bc`
CHARGE_CPU=`uptime | awk '{print$9}' |  sed 's/.$//'`
CHARGE_CPU2=`echo "${CHARGE_CPU}*100" | bc`
CHARGE_CPU_INT=`echo "${CHARGE_CPU2}/1" | bc`
if [ ${CHARGE_CPU_INT} -gt ${SEUIL} ]
then
       echo "Attention !! La charge CPU actuelle ${CHARGE_CPU} et puisque votre machine contient ${NOMBRE_COEUR} coeur, cette charge depasse le seuil 75% , vous risquez de bloquer votre machine"
else 
	echo "la charge CPU actuelle=${CHARGE_CPU} et votre machine contient ${NOMBRE_COEUR} coeur et donc pas de surcharge CPU" 
fi 




