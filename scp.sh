#!/bin/bash
echo "la surveillance de consommation des processus est lancée"
top -b n 1 | grep "^top" -v | grep "^Tasks" -v | grep "^%Cpu(s)" -v | grep "^KiB" -v | grep "PID" -v | while read FS
do
        PID_PROCESSUS=`echo $FS | awk '{print$1}'`
        CONSOMMATION_CPU=`echo $FS | awk '{print$9}'`
        COMMANDE=`echo $FS | awk '{print$12}'`
        B=`echo "0.0"`
                if [ ${CONSOMMATION_PROCESSUS} > $B ]
        then
                A=`echo "${CONSOMMATION_CPU}/1" | bc`
                if [ $A -gt 20 ]
		then
                echo "Attention !! processus gourmand de consommation CPU ${CONSOMMATION_CPU}% !! c'est le processus lancé par la commande $COMMANDE et de PID ${PID_PROCESSUS}"
        fi
fi
done
echo "operation terminee"

