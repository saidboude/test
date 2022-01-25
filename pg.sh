#!/bin/bash

#######################################################
#
## Main :
#  Le script recoit deux  nombres en parametres et il
#  affiche le plus grand de ces deux nombres.
#
#######################################################

# Deux nombres en parametres
if [[ ${#} == 2 ]]; then

   # Reccuperer les deux nombres
   nombre_1=$1
   nombre_2=$2

   # Retourner le Max
   if [[ ${nombre_1} > ${nombre_2} ]]; then
     max=${nombre_1}
   else
     max=${nombre_2}
   fi

   # Afficher le max
   echo "La plus grande valeur entre ${nombre_1} et ${nombre_2} c'est ${max}."
   exit 0;

else
   echo "ERREUR : Il faut passer deux parametres."
   exit 1;
fi
