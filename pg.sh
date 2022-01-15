#!/bin/bash

#
# Verifier nombre de parametres passer au script
#
function verifierParameteres(){
  local nombreParams=$1
  if [[ $nombreParams < 2 ]]; then
    echo "ERREUR : Il faut passer deux parametres."
    return 1;
  else
    return 0;
  fi
}


##############################################
#
## Main
#
##############################################
echo Hello World !!

# Verifier Parameteres
verifierParameteres $#

# Parametres valides
if [[ ${?} == 0 ]]; then

 # Reccuperer les deux nombres
 nombre_1=$1
 nombre_2=$2

 # Il faut verifier qu ils sont numeriques !!
 # TO DO .....

 echo "nombre_1= = ${nombre_1}"
 echo "nombre_2= = ${nombre_2}"
 
 # Retourner le Max
 if [[ ${nombre_1} < ${nombre_1} ]]; then
   max=${nombre_1}
 else
   max=${nombre_2}
 fi

 # Afficher le max
 echo "La plus grande valeur entre ${nombre_1} et ${nombre_2} c'est ${max}."

fi
